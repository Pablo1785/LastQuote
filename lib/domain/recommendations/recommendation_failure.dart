import 'package:freezed_annotation/freezed_annotation.dart';

part 'recommendation_failure.freezed.dart';

@freezed
abstract class RecommendationFailure with _$RecommendationFailure {
  const factory RecommendationFailure.unexpected() = _Unexpected;
  const factory RecommendationFailure.insufficientPermissions() =
      _InsufficientPermissions;
}
