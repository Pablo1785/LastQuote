// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_term_data_source_engagement_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserTermDataSourceEngagementDto _$$_UserTermDataSourceEngagementDtoFromJson(
        Map<String, dynamic> json) =>
    _$_UserTermDataSourceEngagementDto(
      id: json['id'] as String?,
      dataSourceId: json['data_source_id'] as String,
      termId: json['term_id'] as String,
      userId: json['user_id'] as String,
      dismissCount: json['dismiss_count'] as num,
      likeCount: json['like_count'] as num,
      openCount: json['open_count'] as num,
      shareCount: json['share_count'] as num,
      isInitialInterest: json['is_initial_interest'] as bool,
    );

Map<String, dynamic> _$$_UserTermDataSourceEngagementDtoToJson(
        _$_UserTermDataSourceEngagementDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'data_source_id': instance.dataSourceId,
      'term_id': instance.termId,
      'user_id': instance.userId,
      'dismiss_count': instance.dismissCount,
      'like_count': instance.likeCount,
      'open_count': instance.openCount,
      'share_count': instance.shareCount,
      'is_initial_interest': instance.isInitialInterest,
    };
