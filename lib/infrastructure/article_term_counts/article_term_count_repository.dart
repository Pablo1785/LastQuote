import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ddd/domain/article_term_counts/article_term_count_failure.dart';
import 'package:ddd/domain/article_term_counts/article_term_count.dart';
import 'package:dartz/dartz.dart';
import 'package:ddd/domain/article_term_counts/i_article_term_count_repository.dart';
import 'package:ddd/domain/terms/term.dart';
import 'package:ddd/domain/articles/article.dart';
import 'package:ddd/infrastructure/article_term_counts/article_term_count_dtos.dart';
import 'package:ddd/infrastructure/core/firestore_helpers.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/src/transformers/on_error_resume.dart';

import '../../injection.dart';

@LazySingleton(as: IArticleTermCountRepository)
class ArticleTermCountRepository implements IArticleTermCountRepository {
  final FirebaseFirestore _firestore;

  ArticleTermCountRepository(this._firestore);

  @override
  Future<Either<ArticleTermCountFailure, KtList<ArticleTermCount>>>
      getForArticle(
    Article article, {
    bool descending = false,
    int limit = 3,
  }) async {
    try {
      final articleId = article.id.getOrCrash();

      final articleTermCountSnapshot = await _firestore
          .collection('article_term_counts')
          .where(
            'article_id',
            isEqualTo: articleId,
          )
          .orderBy(
            'count',
            descending: descending,
          )
          .limit(limit)
          .get();
      return right(
        articleTermCountSnapshot.docs
            .map(
              (doc) => ArticleTermCountDto.fromFirestore(doc).toDomain(),
            )
            .toImmutableList(),
      );
    } on Exception catch (exception, stacktrace) {
      return _handleException(
        exception,
        stacktrace,
      );
    }
  }

  @override
  Future<Either<ArticleTermCountFailure, KtList<ArticleTermCount>>> getForTerm(
    Term term,
  ) {
    // TODO: implement getForTerm
    throw UnimplementedError();
  }

  @override
  Future<Either<ArticleTermCountFailure, ArticleTermCount>>
      getForTermAndArticle(
    Term term,
    Article article,
  ) {
    // TODO: implement getForTermAndArticle
    throw UnimplementedError();
  }

  @override
  Stream<Either<ArticleTermCountFailure, KtList<ArticleTermCount>>>
      watchForArticles(
    KtList<Article> articles,
  ) async* {
    try {
      final articleIds = articles.iter
          .map(
            (article) => article.id.getOrCrash(),
          )
          .toList();

      yield* _firestore
          .collection('article_term_counts')
          .where('article_id', whereIn: articleIds)
          .snapshots()
          .asyncMap(
        (snapshot) async {
          return right<ArticleTermCountFailure, KtList<ArticleTermCount>>(
              snapshot.docs
                  .where(
                    (doc) => doc.exists,
                  )
                  .map(
                    (doc) => ArticleTermCountDto.fromFirestore(doc).toDomain(),
                  )
                  .toImmutableList());
        },
      ).onErrorReturnWith(
        (exception, stacktrace) =>
            _handleException<KtList<ArticleTermCount>>(exception, stacktrace),
      );
    } on PlatformException catch (exception, stacktrace) {
      yield _handleException<KtList<ArticleTermCount>>(
        exception,
        stacktrace,
      );
    }
  }

  @override
  Stream<Either<ArticleTermCountFailure, KtList<ArticleTermCount>>>
      watchForTerms(
    KtList<Term> terms,
  ) {
    // TODO: implement watchForTerms
    throw UnimplementedError();
  }

  @override
  Stream<Either<ArticleTermCountFailure, KtList<ArticleTermCount>>>
      watchForTermsAndArticles(
    KtList<Term> terms,
    KtList<Article> articles,
  ) {
    // TODO: implement watchForTermsAndArticles
    throw UnimplementedError();
  }

  Either<ArticleTermCountFailure, T> _handleException<T>(
    Object exception,
    StackTrace stackTrace,
  ) {
    if (exception is FirebaseException &&
        exception.message!.contains('permission')) {
      return left<ArticleTermCountFailure, T>(
          const ArticleTermCountFailure.insufficientPermissions());
    } else if (exception is FirebaseException &&
        exception.message!.contains('found')) {
      return left<ArticleTermCountFailure, T>(
          const ArticleTermCountFailure.documentNotFound());
    } else {
      print(exception.toString());
      print(stackTrace.toString());
      return left<ArticleTermCountFailure, T>(
          const ArticleTermCountFailure.unexpected());
    }
  }

  @override
  Future<Either<ArticleTermCountFailure, KtList<ArticleTermCount>>>
      getForEachArticle(
    KtList<Article> articles, {
    bool descending = false,
    int limitPerArticle = 3,
  }) async {
    // Guarantee list is non-empty so I can return just the first Failure of all the Futures
    if (articles.isEmpty())
      return right(const KtList<ArticleTermCount>.empty());
    final articleTermCountFutures = articles.map(
      (article) => getForArticle(
        article,
        descending: descending,
        limit: limitPerArticle,
      ),
    );
    final eithers = await Future.wait(
      articleTermCountFutures.asList(),
    );

    if (eithers.any((either) => either.isRight())) {
      final successEithers = eithers.where((either) => either.isRight());
      var articleTermCounts = List<ArticleTermCount>.empty(
        growable: true,
      );
      successEithers.forEach(
        (either) {
          either.fold(
            (_) {},
            (articleTermCountSublist) => articleTermCounts.addAll(
              articleTermCountSublist.asList(),
            ),
          );
        },
      );
      return right(articleTermCounts.toImmutableList());
    } else {
      return eithers.first.leftMap((failure) => failure);
    }
  }
}
