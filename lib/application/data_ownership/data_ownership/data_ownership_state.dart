part of 'data_ownership_bloc.dart';

@freezed
class DataOwnershipState with _$DataOwnershipState {
  const factory DataOwnershipState.initial() = _Initial;
  const factory DataOwnershipState.deleteUserDataWaitingForConfirmation() =
      _DeleteUserDataWaitingForConfirmation;
  const factory DataOwnershipState.deleteUserDataInProgress() =
      _DeleteUserDataInProgress;
  const factory DataOwnershipState.deleteUserDataSuccess() =
      _DeleteUserDataSuccess;
  const factory DataOwnershipState.deleteUserDataFailure(
    DataOwnershipFailure dataOwnershipFailure,
  ) = _DeleteUserDataFailure;
}
