import 'package:dartz/dartz.dart';
import 'package:ddd/domain/articles/article.dart';
import 'package:ddd/domain/core/failures.dart';
import 'package:ddd/domain/core/value_objects.dart';
import 'package:ddd/domain/core/value_validators.dart';
import 'package:kt_dart/kt.dart';

class ArticleUrl extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ArticleUrl(String input) {
    return ArticleUrl._(
      validateUrl(input),
    );
  }

  const ArticleUrl._(this.value);
}

class ArticleTitle extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 100;

  factory ArticleTitle(String input) {
    return ArticleTitle._(
      validateMaxStringLength(
        input,
        maxLength,
      ),
    );
  }

  const ArticleTitle._(this.value);
}

class ArticleMediaType extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 100;

  static const List<String> predefinedMediaTypes = [
    'social-media-post',
    'news-article',
    'encyclopedia-entry',
  ];

  factory ArticleMediaType(String input) {
    return ArticleMediaType._(
      right(input),
    );
  }

  const ArticleMediaType._(this.value);
}

class ArticleSourceName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const List<String> predefinedNames = [
    'example',
  ];

  factory ArticleSourceName(String input) {
    return ArticleSourceName._(
      right(input),
    );
  }

  const ArticleSourceName._(this.value);
}

class ArticleSourceUrl extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const List<String> predefinedUrls = [
    'https://www.example.com/',
  ];

  factory ArticleSourceUrl(String input) {
    return ArticleSourceUrl._(
      right(input),
    );
  }

  const ArticleSourceUrl._(this.value);
}

class ValueObjectList<T extends ValueObject> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;

  factory ValueObjectList(KtList<T> input) {
    return ValueObjectList._(
      validateValueObjectList(
        input,
      ),
    );
  }

  const ValueObjectList._(this.value);

  int get length {
    return value.getOrElse(() => emptyList()).size;
  }
}
