part of 'user_term_data_source_engagement_actor_bloc.dart';

@freezed
class UserTermDataSourceEngagementActorEvent
    with _$UserTermDataSourceEngagementActorEvent {
  const factory UserTermDataSourceEngagementActorEvent.addedElementToUpdate(
    String termId,
    bool isInitialInterest,
    Map<String, bool> termInitialInterestStatuses,
  ) = _AddedElementToUpdate;
  const factory UserTermDataSourceEngagementActorEvent.removedElementFromUpdate(
    String termId,
    Map<String, bool> termInitialInterestStatuses,
  ) = _RemovedElementFromUpdate;
  const factory UserTermDataSourceEngagementActorEvent.batchUpdateInitialInterestsStarted(
    Map<String, bool> termInitialInterestStatuses,
  ) = _BatchUpdateInitialInterestsStarted;
}
