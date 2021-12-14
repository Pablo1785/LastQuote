part of 'user_article_engagement_actor_bloc.dart';

@freezed
class UserArticleEngagementActorEvent with _$UserArticleEngagementActorEvent {
  const factory UserArticleEngagementActorEvent.sharePressed(
    Either<UserArticleEngagementFailure, UserArticleEngagement>
        failureOrUserArticleEngagement,
  ) = _SharePressed;
  const factory UserArticleEngagementActorEvent.likePressed(
    UserArticleEngagement userArticleEngagement,
  ) = _LikePressed;
  const factory UserArticleEngagementActorEvent.dismissPressed(
    Either<UserArticleEngagementFailure, UserArticleEngagement>
        failureOrUserArticleEngagement,
  ) = _DismissPressed;
  const factory UserArticleEngagementActorEvent.openPressed(
    Either<UserArticleEngagementFailure, UserArticleEngagement>
        failureOrUserArticleEngagement,
  ) = _OpenPressed;
}
