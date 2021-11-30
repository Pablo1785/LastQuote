import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ddd/domain/articles/article_source.dart';
import 'package:ddd/domain/articles/article_failure.dart';
import 'package:ddd/domain/articles/article.dart';
import 'package:dartz/dartz.dart';
import 'package:ddd/domain/articles/i_article_repository.dart';
import 'package:ddd/infrastructure/articles/article_dtos.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/src/collection/interop.dart';
import 'package:kt_dart/src/collection/kt_list.dart';
import 'package:ddd/infrastructure/core/firestore_helpers.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IArticleRepository)
class ArticleRepository implements IArticleRepository {
  // Using Firstore directly instead of creating something like ArticleRemoteService because Firestore SDK is mature, complete and stable enough to not need another abstraction layer
  final FirebaseFirestore _firestore;

  ArticleRepository(this._firestore);

  @override
  Stream<Either<ArticleFailure, KtList<Article>>> watchAll() async* {
    // articles/{uass = getUserArticleSourceByIdAndUserId(article.source_id, currentUser.id) && uass.is_enabled == true}
    final userEnabledArticleSourceDtos =
        await _firestore.userEnabledArticleSources();
    final sourceIds = userEnabledArticleSourceDtos
        .where((doc) => doc.exists)
        .map((doc) => doc.data())
        .map((articleSourceDto) => articleSourceDto?.toDomain().id.getOrCrash())
        .toList();
    yield* _firestore
        .collection('articles')
        .where('source_id', whereIn: sourceIds)
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
            exception.message!.contains('PERMISSION_DENIED')) {
          return left(const ArticleFailure.insufficientPermissions());
        } else {
          // log.error(exception.toString())
          return left(const ArticleFailure.unexpected());
        }
      },
    );
  }

  @override
  Stream<Either<ArticleFailure, KtList<Article>>> watchFromSource(
      ArticleSource articleSource) async* {
    // articles/{uass = getUserArticleSourceByIdAndUserId(articleSource.id, currentUser.id) uass.is_enabled == true}
    final userEnabledArticleSourceDtos =
        await _firestore.userEnabledArticleSources();

    final pickedSourceId = userEnabledArticleSourceDtos
        .where((doc) => doc.exists)
        .map((doc) => doc.id)
        .firstWhere(
          (sourceId) => sourceId == articleSource.id.getOrCrash(),
          orElse: () => '',
        );
    if (pickedSourceId == '') {
      yield left(const ArticleFailure.sourceDisabled());
    } else {
      yield* _firestore
          .collection('articles')
          .where('source_id', isEqualTo: pickedSourceId)
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
              exception.message!.contains('PERMISSION_DENIED')) {
            return left(const ArticleFailure.insufficientPermissions());
          } else {
            // log.error(exception.toString())
            return left(const ArticleFailure.unexpected());
          }
        },
      );
    }
  }
}
