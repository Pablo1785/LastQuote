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

  DataSourceRepository(this._firestore);

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
}
