part of 'user_term_data_source_engagement_watcher_bloc.dart';

@freezed
class UserTermDataSourceEngagementWatcherState
    with _$UserTermDataSourceEngagementWatcherState {
  const factory UserTermDataSourceEngagementWatcherState.initial() = _Initial;
  const factory UserTermDataSourceEngagementWatcherState.loadInProgress() =
      _LoadInProgress;
  const factory UserTermDataSourceEngagementWatcherState.loadSuccess(
    KtList<UserTermDataSourceEngagement> userTermDataSourceEngagements,
  ) = _LoadSuccess;
  const factory UserTermDataSourceEngagementWatcherState.loadFailure(
    UserTermDataSourceEngagementFailure userTermDataSourceEngagementFailure,
  ) = _LoadFailure;
}
