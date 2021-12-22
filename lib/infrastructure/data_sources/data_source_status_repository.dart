import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:ddd/domain/core/value_objects.dart';
import 'package:ddd/domain/data_sources/data_source_failure.dart';
import 'package:ddd/domain/data_sources/data_source_status.dart';
import 'package:ddd/domain/data_sources/i_data_source_status_repository.dart';
import 'package:ddd/infrastructure/core/firestore_helpers.dart';
import 'package:ddd/infrastructure/data_sources/data_source_dtos.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

import '../../injection.dart';

@LazySingleton(as: IDataSourceStatusRepository)
class DataSourceStatusRepository implements IDataSourceStatusRepository {
  // Using Firstore directly instead of creating something like DataSourceStatusRemoteService because Firestore SDK is mature, complete and stable enough to not need another abstraction layer
  final FirebaseFirestore _firestore;

  DataSourceStatusRepository(this._firestore);

  // get data source statuses for given user
  @override
  Future<Either<DataSourceFailure, KtList<DataSourceStatus>>>
      getForCurrentUser() async {
    try {
      final userDocRef = await getIt<FirestoreHelper>().userDocument();

      final userDataSourceStatuses = await _firestore
          .collection('user_data_source_statuses')
          .where('user_id', isEqualTo: userDocRef.id)
          .get();
      return _parseJunctionsAndHandleMissing(
        snapshot: userDataSourceStatuses,
        dataSourceIds: dataSourceIds,
        userId: userDocRef.id,
      );
    } on PlatformException catch (exception, stacktrace) {
      if (exception.message!.contains('permission')) {
        return left(const DataSourceFailure.insufficientPermissions());
      } else {
        print(exception.toString());
        print(stacktrace.toString());
        return left(const DataSourceFailure.unexpected());
      }
    }
  }

  Future<Either<DataSourceFailure, KtList<DataSourceStatus>>>
      _parseJunctionsAndHandleMissing({
    required QuerySnapshot<Map<String, dynamic>> snapshot,
    required List<String> dataSourceIds,
    required String userId,
  }) async {
    List<DataSourceStatus> dataSourceStatuses = snapshot.docs
        .where(
          (doc) => doc.exists,
        )
        .map(
          (doc) => DataSourceStatusDto.fromFirestore(doc).toDomain(),
        )
        .toList();

    // get loaded dataSources that do not have a junction with current user
    final newDataSourceStatuses = _createMissingJunctionEntities(
      dataSourceIds: dataSourceIds,
      userId: userId,
      dataSourceIdsWithExistingJunctions: dataSourceStatuses
          .map(
            (status) => status.dataSourceId.getOrCrash(),
          )
          .toList(),
    );

    // create missing dataSources
    final failuresOrSuccesses = await Future.wait(
      newDataSourceStatuses.map(
        (e) => create(e),
      ),
    );

    // check if all creates successful
    final someFailureOrUnit = failuresOrSuccesses.firstWhere(
      (element) => element.isLeft(),
      orElse: () => right<DataSourceFailure, Unit>(unit),
    );

    // if any create unsuccessful, pass the creation failure as stream output
    return someFailureOrUnit.fold(
      (failure) => left<DataSourceFailure, KtList<DataSourceStatus>>(failure),
      (_) => _addEntitiesToResultAndReturnSuccessCase(
        newDataSourceStatuses: newDataSourceStatuses,
        existingDataSourceStatuses: dataSourceStatuses,
      ),
    );
  }

  Either<DataSourceFailure, KtList<DataSourceStatus>>
      _addEntitiesToResultAndReturnSuccessCase({
    required List<DataSourceStatus> newDataSourceStatuses,
    required List<DataSourceStatus> existingDataSourceStatuses,
  }) {
    existingDataSourceStatuses.addAll(newDataSourceStatuses);
    return right<DataSourceFailure, KtList<DataSourceStatus>>(
      existingDataSourceStatuses.toImmutableList(),
    );
  }

  List<DataSourceStatus> _createMissingJunctionEntities({
    required List<String> dataSourceIds,
    required String userId,
    required List<String> dataSourceIdsWithExistingJunctions,
  }) {
    return dataSourceIds
        .where(
          (dataSourceId) =>
              !dataSourceIdsWithExistingJunctions.contains(dataSourceId),
        )
        .map(
          (dataSourceId) => DataSourceStatus.empty().copyWith(
            dataSourceId: UniqueId.fromUniqueString(
              dataSourceId,
            ),
            userId: UniqueId.fromUniqueString(
              userId,
            ),
            id: JunctionUniqueId(
              [
                dataSourceId,
                userId,
              ],
            ),
          ),
        )
        .toList();
  }

  Either<DataSourceFailure, T> _handleException<T>(
    Object exception,
    StackTrace stackTrace,
  ) {
    if (exception is FirebaseException &&
        exception.message!.contains('permission')) {
      return left(const DataSourceFailure.insufficientPermissions());
    } else if (exception is FirebaseException &&
        exception.message!.contains('found')) {
      return left(const DataSourceFailure.documentNotFound());
    } else {
      print(exception.toString());
      print(stackTrace.toString());
      return left(const DataSourceFailure.unexpected());
    }
  }

  @override
  Future<Either<DataSourceFailure, Unit>> create(
      DataSourceStatus dataSourceStatus) async {
    try {
      final dataSourceStatusDto = DataSourceStatusDto.fromDomain(
        dataSourceStatus,
      );

      final dataSourceStatusDtoJson = dataSourceStatusDto.toJson();
      await _firestore
          .collection('user_data_source_statuses')
          .doc(dataSourceStatusDto.id)
          .set(
            dataSourceStatusDtoJson,
          );
      return right(unit);
    } on PlatformException catch (e, stacktrace) {
      return _handleException<Unit>(e, stacktrace);
    }
  }

  @override
  Future<Either<DataSourceFailure, Unit>> update(
      DataSourceStatus dataSourceStatus) async {
    try {
      final dataSourceStatusDto = DataSourceStatusDto.fromDomain(
        dataSourceStatus,
      );

      final dataSourceStatusDtoJson = dataSourceStatusDto.toJson();
      await _firestore
          .collection('user_data_source_statuses')
          .doc(dataSourceStatusDto.id)
          .update(
            dataSourceStatusDtoJson,
          );
      return right(unit);
    } on Exception catch (e, stacktrace) {
      return _handleException<Unit>(e, stacktrace);
    }
  }
}
