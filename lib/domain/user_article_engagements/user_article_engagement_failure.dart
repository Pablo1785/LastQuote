import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_article_engagement_failure.freezed.dart';

@freezed
abstract class UserArticleEngagementFailure
    with _$UserArticleEngagementFailure {
  const factory UserArticleEngagementFailure.unexpected() = _Unexpected;
  const factory UserArticleEngagementFailure.insufficientPermissions() =
      _InsufficientPermissions;
  const factory UserArticleEngagementFailure.noEngagement() = _NoEngagement;
  const factory UserArticleEngagementFailure.documentNotFound() =
      _DocumentNotFound;
}
