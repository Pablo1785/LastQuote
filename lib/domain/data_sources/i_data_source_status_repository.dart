import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

import 'data_source.dart';
import 'data_source_failure.dart';
import 'data_source_status.dart';

abstract class IDataSourceStatusRepository {
  // get article source statuses for given user
  Future<Either<DataSourceFailure, KtList<DataSourceStatus>>>
      getForCurrentUser();
  Future<Either<DataSourceFailure, Unit>> create(
    DataSourceStatus dataSourceStatus,
  );
  Future<Either<DataSourceFailure, Unit>> update(
    DataSourceStatus dataSourceStatus,
  );

  KtList<DataSourceStatus> createMissingJunctionEntities({
    required KtList<DataSource> dataSources,
    required String userId,
    required KtList<DataSourceStatus> dataSourceStatuses,
  });

  Future<Either<DataSourceFailure, Unit>> batchCreate(
    KtList<DataSourceStatus> dataSourceStatuses,
  );
}
