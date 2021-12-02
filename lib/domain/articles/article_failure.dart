import 'package:ddd/domain/articles/article_source.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_failure.freezed.dart';

@freezed
abstract class ArticleFailure with _$ArticleFailure {
  const factory ArticleFailure.unexpected() = _Unexpected;
  const factory ArticleFailure.insufficientPermissions() =
      _InsufficientPermissions;
  const factory ArticleFailure.sourceDisabled(ArticleSource articleSource) =
      _SourceDisabled;
  const factory ArticleFailure.noActiveSource() = _NoActiveSource;
}
