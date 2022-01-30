part of 'user_article_engagement_watcher_bloc.dart';

@freezed
class UserArticleEngagementWatcherEvent
    with _$UserArticleEngagementWatcherEvent {
  const factory UserArticleEngagementWatcherEvent.watchingCancelled() =
      _WatchingCancelled;
  const factory UserArticleEngagementWatcherEvent.watchForCurrentUserAndArticlesStarted(
    KtList<Article> articles,
  ) = _WatchForCurrentUserAndArticlesStarted;
  const factory UserArticleEngagementWatcherEvent.userArticleEngagementsReceived(
    Either<UserArticleEngagementFailure, KtMap<String, UserArticleEngagement>>
        failureOrUserArticleEngagements,
  ) = _ArticlesReceived;
}
