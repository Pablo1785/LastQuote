part of 'data_ownership_bloc.dart';

@freezed
class DataOwnershipEvent with _$DataOwnershipEvent {
  const factory DataOwnershipEvent.deleteUserDataRequested() =
      _DeleteUserDataRequested;
  const factory DataOwnershipEvent.deleteUserDataConfirmed() =
      _DeleteUserDataConfirmed;
  const factory DataOwnershipEvent.deleteUserDataCancelled() =
      _DeleteUserDataCancelled;
}
