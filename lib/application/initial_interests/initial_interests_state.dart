part of 'initial_interests_bloc.dart';

@freezed
class InitialInterestsState with _$InitialInterestsState {
  const factory InitialInterestsState.initial() = _Initial;
  const factory InitialInterestsState.loadInProgress() = _LoadInProgress;
  const factory InitialInterestsState.loadSuccess(
    KtList<TermEngagement> termEngagements,
  ) = _LoadSuccess;
  const factory InitialInterestsState.loadFailure(
    TermEngagementFailure termEngagementFailure,
  ) = _LoadFailure;
}
