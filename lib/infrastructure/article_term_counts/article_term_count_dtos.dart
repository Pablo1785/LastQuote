import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ddd/domain/article_term_counts/article_term_count.dart';
import 'package:ddd/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_term_count_dtos.freezed.dart';
part 'article_term_count_dtos.g.dart'; // JsonSerializable generated code

@freezed
abstract class ArticleTermCountDto implements _$ArticleTermCountDto {
  const ArticleTermCountDto._();

  const factory ArticleTermCountDto({
    required String? id,
    @JsonKey(name: 'article_id') required String articleId,
    @JsonKey(name: 'term_id') required String termId,
    @JsonKey(name: 'term_importance') required num termImportance,
  }) = _ArticleTermCountDto;

  factory ArticleTermCountDto.fromDomain(ArticleTermCount articleTermCount) {
    return ArticleTermCountDto(
      id: articleTermCount.id.getOrCrash(),
      articleId: articleTermCount.articleId.getOrCrash(),
      termId: articleTermCount.termId,
      termImportance: articleTermCount.termImportance,
    );
  }

  ArticleTermCount toDomain() {
    return ArticleTermCount(
      id: JunctionUniqueId.fromUniqueString(id!),
      articleId: UniqueId.fromUniqueString(articleId),
      termId: termId,
      termImportance: termImportance.toDouble(),
    );
  }

  factory ArticleTermCountDto.fromJson(Map<String, dynamic> json) =>
      _$ArticleTermCountDtoFromJson(json);

  factory ArticleTermCountDto.fromFirestore(DocumentSnapshot doc) {
    return ArticleTermCountDto.fromJson(doc.data() as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }
}
