import 'package:dartz/dartz.dart';
import 'package:ddd/domain/articles/article.dart';
import 'package:ddd/domain/core/value_objects.dart';
import 'package:ddd/domain/user_article_engagements/user_article_engagement.dart';
import 'package:ddd/domain/user_article_engagements/user_article_engagement_failure.dart';
import 'package:kt_dart/kt.dart';

abstract class IUserArticleEngagementRepository {
  // get articles
  Future<Either<UserArticleEngagementFailure, UserArticleEngagement>>
      getForCurrentUserAndArticle(
    Article article,
  );

  // return ArticleId->UserArticleEngagement mapping for current User
  Stream<
      Either<UserArticleEngagementFailure,
          KtMap<String, UserArticleEngagement>>> watchForCurrentUserAndArticles(
    KtList<Article> articles,
  );

  Future<Either<UserArticleEngagementFailure, Unit>> create(
    UserArticleEngagement userArticleEngagement,
  );

  Future<Either<UserArticleEngagementFailure, Unit>> update(
      UserArticleEngagement userArticleEngagement);
}
