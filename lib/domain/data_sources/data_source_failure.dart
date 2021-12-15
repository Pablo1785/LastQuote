import 'package:ddd/domain/data_sources/data_source.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_source_failure.freezed.dart';

@freezed
abstract class DataSourceFailure with _$DataSourceFailure {
  const factory DataSourceFailure.unexpected() = _Unexpected;
  const factory DataSourceFailure.insufficientPermissions() =
      _InsufficientPermissions;
  const factory DataSourceFailure.sourceDisabled(DataSource dataSource) =
      _SourceDisabled;
  const factory DataSourceFailure.noActiveSource() = _NoActiveSource;
  const factory DataSourceFailure.documentNotFound() = _DocumentNotFound;
}
