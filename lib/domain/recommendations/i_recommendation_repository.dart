import 'package:dartz/dartz.dart';
import 'package:ddd/domain/article_sources/article_source.dart';
import 'package:ddd/domain/recommendations/recommendation.dart';
import 'package:ddd/domain/recommendations/recommendation_failure.dart';
import 'package:kt_dart/kt.dart';

abstract class IRecommendationRepository {
  // get all recommendations
  Stream<Either<RecommendationFailure, KtList<Recommendation>>>
      watchAllForCurrentUser();

  Stream<Either<RecommendationFailure, KtList<Recommendation>>>
      watchSpecificRecommendationsForCurrentUser(
    List<String> recommendationIds,
  );
  Stream<Either<RecommendationFailure, KtList<Recommendation>>>
      watchFromSourceForCurrentUser(
    ArticleSource articleSource,
  );
}
