part of 'user_article_engagement_watcher_bloc.dart';

@freezed
class UserArticleEngagementWatcherState
    with _$UserArticleEngagementWatcherState {
  const factory UserArticleEngagementWatcherState.initial() = _Initial;
  const factory UserArticleEngagementWatcherState.loadInProgress() =
      _LoadInProgress;
  const factory UserArticleEngagementWatcherState.loadSuccess(
    KtMap<String, UserArticleEngagement> userArticleEngagements,
  ) = _LoadSuccess;
  const factory UserArticleEngagementWatcherState.loadFailure(
    UserArticleEngagementFailure userArticleEngagementFailure,
  ) = _LoadFailure;
}
