part of 'recommendation_watcher_bloc.dart';

@freezed
class RecommendationWatcherState with _$RecommendationWatcherState {
  const factory RecommendationWatcherState.initial() = _Initial;
  const factory RecommendationWatcherState.loadInProgress() = _LoadInProgress;
  const factory RecommendationWatcherState.loadSuccess(
    KtList<Recommendation> recommendations,
  ) = _LoadSuccess;
  const factory RecommendationWatcherState.loadFailure(
    RecommendationFailure recommendationFailure,
  ) = _LoadFailure;
}
