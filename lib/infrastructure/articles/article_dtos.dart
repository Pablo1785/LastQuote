import 'package:ddd/domain/articles/article.dart';
import 'package:ddd/domain/articles/article_source.dart';
import 'package:ddd/domain/articles/article_source_status.dart';
import 'package:ddd/domain/articles/value_objects.dart';
import 'package:ddd/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

part 'article_dtos.freezed.dart';
part 'article_dtos.g.dart'; // JsonSerializable generated code

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

@freezed
abstract class ArticleDto implements _$ArticleDto {
  const ArticleDto._();

  const factory ArticleDto({
    required String? id,
    @JsonKey(name: 'source_id') @ReferenceConverter() required String sourceId,
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

class ServerTimestampConverter implements JsonConverter<FieldValue?, Object?> {
  const ServerTimestampConverter(); // in order to use this class as an annotation it needs a const constructor

  @override
  FieldValue? fromJson(Object? json) {
    return FieldValue?.serverTimestamp();
  }

  @override
  Object? toJson(FieldValue? fieldValue) => fieldValue;
}

class ReferenceConverter implements JsonConverter<String, Object> {
  const ReferenceConverter();

  @override
  String fromJson(Object json) {
    return (json as DocumentReference).id;
  }

  @override
  Object toJson(String object) {
    return object;
  }
}
