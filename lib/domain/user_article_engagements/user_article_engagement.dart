import 'package:dartz/dartz.dart';
import '../core/failures.dart';
import '../core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_article_engagement.freezed.dart';

@freezed
abstract class UserArticleEngagement with _$UserArticleEngagement {
  const UserArticleEngagement._();

  const factory UserArticleEngagement({
    required JunctionUniqueId id,
    required UniqueId articleId,
    required UniqueId userId,
    required bool isDismissed,
    required bool isLiked,
    required bool isShared,
    required bool isOpened,
  }) = _UserArticleEngagement;

  factory UserArticleEngagement.empty() {
    final articleId = UniqueId();
    final userId = UniqueId();
    final junctionId = JunctionUniqueId(
      [
        articleId.getOrCrash(),
        userId.getOrCrash(),
      ],
    );
    return UserArticleEngagement(
      id: junctionId,
      articleId: articleId,
      userId: userId,
      isDismissed: false,
      isLiked: false,
      isShared: false,
      isOpened: false,
    );
  }
}
