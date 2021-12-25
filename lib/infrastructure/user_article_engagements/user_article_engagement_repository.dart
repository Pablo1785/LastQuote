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
      final userArticleDocs = (await _firestore
              .collection('user_article_engagement')
              .where('user_id', isEqualTo: userDocRef.id)
              .where('article_id', isEqualTo: article.id.getOrCrash())
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
          KtMap<String, UserArticleEngagement>>> watchForCurrentUserAndArticles(
      KtList<Article> articles) async* {
    try {
      final userDocRef = await getIt<FirestoreHelper>().userDocument();
      final articleIds = articles.iter
          .map(
            (article) => article.id.getOrCrash(),
          )
          .toList();

      yield* _firestore
          .collection('user_article_engagement')
          .where('user_id', isEqualTo: userDocRef.id)
          .where('article_id', whereIn: articleIds)
          .snapshots()
          .asyncMap(
            (snapshot) async => _parseJunctionsAndHandleMissing(
              snapshot: snapshot,
              articleIds: articleIds,
              userId: userDocRef.id,
            ),
          )
          .onErrorReturnWith(
            (exception, stacktrace) =>
                _handleException<KtMap<String, UserArticleEngagement>>(
                    exception, stacktrace),
          );
    } on Exception catch (exception, stacktrace) {
      yield _handleException<KtMap<String, UserArticleEngagement>>(
          exception, stacktrace);
    }
  }

  Future<
          Either<UserArticleEngagementFailure,
              KtMap<String, UserArticleEngagement>>>
      _parseJunctionsAndHandleMissing({
    required QuerySnapshot<Map<String, dynamic>> snapshot,
    required List<String> articleIds,
    required String userId,
  }) async {
    Map<String, UserArticleEngagement> uidUserArticleEngagementMap =
        _parseJunctionsToUidJunctionMap(
      snapshot: snapshot,
    );

    // get loaded articles that do not have a junction with current user
    final newUserArticleEngagements = _createMissingJunctionEntities(
      articleIds: articleIds,
      userId: userId,
      articleIdsWithExistingJunctions: uidUserArticleEngagementMap.keys,
    );

    // create missing articles
    final failuresOrSuccesses = await Future.wait(
      newUserArticleEngagements.map(
        (e) => create(e),
      ),
    );

    // check if all creates successful
    final someFailureOrUnit = failuresOrSuccesses.firstWhere(
      (element) => element.isLeft(),
      orElse: () => right<UserArticleEngagementFailure, Unit>(unit),
    );

    // if any create unsuccessful, pass the creation failure as stream output
    return someFailureOrUnit.fold(
      (failure) => left<UserArticleEngagementFailure,
          KtMap<String, UserArticleEngagement>>(failure),
      (_) => _addEntitiesToResultAndReturnSuccessCase(
        newUserArticleEngagements: newUserArticleEngagements,
        uidUserArticleEngagementMap: uidUserArticleEngagementMap,
      ),
    );
  }

  Map<String, UserArticleEngagement> _parseJunctionsToUidJunctionMap({
    required QuerySnapshot<Map<String, dynamic>> snapshot,
  }) {
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
    return uidUserArticleEngagementMap;
  }

  Either<UserArticleEngagementFailure, KtMap<String, UserArticleEngagement>>
      _addEntitiesToResultAndReturnSuccessCase({
    required Iterable<UserArticleEngagement> newUserArticleEngagements,
    required Map<String, UserArticleEngagement> uidUserArticleEngagementMap,
  }) {
    newUserArticleEngagements.forEach(
      (newEngagement) {
        uidUserArticleEngagementMap.putIfAbsent(
          newEngagement.articleId.getOrCrash(),
          () => newEngagement,
        );
      },
    );
    return right<UserArticleEngagementFailure,
        KtMap<String, UserArticleEngagement>>(
      uidUserArticleEngagementMap.toImmutableMap(),
    );
  }

  List<UserArticleEngagement> _createMissingJunctionEntities({
    required Iterable<String> articleIds,
    required String userId,
    required Iterable<String> articleIdsWithExistingJunctions,
  }) {
    return articleIds
        .where(
          (articleId) => !articleIdsWithExistingJunctions.contains(articleId),
        )
        .map(
          (articleId) => UserArticleEngagement.empty().copyWith(
            articleId: UniqueId.fromUniqueString(
              articleId,
            ),
            userId: UniqueId.fromUniqueString(
              userId,
            ),
            id: JunctionUniqueId(
              [
                articleId,
                userId,
              ],
            ),
          ),
        )
        .toList();
  }

  Either<UserArticleEngagementFailure, T> _handleException<T>(
    Object exception,
    StackTrace stackTrace,
  ) {
    if (exception is FirebaseException &&
        exception.message!.contains('permission')) {
      return left(const UserArticleEngagementFailure.insufficientPermissions());
    } else if (exception is FirebaseException &&
        exception.message!.contains('NOT_FOUND')) {
      return left(const UserArticleEngagementFailure.documentNotFound());
    } else if (exception is FirebaseException &&
        exception.message!.contains('empty')) {
      return left(const UserArticleEngagementFailure.noEngagement());
    } else {
      print(exception.toString());
      print(stackTrace.toString());
      return left(const UserArticleEngagementFailure.unexpected());
    }
  }

  @override
  Future<Either<UserArticleEngagementFailure, Unit>> create(
    UserArticleEngagement userArticleEngagement,
  ) async {
    try {
      final userArticleEngagementDto = UserArticleEngagementDto.fromDomain(
        userArticleEngagement,
      );

      final userArticleEngagementDtoJson = userArticleEngagementDto.toJson();
      await _firestore
          .collection('user_article_engagement')
          .doc(userArticleEngagementDto.id)
          .set(
            userArticleEngagementDtoJson,
          );
      return right(unit);
    } on PlatformException catch (e, stacktrace) {
      return _handleException(e, stacktrace);
    }
  }

  @override
  Future<Either<UserArticleEngagementFailure, Unit>> update(
    UserArticleEngagement userArticleEngagement,
  ) async {
    try {
      final userArticleEngagementDto = UserArticleEngagementDto.fromDomain(
        userArticleEngagement,
      );

      final userArticleEngagementDtoJson = userArticleEngagementDto.toJson();
      await _firestore
          .collection('user_article_engagement')
          .doc(userArticleEngagementDto.id)
          // update() differs from set() in that it preserves fields that aren't present in new data
          .update(
            userArticleEngagementDtoJson,
          );
      return right(unit);
    } on PlatformException catch (e, stacktrace) {
      return _handleException(e, stacktrace);
    }
  }
}
