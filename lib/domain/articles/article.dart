import 'package:dartz/dartz.dart';
import 'value_objects.dart';
import '../core/failures.dart';
import '../core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article.freezed.dart';

@freezed
abstract class Article with _$Article {
  const Article._();

  const factory Article({
    required UniqueId id,
    required UniqueId sourceId,
    required ArticleTitle title,
    required ArticleUrl url,
    required ArticleMediaType mediaType,
  }) = _Article;

  factory Article.empty() => Article(
        id: UniqueId(),
        sourceId: UniqueId(),
        title: ArticleTitle(''),
        url: ArticleUrl('https://example.com/'),
        mediaType: ArticleMediaType(ArticleMediaType.predefinedMediaTypes[0]),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return title.failureOrUnit.andThen(url.failureOrUnit).fold(
          (failure) => some(failure),
          (_) => none(),
        );
  }
}
