// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArticleSourceDto _$$_ArticleSourceDtoFromJson(Map<String, dynamic> json) =>
    _$_ArticleSourceDto(
      id: json['id'] as String,
      articleSourceName: json['articleSourceName'] as String,
      url: json['url'] as String,
      articles: (json['articles'] as List<dynamic>)
          .map((e) => ArticleDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ArticleSourceDtoToJson(_$_ArticleSourceDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'articleSourceName': instance.articleSourceName,
      'url': instance.url,
      'articles': instance.articles,
    };

_$_ArticleDto _$$_ArticleDtoFromJson(Map<String, dynamic> json) =>
    _$_ArticleDto(
      id: json['id'] as String,
      sourceId: json['sourceId'] as String,
      title: json['title'] as String,
      url: json['url'] as String,
      mediaType: json['mediaType'] as String,
    );

Map<String, dynamic> _$$_ArticleDtoToJson(_$_ArticleDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sourceId': instance.sourceId,
      'title': instance.title,
      'url': instance.url,
      'mediaType': instance.mediaType,
    };
