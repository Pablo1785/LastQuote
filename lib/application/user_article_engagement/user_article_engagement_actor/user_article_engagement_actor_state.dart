part of 'user_article_engagement_actor_bloc.dart';

@freezed
class UserArticleEngagementActorState with _$UserArticleEngagementActorState {
  const factory UserArticleEngagementActorState.initial() = _Initial;
  const factory UserArticleEngagementActorState.actionInProgress() =
      _ActionInProgress;
  const factory UserArticleEngagementActorState.likeFailure(
    UserArticleEngagementFailure userArticleEngagementFailure,
  ) = _LikeFailure;
  const factory UserArticleEngagementActorState.likeSuccess() = _LikeSuccess;
  const factory UserArticleEngagementActorState.shareOpened(
    UserArticleEngagement userArticleEngagement,
  ) = _ShareOpened;
}
