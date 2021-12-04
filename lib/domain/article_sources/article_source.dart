import '../articles/article.dart';
import '../articles/value_objects.dart';
import '../core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'article_source.freezed.dart';

@freezed
abstract class ArticleSource with _$ArticleSource {
  const factory ArticleSource({
    required UniqueId id,
    required ArticleSourceName name,
    required ArticleSourceUrl url,
  }) = _ArticleSource;
}
