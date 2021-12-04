import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

import '../article_sources/article_source.dart';
import '../auth/user.dart';
import 'article_source_failure.dart';

abstract class IArticleSourceRepository {
  // get article sources
  Future<Either<ArticleSourceFailure, KtList<ArticleSource>>> getAll();

  // get article sources enabled by user
  Future<Either<ArticleSourceFailure, KtList<ArticleSource>>>
      getEnabledByUser();
}
