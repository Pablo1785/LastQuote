// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommendation_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecommendationDto _$$_RecommendationDtoFromJson(Map<String, dynamic> json) =>
    _$_RecommendationDto(
      id: json['id'] as String?,
      relevanceScore: json['relevance_score'] as num,
    );

Map<String, dynamic> _$$_RecommendationDtoToJson(
        _$_RecommendationDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'relevance_score': instance.relevanceScore,
    };
