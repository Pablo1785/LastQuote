// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_source_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArticleSourceStatusDto _$$_ArticleSourceStatusDtoFromJson(
        Map<String, dynamic> json) =>
    _$_ArticleSourceStatusDto(
      id: json['id'] as String?,
      articleSourceId: json['article_source_id'] as String,
      userId: json['user_id'] as String,
      isEnabled: json['is_enabled'] as bool,
    );

Map<String, dynamic> _$$_ArticleSourceStatusDtoToJson(
        _$_ArticleSourceStatusDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'article_source_id': instance.articleSourceId,
      'user_id': instance.userId,
      'is_enabled': instance.isEnabled,
    };

_$_ArticleSourceDto _$$_ArticleSourceDtoFromJson(Map<String, dynamic> json) =>
    _$_ArticleSourceDto(
      id: json['id'] as String?,
      articleSourceName: json['name'] as String,
      url: json['url'] as String,
      serverTimestamp:
          const ServerTimestampConverter().fromJson(json['serverTimestamp']),
    );

Map<String, dynamic> _$$_ArticleSourceDtoToJson(_$_ArticleSourceDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.articleSourceName,
      'url': instance.url,
      'serverTimestamp':
          const ServerTimestampConverter().toJson(instance.serverTimestamp),
    };
