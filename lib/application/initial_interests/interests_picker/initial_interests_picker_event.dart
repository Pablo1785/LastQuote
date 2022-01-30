part of 'initial_interests_picker_bloc.dart';

@freezed
class InitialInterestsPickerEvent with _$InitialInterestsPickerEvent {
  const factory InitialInterestsPickerEvent.termInitialInterestStatusesLoaded(
    Map<String, bool> termInitialInterestStatuses,
  ) = _TermsAdded;
  const factory InitialInterestsPickerEvent.termPressed(String termId) =
      _TermPressed;

  const factory InitialInterestsPickerEvent.confirmPressed() = _ConfirmPressed;
  const factory InitialInterestsPickerEvent.cancelPressed() = _CancelPressed;
}
