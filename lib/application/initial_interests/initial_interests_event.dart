part of 'initial_interests_bloc.dart';

@freezed
class InitialInterestsEvent with _$InitialInterestsEvent {
  const factory InitialInterestsEvent.started() = _Started;
  const factory InitialInterestsEvent.getMostPopularTermsStarted({
    @Default(100) int limit,
  }) = _GetMostPopularTermsStarted;
  const factory InitialInterestsEvent.interestsReceived(
    Either<TermEngagementFailure, KtList<TermEngagement>>
        failureOrTermEngagements,
  ) = _InterestsReceived;
}
