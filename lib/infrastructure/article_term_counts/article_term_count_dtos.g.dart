// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_term_count_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArticleTermCountDto _$$_ArticleTermCountDtoFromJson(
        Map<String, dynamic> json) =>
    _$_ArticleTermCountDto(
      id: json['id'] as String?,
      articleId: json['article_id'] as String,
      termId: json['term_id'] as String,
      count: json['count'] as num,
    );

Map<String, dynamic> _$$_ArticleTermCountDtoToJson(
        _$_ArticleTermCountDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'article_id': instance.articleId,
      'term_id': instance.termId,
      'count': instance.count,
    };
