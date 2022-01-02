part of 'user_term_data_source_engagement_watcher_bloc.dart';

@freezed
class UserTermDataSourceEngagementWatcherEvent
    with _$UserTermDataSourceEngagementWatcherEvent {
  const factory UserTermDataSourceEngagementWatcherEvent.watchForCurrentUserTermsAndDataSourcesStarted(
    KtList<Term> terms,
    KtList<DataSource> dataSources,
  ) = _WatchForCurrentUserTermsAndDataSourcesStarted;
  const factory UserTermDataSourceEngagementWatcherEvent.userTermDataSourceEngagementsReceived(
    Either<UserTermDataSourceEngagementFailure,
            KtList<UserTermDataSourceEngagement>>
        failureOrUserTermDataSourceEngagements,
  ) = _UserTermDataSourceEngagementsReceived;
}
