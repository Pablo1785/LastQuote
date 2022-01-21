part of 'initial_interests_picker_bloc.dart';

@freezed
class InitialInterestsPickerState with _$InitialInterestsPickerState {
  const factory InitialInterestsPickerState({
    required Map<String, bool> termInitialInterestStatuses,
    required bool isSubmitting,
    required Option<Either<UserTermDataSourceEngagementFailure, Unit>>
        failureOrUpdateSuccessfulOption,
  }) = _InitialInterestsPickerState;

  factory InitialInterestsPickerState.initial({
    required Map<String, bool> termInitialInterestStatuses,
  }) =>
      InitialInterestsPickerState(
        termInitialInterestStatuses: termInitialInterestStatuses,
        isSubmitting: false,
        failureOrUpdateSuccessfulOption: none(),
      );
}
