import 'package:dartz/dartz.dart';
import 'package:ddd/domain/core/failures.dart';
import 'package:ddd/domain/core/value_objects.dart';
import 'package:ddd/domain/data_sources/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_source.freezed.dart';

@freezed
abstract class DataSource with _$DataSource {
  const DataSource._();

  const factory DataSource({
    required UniqueId id,
    required DataSourceName name,
    required DataSourceUrl url,
  }) = _DataSource;

  factory DataSource.empty() => DataSource(
        id: UniqueId(),
        name: DataSourceName(DataSourceName.predefinedNames.first),
        url: DataSourceUrl(DataSourceUrl.predefinedUrls.first),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit.andThen(url.failureOrUnit).fold(
          (failure) => some(failure),
          (_) => none(),
        );
  }
}
