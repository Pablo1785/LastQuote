// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArticleDto _$$_ArticleDtoFromJson(Map<String, dynamic> json) =>
    _$_ArticleDto(
      id: json['id'] as String?,
      sourceId:
          const ReferenceConverter().fromJson(json['source_id'] as Object),
      title: json['title'] as String,
      url: json['url'] as String,
      mediaType: json['media_type'] as String,
      serverTimestamp:
          const ServerTimestampConverter().fromJson(json['serverTimestamp']),
    );

Map<String, dynamic> _$$_ArticleDtoToJson(_$_ArticleDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'source_id': const ReferenceConverter().toJson(instance.sourceId),
      'title': instance.title,
      'url': instance.url,
      'media_type': instance.mediaType,
      'serverTimestamp':
          const ServerTimestampConverter().toJson(instance.serverTimestamp),
    };
