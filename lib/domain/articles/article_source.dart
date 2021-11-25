import 'package:ddd/domain/articles/article.dart';
import 'package:ddd/domain/articles/value_objects.dart';
import 'package:ddd/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'article_source.freezed.dart';

@freezed
abstract class ArticleSource with _$ArticleSource {
  const factory ArticleSource({
    required UniqueId id,
    required ArticleSourceName name,
    required ArticleSourceUrl url,
    required KtList<Article> articles,
  }) = _ArticleSource;
}
