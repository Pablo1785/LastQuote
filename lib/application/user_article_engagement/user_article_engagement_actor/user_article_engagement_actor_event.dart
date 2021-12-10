part of 'user_article_engagement_actor_bloc.dart';

@freezed
class UserArticleEngagementActorEvent with _$UserArticleEngagementActorEvent {
  const factory UserArticleEngagementActorEvent.sharePressed(
    UserArticleEngagement userArticleEngagement,
  ) = _SharePressed;
  const factory UserArticleEngagementActorEvent.likePressed(
    UserArticleEngagement userArticleEngagement,
  ) = _LikePressed;
  const factory UserArticleEngagementActorEvent.dismissPressed(
    UserArticleEngagement userArticleEngagement,
  ) = _DismissPressed;
  const factory UserArticleEngagementActorEvent.openPressed(
    UserArticleEngagement userArticleEngagement,
  ) = _OpenPressed;
}
