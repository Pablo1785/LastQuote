part of 'user_term_data_source_engagement_watcher_bloc.dart';

@freezed
class UserTermDataSourceEngagementWatcherEvent
    with _$UserTermDataSourceEngagementWatcherEvent {
  const factory UserTermDataSourceEngagementWatcherEvent.watchMostPopularTermsForCurrentUserStarted({
    @Default(10) int limit,
  }) = _WatchMostPopularTermsforCurrentUserStarted;
  const factory UserTermDataSourceEngagementWatcherEvent.watchForCurrentUserTermsAndDataSourceStarted(
    KtList<String> termIds,
    String dataSourceId,
  ) = _WatchForCurrentUserTermsAndDataSourceStarted;
  const factory UserTermDataSourceEngagementWatcherEvent.userTermDataSourceEngagementsReceived(
    Either<UserTermDataSourceEngagementFailure,
            KtList<UserTermDataSourceEngagement>>
        failureOrUserTermDataSourceEngagements,
  ) = _UserTermDataSourceEngagementsReceived;
}
