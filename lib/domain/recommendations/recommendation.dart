import 'package:freezed_annotation/freezed_annotation.dart';

part 'recommendation.freezed.dart';

@freezed
abstract class Recommendation with _$Recommendation {
  const Recommendation._();

  const factory Recommendation({
    required String idAndValue,
    required int relevanceScore,
  }) = _Recommendation;

  factory Recommendation.empty() => Recommendation(
        idAndValue: '',
        relevanceScore: 0,
      );
}
