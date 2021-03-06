part of 'recommendation_watcher_bloc.dart';

@freezed
class RecommendationWatcherEvent with _$RecommendationWatcherEvent {
  const factory RecommendationWatcherEvent.watchingCancelled() =
      _WatchingCancelled;
  const factory RecommendationWatcherEvent.watchAllForCurrentUserStarted() =
      _WatchAllForCurrentUserStarted;
  const factory RecommendationWatcherEvent.watchSpecificRecommendationsForCurrentUserStarted(
    List<String> recommendationIds,
  ) = _WatchSpecificRecommendationsForCurrentUserStarted;

  const factory RecommendationWatcherEvent.watchFromSourceForCurrentUserStarted(
    ArticleSource articleSource,
  ) = _WatchFromSourceForCurrentUserStarted;
  const factory RecommendationWatcherEvent.recommendationsReceived(
    Either<RecommendationFailure, KtList<Recommendation>>
        failureOrRecommendations,
  ) = _RecommendationsReceived;
}
