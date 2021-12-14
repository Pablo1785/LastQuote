import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/articles/article.dart';
import '../../domain/articles/value_objects.dart';
import '../../domain/core/value_objects.dart';
import '../core/converters.dart';

part 'article_dtos.freezed.dart';
part 'article_dtos.g.dart'; // JsonSerializable generated code

@freezed
abstract class ArticleDto implements _$ArticleDto {
  const ArticleDto._();

  const factory ArticleDto({
    required String? id,
    @JsonKey(name: 'source_id') required String sourceId,
    required String title,
    required String url,
    @JsonKey(name: 'media_type') required String mediaType,
    @ServerTimestampConverter() required FieldValue? serverTimestamp,
  }) = _ArticleDto;

  factory ArticleDto.fromDomain(Article article) {
    return ArticleDto(
      id: article.id.getOrCrash(),
      sourceId: article.sourceId.getOrCrash(),
      title: article.title.getOrCrash(),
      url: article.url.getOrCrash(),
      mediaType: article.mediaType.getOrCrash(),
      serverTimestamp: FieldValue.serverTimestamp(),
    );
  }

  Article toDomain() {
    return Article(
      id: UniqueId.fromUniqueString(id!),
      sourceId: UniqueId.fromUniqueString(sourceId),
      title: ArticleTitle(title),
      url: ArticleUrl(url),
      mediaType: ArticleMediaType(mediaType),
    );
  }

  factory ArticleDto.fromJson(Map<String, dynamic> json) =>
      _$ArticleDtoFromJson(json);

  factory ArticleDto.fromFirestore(DocumentSnapshot doc) {
    return ArticleDto.fromJson(doc.data() as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }
}
