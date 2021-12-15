import 'package:dartz/dartz.dart';
import 'package:ddd/domain/core/failures.dart';
import 'package:ddd/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_source_status.freezed.dart';

@freezed
abstract class DataSourceStatus with _$DataSourceStatus {
  const DataSourceStatus._();
  const factory DataSourceStatus({
    required JunctionUniqueId id,
    required UniqueId dataSourceId,
    required UniqueId userId,
    required bool isEnabled,
  }) = _DataSourceStatus;

  factory DataSourceStatus.empty() {
    final userId = UniqueId();
    final sourceId = UniqueId();
    final junctionId = JunctionUniqueId(
      [
        sourceId.getOrCrash(),
        userId.getOrCrash(),
      ],
    );
    return DataSourceStatus(
      id: junctionId,
      userId: userId,
      dataSourceId: sourceId,
      isEnabled: false,
    );
  }

  Option<ValueFailure<dynamic>> get failureOption {
    return this.id.failureOrUnit.fold(
          (failure) => some(failure),
          (_) => none(),
        );
  }
}
