import 'package:dartz/dartz.dart';
import '../core/failures.dart';
import '../core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_article_engagement.freezed.dart';

@freezed
abstract class UserArticleEngagement with _$UserArticleEngagement {
  const UserArticleEngagement._();

  const factory UserArticleEngagement({
    required UniqueId id,
    required UniqueId articleId,
    required UniqueId userId,
    required bool isDismissed,
    required bool isLiked,
    required bool isShared,
    required bool isOpened,
  }) = _UserArticleEngagement;

  factory UserArticleEngagement.empty() => UserArticleEngagement(
        id: UniqueId(),
        articleId: UniqueId(),
        userId: UniqueId(),
        isDismissed: false,
        isLiked: false,
        isShared: false,
        isOpened: false,
      );
}
