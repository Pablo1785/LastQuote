import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

import '../../domain/article_sources/article_source_failure.dart';
import '../../domain/article_sources/article_source_status.dart';
import '../../domain/article_sources/i_article_source_status_repository.dart';
import '../../domain/auth/user.dart';
import '../../infrastructure/core/firestore_helpers.dart';
import '../../injection.dart';
import 'article_source_dtos.dart';

@LazySingleton(as: IArticleSourceStatusRepository)
class ArticleSourceStatusRepository implements IArticleSourceStatusRepository {
  // Using Firstore directly instead of creating something like ArticleSourceStatusRemoteService because Firestore SDK is mature, complete and stable enough to not need another abstraction layer
  final FirebaseFirestore _firestore;

  ArticleSourceStatusRepository(this._firestore);

  // get article source statuses for given user
  @override
  Future<Either<ArticleSourceFailure, KtList<ArticleSourceStatus>>>
      getForCurrentUser() async {
    try {
      final userDocRef = await getIt<FirestoreHelper>().userDocument();
      final userArticleSourceStatuses = await _firestore
          .collection('user_article_source_statuses')
          .where('user_id', isEqualTo: userDocRef)
          .get();
      return right(
        userArticleSourceStatuses.docs
            .where((doc) => doc.exists)
            .map((doc) => ArticleSourceStatusDto.fromFirestore(doc).toDomain())
            .toImmutableList(),
      );
    } on PlatformException catch (exception, stacktrace) {
      if (exception.message!.contains('PERMISSION DENIED')) {
        return left(const ArticleSourceFailure.insufficientPermissions());
      } else {
        print(exception.toString());
        print(stacktrace.toString());
        return left(const ArticleSourceFailure.unexpected());
      }
    }
  }
}
