part of 'user_article_engagement_actor_bloc.dart';

@freezed
class UserArticleEngagementActorState with _$UserArticleEngagementActorState {
  const factory UserArticleEngagementActorState.initial() = _Initial;
  const factory UserArticleEngagementActorState.actionInProgress() =
      _ActionInProgress;
  const factory UserArticleEngagementActorState.likeFailure(
    UserArticleEngagementFailure userArticleEngagementFailure,
  ) = _LikeFailure;
  const factory UserArticleEngagementActorState.likeSuccess(
    UserArticleEngagement updatedUserArticleEngagement,
  ) = _LikeSuccess;
  const factory UserArticleEngagementActorState.shareFailure(
    UserArticleEngagementFailure userArticleEngagementFailure,
  ) = _ShareFailure;
  const factory UserArticleEngagementActorState.shareOpened(
    UserArticleEngagement userArticleEngagement,
  ) = _ShareOpened;
  const factory UserArticleEngagementActorState.dismissFailure(
    UserArticleEngagementFailure userArticleEngagementFailure,
  ) = _DismissFailure;
  const factory UserArticleEngagementActorState.dismissSuccess(
    UserArticleEngagement userArticleEngagement,
  ) = _DismissSuccess;
  const factory UserArticleEngagementActorState.openFailure(
    UserArticleEngagementFailure userArticleEngagementFailure,
  ) = _OpenFailure;
  const factory UserArticleEngagementActorState.openSuccess(
    UserArticleEngagement userArticleEngagement,
  ) = _OpenSuccess;
}
