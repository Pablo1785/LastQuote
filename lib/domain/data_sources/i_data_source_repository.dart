import 'package:dartz/dartz.dart';
import 'package:ddd/domain/data_sources/data_source.dart';
import 'package:ddd/domain/data_sources/data_source_failure.dart';
import 'package:kt_dart/kt.dart';

abstract class IDataSourceRepository {
  // get Data sources
  Future<Either<DataSourceFailure, KtList<DataSource>>> getAll();
}
