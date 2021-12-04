import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

import '../article_sources/article_source.dart';
import 'article.dart';
import 'article_failure.dart';

abstract class IArticleRepository {
  // get articles
  Stream<Either<ArticleFailure, KtList<Article>>> watchAll();

  // get articles from source
  Stream<Either<ArticleFailure, KtList<Article>>> watchFromSource(
    ArticleSource articleSource,
  );
}
