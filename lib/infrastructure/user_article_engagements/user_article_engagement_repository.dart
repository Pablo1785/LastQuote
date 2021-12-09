import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ddd/domain/articles/article.dart';
import 'package:dartz/dartz.dart';
import 'package:ddd/domain/core/value_objects.dart';
import 'package:ddd/domain/user_article_engagements/i_user_article_engagement_repository.dart';
import 'package:ddd/domain/user_article_engagements/user_article_engagement_failure.dart';
import 'package:ddd/domain/user_article_engagements/user_article_engagement.dart';
import 'package:ddd/infrastructure/user_article_engagements/user_article_engagement_dtos.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:kt_dart/src/collection/interop.dart';
import 'package:kt_dart/src/collection/kt_list.dart';
import 'package:ddd/infrastructure/core/firestore_helpers.dart';
import 'package:rxdart/src/transformers/on_error_resume.dart';

import '../../injection.dart';

@LazySingleton(as: IUserArticleEngagementRepository)
class UserArticleEngagementRepository
    implements IUserArticleEngagementRepository {
  final FirebaseFirestore _firestore;

  UserArticleEngagementRepository(this._firestore);
  @override
  Future<Either<UserArticleEngagementFailure, UserArticleEngagement>>
      getForCurrentUserAndArticle(Article article) async {
    try {
      final userDocRef = await getIt<FirestoreHelper>().userDocument();
      final articleDocRef =
          _firestore.collection('articles').doc(article.id.getOrCrash());
      final userArticleDocs = (await _firestore
              .collection('user_article_engagement')
              .where('user_id', isEqualTo: userDocRef)
              .where('article_id', isEqualTo: articleDocRef)
              .get())
          .docs
          .where((doc) => doc.exists)
          .toList();
      if (userArticleDocs.isEmpty) {
        return left(
          const UserArticleEngagementFailure.noEngagement(),
        );
      } else if (userArticleDocs.length > 1) {
        // There should only be one user-article-engagement junction by design, otherwise its programmer error
        print("THERE SHOULD ONLY BE ONE USER_ARTICLE_ENGAGEMENT JUNCTION! " +
            userArticleDocs.toString());
        return left(
          const UserArticleEngagementFailure.unexpected(),
        );
      }

      return right(
        UserArticleEngagementDto.fromFirestore(userArticleDocs.first)
            .toDomain(),
      );
    } on Exception catch (exception, stacktrace) {
      return _handleException<UserArticleEngagement>(exception, stacktrace);
    }
  }

  @override
  Stream<
      Either<UserArticleEngagementFailure,
          KtMap<String, UserArticleEngagement>>> getForCurrentUserAndArticles(
      KtList<Article> articles) async* {
    try {
      final userDocRef = await getIt<FirestoreHelper>().userDocument();
      final articleIds = articles.iter
          .map(
            (article) => article.id.getOrCrash(),
          )
          .toList();

      yield* _firestore
          .collection('user_article_engagements')
          .where('user_id', isEqualTo: userDocRef)
          .where('article_id', whereIn: articleIds)
          .snapshots()
          .map(
        (snapshot) {
          Map<String, UserArticleEngagement> uidUserArticleEngagementMap = {};
          snapshot.docs
              .where(
            (doc) => doc.exists,
          )
              .forEach(
            (doc) {
              final userArticleEngagement =
                  UserArticleEngagementDto.fromFirestore(doc).toDomain();
              uidUserArticleEngagementMap.putIfAbsent(
                userArticleEngagement.articleId.getOrCrash(),
                () => userArticleEngagement,
              );
            },
          );
          return right<UserArticleEngagementFailure,
              KtMap<String, UserArticleEngagement>>(
            uidUserArticleEngagementMap.toImmutableMap(),
          );
        },
      ).onErrorReturnWith(
        (exception, stacktrace) =>
            _handleException<KtMap<String, UserArticleEngagement>>(
                exception, stacktrace),
      );
    } on PlatformException catch (exception, stacktrace) {
      yield _handleException<KtMap<String, UserArticleEngagement>>(
          exception, stacktrace);
    }
  }

  Either<UserArticleEngagementFailure, T> _handleException<T>(
      Object exception, StackTrace stackTrace) {
    if (exception is PlatformException &&
        exception.message!.contains('PERMISSION_DENIED')) {
      return left(const UserArticleEngagementFailure.insufficientPermissions());
    } else {
      print(exception.toString());
      print(stackTrace.toString());
      return left(const UserArticleEngagementFailure.unexpected());
    }
  }
}
