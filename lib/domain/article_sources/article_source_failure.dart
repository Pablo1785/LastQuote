import 'package:freezed_annotation/freezed_annotation.dart';

import '../article_sources/article_source.dart';

part 'article_source_failure.freezed.dart';

@freezed
abstract class ArticleSourceFailure with _$ArticleSourceFailure {
  const factory ArticleSourceFailure.unexpected() = _Unexpected;
  const factory ArticleSourceFailure.insufficientPermissions() =
      _InsufficientPermissions;
  const factory ArticleSourceFailure.sourceDisabled(
      ArticleSource articleSource) = _SourceDisabled;
  const factory ArticleSourceFailure.noActiveSource() = _NoActiveSource;
}
