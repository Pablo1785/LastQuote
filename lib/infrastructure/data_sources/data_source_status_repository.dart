import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
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
      return right(
        userDataSourceStatuses.docs
            .where((doc) => doc.exists)
            .map((doc) => DataSourceStatusDto.fromFirestore(doc).toDomain())
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