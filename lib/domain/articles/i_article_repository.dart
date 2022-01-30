import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

import '../article_sources/article_source.dart';
import 'article.dart';
import 'article_failure.dart';

abstract class IArticleRepository {
  // listen for articles
  Stream<Either<ArticleFailure, KtList<Article>>> watchAll({
    bool includeDismissed = false,
  });

  // listen for articles from source
  Stream<Either<ArticleFailure, KtList<Article>>> watchFromSource(
    ArticleSource articleSource, {
    bool includeDismissed = false,
  });

  // listen for articles by id
  Stream<Either<ArticleFailure, KtList<Article>>> watchById(
    KtList<String> articleIds, {
    bool includeDismissed = false,
  });
}
