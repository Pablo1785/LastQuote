import 'package:cloud_firestore/cloud_firestore.dart';
import '../../domain/article_sources/article_source.dart';
import '../../domain/articles/article_failure.dart';
import '../../domain/articles/article.dart';
import 'package:dartz/dartz.dart';
import '../../domain/articles/i_article_repository.dart';
import '../../injection.dart';
import 'article_dtos.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/src/collection/interop.dart';
import 'package:kt_dart/src/collection/kt_list.dart';
import '../core/firestore_helpers.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IArticleRepository)
class ArticleRepository implements IArticleRepository {
  // Using Firstore directly instead of creating something like ArticleRemoteService because Firestore SDK is mature, complete and stable enough to not need another abstraction layer
  final FirebaseFirestore _firestore;

  ArticleRepository(this._firestore);

  @override
  Stream<Either<ArticleFailure, KtList<Article>>> watchAll() async* {
    // articles/{uass = getUserArticleSourceByIdAndUserId(article.source_id, currentUser.id) && uass.is_enabled == true}
    final userEnabledArticleSourceIds =
        (await getIt<FirestoreHelper>().userEnabledArticleSources())
            .map((docRef) => docRef.id)
            .toList();
    if (userEnabledArticleSourceIds.isEmpty) {
      yield left(const ArticleFailure.noActiveSource());
    } else {
      yield* _firestore
          .collection('articles')
          .where('source_id', whereIn: userEnabledArticleSourceIds)
          .limit(10)
          .snapshots()
          .map(
            (snapshot) => right<ArticleFailure, KtList<Article>>(
              snapshot.docs
                  .map(
                    (doc) => ArticleDto.fromFirestore(doc).toDomain(),
                  )
                  .toImmutableList(),
            ),
          )
          .onErrorReturnWith(
        (exception, stacktrace) {
          if (exception is PlatformException &&
              exception.message!.contains('permission')) {
            return left(const ArticleFailure.insufficientPermissions());
          } else {
            print(exception.toString());
            print(stacktrace.toString());
            return left(const ArticleFailure.unexpected());
          }
        },
      );
    }
  }

  @override
  Stream<Either<ArticleFailure, KtList<Article>>> watchFromSource(
      ArticleSource articleSource) async* {
    // articles/{uass = getUserArticleSourceByIdAndUserId(articleSource.id, currentUser.id) uass.is_enabled == true}

    // Make sure there are active sources
    final userEnabledArticleSourceIds =
        (await getIt<FirestoreHelper>().userEnabledArticleSources())
            .map((docRef) => docRef.id)
            .toList();
    if (userEnabledArticleSourceIds.isEmpty) {
      yield left(const ArticleFailure.noActiveSource());
    }

    // Make sure queried source was found (exists)
    final pickedSourceIndex = userEnabledArticleSourceIds.indexWhere(
      (sourceId) => sourceId == articleSource.id.getOrCrash(),
    );
    if (pickedSourceIndex == -1) {
      // This should not happen as ArticleSources are picked from a list presented to a user, so it shouldnt contain disabled/nonexistant sources
      yield left(const ArticleFailure.unexpected());
    } else {
      yield* _firestore
          .collection('articles')
          .where(
            'source_id',
            isEqualTo: userEnabledArticleSourceIds[pickedSourceIndex],
          )
          .limit(10)
          .snapshots()
          .map(
            (snapshot) => right<ArticleFailure, KtList<Article>>(
              snapshot.docs
                  .map(
                    (doc) => ArticleDto.fromFirestore(doc).toDomain(),
                  )
                  .toImmutableList(),
            ),
          )
          .onErrorReturnWith(
        (exception, stacktrace) {
          if (exception is PlatformException &&
              exception.message!.contains('permission')) {
            return left(const ArticleFailure.insufficientPermissions());
          } else {
            // log.error(exception.toString())
            print(exception.toString());
            return left(const ArticleFailure.unexpected());
          }
        },
      );
    }
  }

  @override
  Stream<Either<ArticleFailure, KtList<Article>>> watchById(
    KtList<String> articleIds,
  ) async* {
    // articles/{uass = getUserArticleSourceByIdAndUserId(article.source_id, currentUser.id) && uass.is_enabled == true}
    final userEnabledArticleSourceIds =
        (await getIt<FirestoreHelper>().userEnabledArticleSources())
            .map((docRef) => docRef.id)
            .toList();
    if (userEnabledArticleSourceIds.isEmpty) {
      yield left(const ArticleFailure.noActiveSource());
    } else {
      yield* _firestore
          .collection('articles')
          .where('source_id', whereIn: userEnabledArticleSourceIds)
          .where(FieldPath.documentId, whereIn: articleIds.asList())
          .snapshots()
          .map(
            (snapshot) => right<ArticleFailure, KtList<Article>>(
              snapshot.docs
                  .map(
                    (doc) => ArticleDto.fromFirestore(doc).toDomain(),
                  )
                  .toImmutableList(),
            ),
          )
          .onErrorReturnWith(
        (exception, stacktrace) {
          if (exception is PlatformException &&
              exception.message!.contains('permission')) {
            return left(const ArticleFailure.insufficientPermissions());
          } else {
            print(exception.toString());
            print(stacktrace.toString());
            return left(const ArticleFailure.unexpected());
          }
        },
      );
    }
  }
}
