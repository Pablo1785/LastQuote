import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

import '../auth/user.dart';
import 'article_source_failure.dart';
import 'article_source_status.dart';

abstract class IArticleSourceStatusRepository {
  // get article source statuses for given user
  Future<Either<ArticleSourceFailure, KtList<ArticleSourceStatus>>>
      getForCurrentUser();
}
