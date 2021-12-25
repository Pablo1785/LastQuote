import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:ddd/domain/core/value_objects.dart';
import 'package:ddd/domain/data_sources/data_source.dart';
import 'package:ddd/domain/data_sources/data_source_failure.dart';
import 'package:ddd/domain/data_sources/data_source_status.dart';
import 'package:ddd/domain/data_sources/i_data_source_repository.dart';
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

      final userDataSourceStatusesSnapshot = await _firestore
          .collection('user_data_source_statuses')
          .where('user_id', isEqualTo: userDocRef.id)
          .get();
      return right<DataSourceFailure, KtList<DataSourceStatus>>(
        userDataSourceStatusesSnapshot.docs
            .where(
              (doc) => doc.exists,
            )
            .map(
              (doc) => DataSourceStatusDto.fromFirestore(doc).toDomain(),
            )
            .toImmutableList(),
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

  @override
  KtList<DataSourceStatus> createMissingJunctionEntities({
    required KtList<DataSource> dataSources,
    required String userId,
    required KtList<DataSourceStatus> dataSourceStatuses,
  }) {
    final dataSourceIds = dataSources.map(
      (ds) => ds.id.getOrCrash(),
    );
    final dataSourceIdsWithExistingJunctions = dataSourceStatuses.map(
      (dss) => dss.dataSourceId.getOrCrash(),
    );

    return dataSourceIds
        .asList()
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
        .toImmutableList();
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
    DataSourceStatus dataSourceStatus,
  ) async {
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

  @override
  Future<Either<DataSourceFailure, Unit>> batchCreate(
    KtList<DataSourceStatus> dataSourceStatuses,
  ) async {
    try {
      await _firestore.runTransaction(
        (transaction) async {
          for (var i = 0; i < dataSourceStatuses.size; i++) {
            // Parse junction entity to json
            final dataSourceStatusDto = DataSourceStatusDto.fromDomain(
              dataSourceStatuses[i],
            );
            final dataSourceStatusDtoJson = dataSourceStatusDto.toJson();

            // Add creation action to transaction
            final userDataSourceStatusDocRef = _firestore
                .collection('user_data_source_statuses')
                .doc(dataSourceStatusDto.id);
            transaction.set(
              userDataSourceStatusDocRef,
              dataSourceStatusDtoJson,
            );
          }
        },
      );
      return right(unit);
    } on Exception catch (_, __) {
      return left(
        const DataSourceFailure.unexpected(),
      );
    }
  }
}
