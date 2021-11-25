import 'package:dartz/dartz.dart';
import 'package:ddd/domain/articles/article.dart';
import 'package:ddd/domain/articles/article_failure.dart';
import 'package:ddd/domain/articles/article_source.dart';
import 'package:kt_dart/kt.dart';

abstract class IArticleRepository {
  // get articles
  Either<ArticleFailure, KtList<Article>> getAll();

  // get articles from source
  Either<ArticleFailure, KtList<Article>> getFromSource(
      ArticleSource articleSource);
}
