import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ddd/domain/user_article_engagements/user_article_engagement.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/article_sources/article_source.dart';
import '../../domain/article_sources/article_source_status.dart';
import '../../domain/articles/article.dart';
import '../../domain/articles/value_objects.dart';
import '../../domain/core/value_objects.dart';
import '../core/converters.dart';

part 'user_article_engagement_dtos.freezed.dart';
part 'user_article_engagement_dtos.g.dart'; // JsonSerializable generated code

@freezed
abstract class UserArticleEngagementDto implements _$UserArticleEngagementDto {
  const UserArticleEngagementDto._();

  const factory UserArticleEngagementDto({
    required String? id,
    @JsonKey(name: 'article_id') required String articleId,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'is_dismissed') required bool isDismissed,
    @JsonKey(name: 'is_liked') required bool isLiked,
    @JsonKey(name: 'is_opened') required bool isOpened,
    @JsonKey(name: 'is_shared') required bool isShared,
  }) = _ArticleSourceStatusDto;

  factory UserArticleEngagementDto.fromDomain(
      UserArticleEngagement userArticleEngagement) {
    return UserArticleEngagementDto(
      id: userArticleEngagement.id.getOrCrash(),
      articleId: userArticleEngagement.articleId.getOrCrash(),
      userId: userArticleEngagement.userId.getOrCrash(),
      isDismissed: userArticleEngagement.isDismissed,
      isLiked: userArticleEngagement.isLiked,
      isOpened: userArticleEngagement.isOpened,
      isShared: userArticleEngagement.isShared,
    );
  }

  UserArticleEngagement toDomain() {
    return UserArticleEngagement(
      id: JunctionUniqueId.fromUniqueString(id!),
      articleId: UniqueId.fromUniqueString(articleId),
      userId: UniqueId.fromUniqueString(userId),
      isDismissed: isDismissed,
      isLiked: isLiked,
      isOpened: isOpened,
      isShared: isShared,
    );
  }

  factory UserArticleEngagementDto.fromJson(Map<String, dynamic> json) =>
      _$UserArticleEngagementDtoFromJson(json);

  factory UserArticleEngagementDto.fromFirestore(DocumentSnapshot doc) {
    return UserArticleEngagementDto.fromJson(doc.data() as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }
}
