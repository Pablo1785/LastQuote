part of 'initial_interests_bloc.dart';

@freezed
class InitialInterestsEvent with _$InitialInterestsEvent {
  const factory InitialInterestsEvent.started() = _Started;
  const factory InitialInterestsEvent.getMostPopularTermsStarted() =
      _GetMostPopularTermsStarted;
  const factory InitialInterestsEvent.interestsReceived() = _InterestsReceived;
}
