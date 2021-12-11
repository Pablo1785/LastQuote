// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_article_engagement_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArticleSourceStatusDto _$$_ArticleSourceStatusDtoFromJson(
        Map<String, dynamic> json) =>
    _$_ArticleSourceStatusDto(
      id: json['id'] as String?,
      articleId: json['article_id'] as String,
      userId: json['user_id'] as String,
      isDismissed: json['is_dismissed'] as bool,
      isLiked: json['is_liked'] as bool,
      isOpened: json['is_opened'] as bool,
      isShared: json['is_shared'] as bool,
    );

Map<String, dynamic> _$$_ArticleSourceStatusDtoToJson(
        _$_ArticleSourceStatusDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'article_id': instance.articleId,
      'user_id': instance.userId,
      'is_dismissed': instance.isDismissed,
      'is_liked': instance.isLiked,
      'is_opened': instance.isOpened,
      'is_shared': instance.isShared,
    };
