import 'package:dartz/dartz.dart';
import 'package:ddd/domain/data_sources/data_source_failure.dart';
import 'package:ddd/domain/data_sources/data_source_status.dart';
import 'package:kt_dart/kt.dart';

abstract class IDataSourceStatusRepository {
  // get article source statuses for given user
  Future<Either<DataSourceFailure, KtList<DataSourceStatus>>>
      getForCurrentUser();
}
