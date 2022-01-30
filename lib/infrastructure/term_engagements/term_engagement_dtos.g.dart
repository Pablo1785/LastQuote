// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'term_engagement_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TermEngagementDto _$$_TermEngagementDtoFromJson(Map<String, dynamic> json) =>
    _$_TermEngagementDto(
      id: json['id'] as String?,
      termId: json['term_id'] as String,
      dismissCount: json['dismiss_count'] as num,
      likeCount: json['like_count'] as num,
      shareCount: json['share_count'] as num,
      openCount: json['open_count'] as num,
      initialInterestCount: json['initial_interest_count'] as num,
    );

Map<String, dynamic> _$$_TermEngagementDtoToJson(
        _$_TermEngagementDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'term_id': instance.termId,
      'dismiss_count': instance.dismissCount,
      'like_count': instance.likeCount,
      'share_count': instance.shareCount,
      'open_count': instance.openCount,
      'initial_interest_count': instance.initialInterestCount,
    };
