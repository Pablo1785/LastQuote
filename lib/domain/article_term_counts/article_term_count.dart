import 'package:ddd/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_term_count.freezed.dart';

@freezed
abstract class ArticleTermCount with _$ArticleTermCount {
  const ArticleTermCount._();

  const factory ArticleTermCount({
    required JunctionUniqueId id,
    required UniqueId articleId,
    required String termId,
    required double termImportance,
  }) = _ArticleTermCount;

  factory ArticleTermCount.empty() {
    final articleId = UniqueId();
    final termId = UniqueId()
        .getOrCrash(); // this works like a random string generator, so JunctionUniqueId validation passes
    final junctionId = JunctionUniqueId(
      [
        articleId.getOrCrash(),
        termId,
      ],
    );
    return ArticleTermCount(
      id: junctionId,
      articleId: articleId,
      termId: termId,
      termImportance: 0.0,
    );
  }
}
