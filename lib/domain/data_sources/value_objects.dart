import 'package:dartz/dartz.dart';
import 'package:ddd/domain/core/failures.dart';
import 'package:ddd/domain/core/value_objects.dart';

class DataSourceName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const List<String> predefinedNames = [
    'example',
  ];

  factory DataSourceName(String input) {
    return DataSourceName._(
      right(input),
    );
  }

  const DataSourceName._(this.value);
}

class DataSourceUrl extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const List<String> predefinedUrls = [
    'https://www.example.com/',
  ];

  factory DataSourceUrl(String input) {
    return DataSourceUrl._(
      right(input),
    );
  }

  const DataSourceUrl._(this.value);
}
