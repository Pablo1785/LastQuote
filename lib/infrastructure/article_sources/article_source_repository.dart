import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ddd/domain/article_sources/article_source_failure.dart';
import 'package:ddd/domain/article_sources/article_source.dart';
import 'package:dartz/dartz.dart';
import 'package:ddd/domain/article_sources/i_article_source_repository.dart';
import 'package:ddd/domain/article_sources/i_article_source_status_repository.dart';
import 'package:ddd/domain/auth/user.dart';
import 'package:ddd/infrastructure/article_sources/article_source_dtos.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/src/collection/interop.dart';
import 'package:kt_dart/src/collection/kt_list.dart';

@LazySingleton(as: IArticleSourceRepository)
class ArticleSourceRepository implements IArticleSourceRepository {
  final FirebaseFirestore _firestore;
  final IArticleSourceStatusRepository _articleSourceStatusRepository;

  ArticleSourceRepository(this._firestore, this._articleSourceStatusRepository);

  @override
  Future<Either<ArticleSourceFailure, KtList<ArticleSource>>> getAll() async {
    try {
      final articleSourceQuery =
          await _firestore.collection('article_sources').get();
      return right(
        articleSourceQuery.docs
            .where(
              (doc) => doc.exists,
            )
            .map(
              (doc) => ArticleSourceDto.fromFirestore(doc).toDomain(),
            )
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

  @override
  Future<Either<ArticleSourceFailure, KtList<ArticleSource>>>
      getEnabledByUser() async {
    try {
      final failureOrArticleSourceStatuses =
          await _articleSourceStatusRepository.getForCurrentUser();

      return failureOrArticleSourceStatuses.fold(
        (failure) {
          return left(failure);
        },
        (articleSourceStatuses) async {
          // convert articleSourceStatus list to list of ids to use list.contains() on ArticleSources' ids
          final enabledIds = articleSourceStatuses
              .asList()
              .where(
                (articleSourceStatus) => articleSourceStatus.isEnabled,
              )
              .map(
                (articleSourceStatus) => articleSourceStatus.id.getOrCrash(),
              )
              .toList();
          final articleSourceQuery =
              await _firestore.collection('article_sources').get();
          return right(
            articleSourceQuery.docs
                .where(
                  (doc) => doc.exists,
                )
                .map(
                  (doc) => ArticleSourceDto.fromFirestore(doc).toDomain(),
                )
                .where(
                  (articleSource) => enabledIds.contains(
                    articleSource.id.getOrCrash(),
                  ),
                )
                .toImmutableList(),
          );
        },
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
