import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_term_data_source_engagement_failure.freezed.dart';

@freezed
abstract class UserTermDataSourceEngagementFailure
    with _$UserTermDataSourceEngagementFailure {
  const factory UserTermDataSourceEngagementFailure.unexpected() = _Unexpected;
  const factory UserTermDataSourceEngagementFailure.insufficientPermissions() =
      _InsufficientPermissions;
  const factory UserTermDataSourceEngagementFailure.noEngagement() =
      _NoEngagement;
  const factory UserTermDataSourceEngagementFailure.documentNotFound() =
      _DocumentNotFound;
}
