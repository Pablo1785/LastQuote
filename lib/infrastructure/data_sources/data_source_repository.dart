import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:ddd/domain/data_sources/data_source.dart';
import 'package:ddd/domain/data_sources/data_source_failure.dart';
import 'package:ddd/domain/data_sources/i_data_source_repository.dart';
import 'package:ddd/domain/data_sources/i_data_source_status_repository.dart';
import 'package:ddd/infrastructure/data_sources/data_source_dtos.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

@LazySingleton(as: IDataSourceRepository)
class DataSourceRepository implements IDataSourceRepository {
  final FirebaseFirestore _firestore;
  final IDataSourceStatusRepository _dataSourceStatusRepository;

  DataSourceRepository(this._firestore, this._dataSourceStatusRepository);

  @override
  Future<Either<DataSourceFailure, KtList<DataSource>>> getAll() async {
    try {
      final dataSourceQuery = await _firestore.collection('data_sources').get();
      return right(
        dataSourceQuery.docs
            .where(
              (doc) => doc.exists,
            )
            .map(
              (doc) => DataSourceDto.fromFirestore(doc).toDomain(),
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
  Future<Either<DataSourceFailure, KtList<DataSource>>>
      getEnabledByUser() async {
    try {
      final failureOrDataSourceStatuses =
          await _dataSourceStatusRepository.getForCurrentUser();

      return failureOrDataSourceStatuses.fold(
        (failure) {
          return left(failure);
        },
        (dataSourceStatuses) async {
          // convert dataSourceStatus list to list of ids to use list.contains() on DataSources' ids
          final enabledIds = dataSourceStatuses
              .asList()
              .where(
                (dataSourceStatus) => dataSourceStatus.isEnabled,
              )
              .map(
                (dataSourceStatus) =>
                    dataSourceStatus.dataSourceId.getOrCrash(),
              )
              .toList();
          final dataSourceQuery =
              await _firestore.collection('data_sources').get();
          return right(
            dataSourceQuery.docs
                .where(
                  (doc) => doc.exists,
                )
                .map(
                  (doc) => DataSourceDto.fromFirestore(doc).toDomain(),
                )
                .where(
                  (dataSource) => enabledIds.contains(
                    dataSource.id.getOrCrash(),
                  ),
                )
                .toImmutableList(),
          );
        },
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
}
