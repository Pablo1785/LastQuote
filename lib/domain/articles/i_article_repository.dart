import 'package:dartz/dartz.dart';
import 'package:ddd/domain/articles/article.dart';
import 'package:ddd/domain/articles/article_failure.dart';
import 'package:ddd/domain/articles/article_source.dart';
import 'package:kt_dart/kt.dart';

abstract class IArticleRepository {
  // get articles
  Stream<Either<ArticleFailure, KtList<Article>>> watchAll();

  // get articles from source
  Stream<Either<ArticleFailure, KtList<Article>>> watchFromSource(
      ArticleSource articleSource);
}
