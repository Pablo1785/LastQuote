import 'package:freezed_annotation/freezed_annotation.dart';

part 'term_failure.freezed.dart';

@freezed
abstract class TermFailure with _$TermFailure {
  const factory TermFailure.unexpected() = _Unexpected;
  const factory TermFailure.insufficientPermissions() =
      _InsufficientPermissions;
}
