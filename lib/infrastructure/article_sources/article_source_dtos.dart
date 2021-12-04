import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/article_sources/article_source.dart';
import '../../domain/article_sources/article_source_status.dart';
import '../../domain/articles/article.dart';
import '../../domain/articles/value_objects.dart';
import '../../domain/core/value_objects.dart';
import '../core/converters.dart';

part 'article_source_dtos.freezed.dart';
part 'article_source_dtos.g.dart'; // JsonSerializable generated code

@freezed
abstract class ArticleSourceStatusDto implements _$ArticleSourceStatusDto {
  const ArticleSourceStatusDto._();

  const factory ArticleSourceStatusDto({
    required String? id,
    @JsonKey(name: 'article_source_id')
    @ReferenceConverter()
        required String articleSourceId,
    @JsonKey(name: 'user_id') @ReferenceConverter() required String userId,
    @JsonKey(name: 'is_enabled') required bool isEnabled,
  }) = _ArticleSourceStatusDto;

  factory ArticleSourceStatusDto.fromDomain(
      ArticleSourceStatus articleSourceStatus) {
    return ArticleSourceStatusDto(
      id: articleSourceStatus.id.getOrCrash(),
      articleSourceId: articleSourceStatus.articleSourceId.getOrCrash(),
      userId: articleSourceStatus.userId.getOrCrash(),
      isEnabled: articleSourceStatus.isEnabled,
    );
  }

  ArticleSourceStatus toDomain() {
    return ArticleSourceStatus(
      id: UniqueId.fromUniqueString(id!),
      articleSourceId: UniqueId.fromUniqueString(articleSourceId),
      userId: UniqueId.fromUniqueString(userId),
      isEnabled: isEnabled,
    );
  }

  factory ArticleSourceStatusDto.fromJson(Map<String, dynamic> json) =>
      _$ArticleSourceStatusDtoFromJson(json);

  factory ArticleSourceStatusDto.fromFirestore(DocumentSnapshot doc) {
    return ArticleSourceStatusDto.fromJson(doc.data() as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }
}

@freezed
abstract class ArticleSourceDto implements _$ArticleSourceDto {
  const ArticleSourceDto._();

  const factory ArticleSourceDto({
    required String? id,
    @JsonKey(name: 'name') required String articleSourceName,
    required String url,
    @ServerTimestampConverter() required FieldValue? serverTimestamp,
  }) = _ArticleSourceDto;

  factory ArticleSourceDto.fromDomain(ArticleSource articleSource) {
    return ArticleSourceDto(
      id: articleSource.id.getOrCrash(),
      articleSourceName: articleSource.name.getOrCrash(),
      url: articleSource.url.getOrCrash(),
      serverTimestamp: FieldValue.serverTimestamp(),
    );
  }

  ArticleSource toDomain() {
    return ArticleSource(
      id: UniqueId.fromUniqueString(id!),
      name: ArticleSourceName(articleSourceName),
      url: ArticleSourceUrl(url),
    );
  }

  factory ArticleSourceDto.fromJson(Map<String, dynamic> json) =>
      _$ArticleSourceDtoFromJson(json);

  factory ArticleSourceDto.fromFirestore(DocumentSnapshot doc) {
    return ArticleSourceDto.fromJson(doc.data() as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }
}
