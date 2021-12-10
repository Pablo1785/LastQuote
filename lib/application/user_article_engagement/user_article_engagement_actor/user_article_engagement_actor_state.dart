part of 'user_article_engagement_actor_bloc.dart';

@freezed
class UserArticleEngagementActorState with _$UserArticleEngagementActorState {
  const factory UserArticleEngagementActorState.initial() = _Initial;
  const factory UserArticleEngagementActorState.shareClosed() = _ShareClosed;
  const factory UserArticleEngagementActorState.shareOpened(
    UserArticleEngagement userArticleEngagement,
  ) = _ShareOpened;
}
