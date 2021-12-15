import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:ddd/domain/core/value_objects.dart';
import 'package:ddd/domain/data_sources/data_source.dart';
import 'package:ddd/domain/data_sources/data_source_status.dart';
import 'package:ddd/domain/data_sources/value_objects.dart';
import 'package:ddd/infrastructure/core/converters.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_source_dtos.g.dart'; // JsonSerializable generated code
part 'data_source_dtos.freezed.dart';

@freezed
abstract class DataSourceStatusDto implements _$DataSourceStatusDto {
  const DataSourceStatusDto._();

  const factory DataSourceStatusDto({
    required String? id,
    @JsonKey(name: 'data_source_id') required String dataSourceId,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'is_enabled') required bool isEnabled,
  }) = _DataSourceStatusDto;

  factory DataSourceStatusDto.fromDomain(
    DataSourceStatus dataSourceStatus,
  ) {
    return DataSourceStatusDto(
      id: dataSourceStatus.id.getOrCrash(),
      dataSourceId: dataSourceStatus.dataSourceId.getOrCrash(),
      userId: dataSourceStatus.userId.getOrCrash(),
      isEnabled: dataSourceStatus.isEnabled,
    );
  }

  DataSourceStatus toDomain() {
    return DataSourceStatus(
      id: JunctionUniqueId.fromUniqueString(this.id!),
      dataSourceId: UniqueId.fromUniqueString(dataSourceId),
      userId: UniqueId.fromUniqueString(userId),
      isEnabled: isEnabled,
    );
  }

  factory DataSourceStatusDto.fromJson(Map<String, dynamic> json) =>
      _$DataSourceStatusDtoFromJson(json);

  factory DataSourceStatusDto.fromFirestore(DocumentSnapshot doc) {
    return DataSourceStatusDto.fromJson(doc.data() as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }
}

@freezed
abstract class DataSourceDto implements _$DataSourceDto {
  const DataSourceDto._();

  const factory DataSourceDto({
    required String? id,
    @JsonKey(name: 'name') required String dataSourceName,
    required String url,
    @ServerTimestampConverter() required FieldValue? serverTimestamp,
  }) = _DataSourceDto;

  factory DataSourceDto.fromDomain(DataSource dataSource) {
    return DataSourceDto(
      id: dataSource.id.getOrCrash(),
      dataSourceName: dataSource.name.getOrCrash(),
      url: dataSource.url.getOrCrash(),
      serverTimestamp: FieldValue.serverTimestamp(),
    );
  }

  DataSource toDomain() {
    return DataSource(
      id: UniqueId.fromUniqueString(this.id!),
      name: DataSourceName(dataSourceName),
      url: DataSourceUrl(url),
    );
  }

  factory DataSourceDto.fromJson(Map<String, dynamic> json) =>
      _$DataSourceDtoFromJson(json);

  factory DataSourceDto.fromFirestore(DocumentSnapshot doc) {
    return DataSourceDto.fromJson(doc.data() as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }
}
