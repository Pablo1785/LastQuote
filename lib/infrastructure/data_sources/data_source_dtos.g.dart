// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_source_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataSourceStatusDto _$$_DataSourceStatusDtoFromJson(
        Map<String, dynamic> json) =>
    _$_DataSourceStatusDto(
      id: json['id'] as String?,
      dataSourceId: json['data_source_id'] as String,
      userId: json['user_id'] as String,
      isEnabled: json['is_enabled'] as bool,
    );

Map<String, dynamic> _$$_DataSourceStatusDtoToJson(
        _$_DataSourceStatusDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'data_source_id': instance.dataSourceId,
      'user_id': instance.userId,
      'is_enabled': instance.isEnabled,
    };

_$_DataSourceDto _$$_DataSourceDtoFromJson(Map<String, dynamic> json) =>
    _$_DataSourceDto(
      id: json['id'] as String?,
      dataSourceName: json['name'] as String,
      url: json['url'] as String,
      serverTimestamp:
          const ServerTimestampConverter().fromJson(json['serverTimestamp']),
    );

Map<String, dynamic> _$$_DataSourceDtoToJson(_$_DataSourceDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.dataSourceName,
      'url': instance.url,
      'serverTimestamp':
          const ServerTimestampConverter().toJson(instance.serverTimestamp),
    };
