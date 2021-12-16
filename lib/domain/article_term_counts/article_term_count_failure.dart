import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_term_count_failure.freezed.dart';

@freezed
abstract class ArticleTermCountFailure with _$ArticleTermCountFailure {
  const factory ArticleTermCountFailure.unexpected() = _Unexpected;
  const factory ArticleTermCountFailure.documentNotFound() = _DocumentNotFound;
  const factory ArticleTermCountFailure.insufficientPermissions() =
      _InsufficientPermissions;
}
