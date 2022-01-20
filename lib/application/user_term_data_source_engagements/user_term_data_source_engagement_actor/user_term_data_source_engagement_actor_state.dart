part of 'user_term_data_source_engagement_actor_bloc.dart';

@freezed
class UserTermDataSourceEngagementActorState
    with _$UserTermDataSourceEngagementActorState {
  const factory UserTermDataSourceEngagementActorState.initial() = _Initial;
  const factory UserTermDataSourceEngagementActorState.preparingForUpdate(
    Map<String, bool> termInitialInterestStatuses,
  ) = _PreparingForUpdate;
  const factory UserTermDataSourceEngagementActorState.updateInProgress() =
      _UpdateInProgress;
  const factory UserTermDataSourceEngagementActorState.updateFinished() =
      _UpdateFinished;
}
