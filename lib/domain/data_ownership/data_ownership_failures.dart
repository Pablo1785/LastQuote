import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_ownership_failures.freezed.dart';

@freezed
abstract class DataOwnershipFailure with _$DataOwnershipFailure {
  const factory DataOwnershipFailure.cancelledByUser() = _CancelledByUser;
  const factory DataOwnershipFailure.serverError() = _ServerError;
}
