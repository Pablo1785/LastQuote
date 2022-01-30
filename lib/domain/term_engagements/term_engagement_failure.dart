import 'package:freezed_annotation/freezed_annotation.dart';

part 'term_engagement_failure.freezed.dart';

@freezed
abstract class TermEngagementFailure with _$TermEngagementFailure {
  const factory TermEngagementFailure.unexpected() = _Unexpected;
  const factory TermEngagementFailure.insufficientPermissions() =
      _InsufficientPermissions;
}
