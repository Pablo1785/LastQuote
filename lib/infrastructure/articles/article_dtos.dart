import 'package:ddd/domain/articles/article.dart';
import 'package:ddd/domain/articles/article_source.dart';
import 'package:ddd/domain/articles/value_objects.dart';
import 'package:ddd/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

part 'article_dtos.freezed.dart';
part 'article_dtos.g.dart'; // JsonSerializable generated code

@freezed
abstract class ArticleSourceDto implements _$ArticleSourceDto {
  const ArticleSourceDto._();

  const factory ArticleSourceDto({
    required String id,
    required String articleSourceName,
    required String url,
    required List<ArticleDto> articles,
  }) = _ArticleSourceDto;

  factory ArticleSourceDto.fromDomain(ArticleSource articleSource) {
    return ArticleSourceDto(
      id: articleSource.id.getOrCrash(),
      articleSourceName: articleSource.name.getOrCrash(),
      url: articleSource.url.getOrCrash(),
      articles: articleSource.articles
          .asList()
          .map((article) => ArticleDto.fromDomain(article))
          .toList(),
    );
  }

  ArticleSource toDomain() {
    return ArticleSource(
      id: UniqueId.fromUniqueString(id),
      name: ArticleSourceName(articleSourceName),
      url: ArticleSourceUrl(url),
      articles: KtList.from(
        articles.map(
          (articleDto) => articleDto.toDomain(),
        ),
      ),
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
    required String id,
    required String sourceId,
    required String title,
    required String url,
    required String mediaType,
  }) = _ArticleDto;

  factory ArticleDto.fromDomain(Article article) {
    return ArticleDto(
      id: article.id.getOrCrash(),
      sourceId: article.sourceId.getOrCrash(),
      title: article.title.getOrCrash(),
      url: article.url.getOrCrash(),
      mediaType: article.mediaType.getOrCrash(),
    );
  }

  Article toDomain() {
    return Article(
      id: UniqueId.fromUniqueString(id),
      sourceId: UniqueId.fromUniqueString(sourceId),
      title: ArticleTitle(title),
      url: ArticleUrl(url),
      mediaType: ArticleMediaType(mediaType),
    );
  }

  factory ArticleDto.fromJson(Map<String, dynamic> json) =>
      _$ArticleDtoFromJson(json);
}
