import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ddd/domain/recommendations/recommendation.dart';
import 'package:ddd/infrastructure/core/converters.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'recommendation_dtos.freezed.dart';

part 'recommendation_dtos.g.dart'; // JsonSerializable generated code

@freezed
abstract class RecommendationDto implements _$RecommendationDto {
  const RecommendationDto._();

  const factory RecommendationDto({
    required String? id,
    @JsonKey(name: 'relevance_score') required num relevanceScore,
  }) = _RecommendationDto;

  factory RecommendationDto.fromDomain(Recommendation recommendation) {
    return RecommendationDto(
      id: recommendation.idAndValue,
      relevanceScore: recommendation.relevanceScore,
    );
  }

  Recommendation toDomain() {
    return Recommendation(
      idAndValue: id!,
      relevanceScore: relevanceScore.toInt(),
    );
  }

  factory RecommendationDto.fromJson(Map<String, dynamic> json) =>
      _$RecommendationDtoFromJson(json);

  factory RecommendationDto.fromFirestore(DocumentSnapshot doc) {
    return RecommendationDto.fromJson(doc.data() as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }
}
