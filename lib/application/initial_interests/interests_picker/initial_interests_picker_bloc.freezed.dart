// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'initial_interests_picker_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InitialInterestsPickerEventTearOff {
  const _$InitialInterestsPickerEventTearOff();

  _TermsAdded termInitialInterestStatusesLoaded(
      Map<String, bool> termInitialInterestStatuses) {
    return _TermsAdded(
      termInitialInterestStatuses,
    );
  }

  _TermPressed termPressed(String termId) {
    return _TermPressed(
      termId,
    );
  }

  _ConfirmPressed confirmPressed() {
    return const _ConfirmPressed();
  }

  _CancelPressed cancelPressed() {
    return const _CancelPressed();
  }
}

/// @nodoc
const $InitialInterestsPickerEvent = _$InitialInterestsPickerEventTearOff();

/// @nodoc
mixin _$InitialInterestsPickerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, bool> termInitialInterestStatuses)
        termInitialInterestStatusesLoaded,
    required TResult Function(String termId) termPressed,
    required TResult Function() confirmPressed,
    required TResult Function() cancelPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Map<String, bool> termInitialInterestStatuses)?
        termInitialInterestStatusesLoaded,
    TResult Function(String termId)? termPressed,
    TResult Function()? confirmPressed,
    TResult Function()? cancelPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, bool> termInitialInterestStatuses)?
        termInitialInterestStatusesLoaded,
    TResult Function(String termId)? termPressed,
    TResult Function()? confirmPressed,
    TResult Function()? cancelPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TermsAdded value)
        termInitialInterestStatusesLoaded,
    required TResult Function(_TermPressed value) termPressed,
    required TResult Function(_ConfirmPressed value) confirmPressed,
    required TResult Function(_CancelPressed value) cancelPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TermsAdded value)? termInitialInterestStatusesLoaded,
    TResult Function(_TermPressed value)? termPressed,
    TResult Function(_ConfirmPressed value)? confirmPressed,
    TResult Function(_CancelPressed value)? cancelPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TermsAdded value)? termInitialInterestStatusesLoaded,
    TResult Function(_TermPressed value)? termPressed,
    TResult Function(_ConfirmPressed value)? confirmPressed,
    TResult Function(_CancelPressed value)? cancelPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitialInterestsPickerEventCopyWith<$Res> {
  factory $InitialInterestsPickerEventCopyWith(
          InitialInterestsPickerEvent value,
          $Res Function(InitialInterestsPickerEvent) then) =
      _$InitialInterestsPickerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialInterestsPickerEventCopyWithImpl<$Res>
    implements $InitialInterestsPickerEventCopyWith<$Res> {
  _$InitialInterestsPickerEventCopyWithImpl(this._value, this._then);

  final InitialInterestsPickerEvent _value;
  // ignore: unused_field
  final $Res Function(InitialInterestsPickerEvent) _then;
}

/// @nodoc
abstract class _$TermsAddedCopyWith<$Res> {
  factory _$TermsAddedCopyWith(
          _TermsAdded value, $Res Function(_TermsAdded) then) =
      __$TermsAddedCopyWithImpl<$Res>;
  $Res call({Map<String, bool> termInitialInterestStatuses});
}

/// @nodoc
class __$TermsAddedCopyWithImpl<$Res>
    extends _$InitialInterestsPickerEventCopyWithImpl<$Res>
    implements _$TermsAddedCopyWith<$Res> {
  __$TermsAddedCopyWithImpl(
      _TermsAdded _value, $Res Function(_TermsAdded) _then)
      : super(_value, (v) => _then(v as _TermsAdded));

  @override
  _TermsAdded get _value => super._value as _TermsAdded;

  @override
  $Res call({
    Object? termInitialInterestStatuses = freezed,
  }) {
    return _then(_TermsAdded(
      termInitialInterestStatuses == freezed
          ? _value.termInitialInterestStatuses
          : termInitialInterestStatuses // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
    ));
  }
}

/// @nodoc

class _$_TermsAdded implements _TermsAdded {
  const _$_TermsAdded(this.termInitialInterestStatuses);

  @override
  final Map<String, bool> termInitialInterestStatuses;

  @override
  String toString() {
    return 'InitialInterestsPickerEvent.termInitialInterestStatusesLoaded(termInitialInterestStatuses: $termInitialInterestStatuses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TermsAdded &&
            const DeepCollectionEquality().equals(
                other.termInitialInterestStatuses,
                termInitialInterestStatuses));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(termInitialInterestStatuses));

  @JsonKey(ignore: true)
  @override
  _$TermsAddedCopyWith<_TermsAdded> get copyWith =>
      __$TermsAddedCopyWithImpl<_TermsAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, bool> termInitialInterestStatuses)
        termInitialInterestStatusesLoaded,
    required TResult Function(String termId) termPressed,
    required TResult Function() confirmPressed,
    required TResult Function() cancelPressed,
  }) {
    return termInitialInterestStatusesLoaded(termInitialInterestStatuses);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Map<String, bool> termInitialInterestStatuses)?
        termInitialInterestStatusesLoaded,
    TResult Function(String termId)? termPressed,
    TResult Function()? confirmPressed,
    TResult Function()? cancelPressed,
  }) {
    return termInitialInterestStatusesLoaded?.call(termInitialInterestStatuses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, bool> termInitialInterestStatuses)?
        termInitialInterestStatusesLoaded,
    TResult Function(String termId)? termPressed,
    TResult Function()? confirmPressed,
    TResult Function()? cancelPressed,
    required TResult orElse(),
  }) {
    if (termInitialInterestStatusesLoaded != null) {
      return termInitialInterestStatusesLoaded(termInitialInterestStatuses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TermsAdded value)
        termInitialInterestStatusesLoaded,
    required TResult Function(_TermPressed value) termPressed,
    required TResult Function(_ConfirmPressed value) confirmPressed,
    required TResult Function(_CancelPressed value) cancelPressed,
  }) {
    return termInitialInterestStatusesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TermsAdded value)? termInitialInterestStatusesLoaded,
    TResult Function(_TermPressed value)? termPressed,
    TResult Function(_ConfirmPressed value)? confirmPressed,
    TResult Function(_CancelPressed value)? cancelPressed,
  }) {
    return termInitialInterestStatusesLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TermsAdded value)? termInitialInterestStatusesLoaded,
    TResult Function(_TermPressed value)? termPressed,
    TResult Function(_ConfirmPressed value)? confirmPressed,
    TResult Function(_CancelPressed value)? cancelPressed,
    required TResult orElse(),
  }) {
    if (termInitialInterestStatusesLoaded != null) {
      return termInitialInterestStatusesLoaded(this);
    }
    return orElse();
  }
}

abstract class _TermsAdded implements InitialInterestsPickerEvent {
  const factory _TermsAdded(Map<String, bool> termInitialInterestStatuses) =
      _$_TermsAdded;

  Map<String, bool> get termInitialInterestStatuses;
  @JsonKey(ignore: true)
  _$TermsAddedCopyWith<_TermsAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TermPressedCopyWith<$Res> {
  factory _$TermPressedCopyWith(
          _TermPressed value, $Res Function(_TermPressed) then) =
      __$TermPressedCopyWithImpl<$Res>;
  $Res call({String termId});
}

/// @nodoc
class __$TermPressedCopyWithImpl<$Res>
    extends _$InitialInterestsPickerEventCopyWithImpl<$Res>
    implements _$TermPressedCopyWith<$Res> {
  __$TermPressedCopyWithImpl(
      _TermPressed _value, $Res Function(_TermPressed) _then)
      : super(_value, (v) => _then(v as _TermPressed));

  @override
  _TermPressed get _value => super._value as _TermPressed;

  @override
  $Res call({
    Object? termId = freezed,
  }) {
    return _then(_TermPressed(
      termId == freezed
          ? _value.termId
          : termId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TermPressed implements _TermPressed {
  const _$_TermPressed(this.termId);

  @override
  final String termId;

  @override
  String toString() {
    return 'InitialInterestsPickerEvent.termPressed(termId: $termId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TermPressed &&
            (identical(other.termId, termId) || other.termId == termId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, termId);

  @JsonKey(ignore: true)
  @override
  _$TermPressedCopyWith<_TermPressed> get copyWith =>
      __$TermPressedCopyWithImpl<_TermPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, bool> termInitialInterestStatuses)
        termInitialInterestStatusesLoaded,
    required TResult Function(String termId) termPressed,
    required TResult Function() confirmPressed,
    required TResult Function() cancelPressed,
  }) {
    return termPressed(termId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Map<String, bool> termInitialInterestStatuses)?
        termInitialInterestStatusesLoaded,
    TResult Function(String termId)? termPressed,
    TResult Function()? confirmPressed,
    TResult Function()? cancelPressed,
  }) {
    return termPressed?.call(termId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, bool> termInitialInterestStatuses)?
        termInitialInterestStatusesLoaded,
    TResult Function(String termId)? termPressed,
    TResult Function()? confirmPressed,
    TResult Function()? cancelPressed,
    required TResult orElse(),
  }) {
    if (termPressed != null) {
      return termPressed(termId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TermsAdded value)
        termInitialInterestStatusesLoaded,
    required TResult Function(_TermPressed value) termPressed,
    required TResult Function(_ConfirmPressed value) confirmPressed,
    required TResult Function(_CancelPressed value) cancelPressed,
  }) {
    return termPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TermsAdded value)? termInitialInterestStatusesLoaded,
    TResult Function(_TermPressed value)? termPressed,
    TResult Function(_ConfirmPressed value)? confirmPressed,
    TResult Function(_CancelPressed value)? cancelPressed,
  }) {
    return termPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TermsAdded value)? termInitialInterestStatusesLoaded,
    TResult Function(_TermPressed value)? termPressed,
    TResult Function(_ConfirmPressed value)? confirmPressed,
    TResult Function(_CancelPressed value)? cancelPressed,
    required TResult orElse(),
  }) {
    if (termPressed != null) {
      return termPressed(this);
    }
    return orElse();
  }
}

abstract class _TermPressed implements InitialInterestsPickerEvent {
  const factory _TermPressed(String termId) = _$_TermPressed;

  String get termId;
  @JsonKey(ignore: true)
  _$TermPressedCopyWith<_TermPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ConfirmPressedCopyWith<$Res> {
  factory _$ConfirmPressedCopyWith(
          _ConfirmPressed value, $Res Function(_ConfirmPressed) then) =
      __$ConfirmPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ConfirmPressedCopyWithImpl<$Res>
    extends _$InitialInterestsPickerEventCopyWithImpl<$Res>
    implements _$ConfirmPressedCopyWith<$Res> {
  __$ConfirmPressedCopyWithImpl(
      _ConfirmPressed _value, $Res Function(_ConfirmPressed) _then)
      : super(_value, (v) => _then(v as _ConfirmPressed));

  @override
  _ConfirmPressed get _value => super._value as _ConfirmPressed;
}

/// @nodoc

class _$_ConfirmPressed implements _ConfirmPressed {
  const _$_ConfirmPressed();

  @override
  String toString() {
    return 'InitialInterestsPickerEvent.confirmPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ConfirmPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, bool> termInitialInterestStatuses)
        termInitialInterestStatusesLoaded,
    required TResult Function(String termId) termPressed,
    required TResult Function() confirmPressed,
    required TResult Function() cancelPressed,
  }) {
    return confirmPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Map<String, bool> termInitialInterestStatuses)?
        termInitialInterestStatusesLoaded,
    TResult Function(String termId)? termPressed,
    TResult Function()? confirmPressed,
    TResult Function()? cancelPressed,
  }) {
    return confirmPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, bool> termInitialInterestStatuses)?
        termInitialInterestStatusesLoaded,
    TResult Function(String termId)? termPressed,
    TResult Function()? confirmPressed,
    TResult Function()? cancelPressed,
    required TResult orElse(),
  }) {
    if (confirmPressed != null) {
      return confirmPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TermsAdded value)
        termInitialInterestStatusesLoaded,
    required TResult Function(_TermPressed value) termPressed,
    required TResult Function(_ConfirmPressed value) confirmPressed,
    required TResult Function(_CancelPressed value) cancelPressed,
  }) {
    return confirmPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TermsAdded value)? termInitialInterestStatusesLoaded,
    TResult Function(_TermPressed value)? termPressed,
    TResult Function(_ConfirmPressed value)? confirmPressed,
    TResult Function(_CancelPressed value)? cancelPressed,
  }) {
    return confirmPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TermsAdded value)? termInitialInterestStatusesLoaded,
    TResult Function(_TermPressed value)? termPressed,
    TResult Function(_ConfirmPressed value)? confirmPressed,
    TResult Function(_CancelPressed value)? cancelPressed,
    required TResult orElse(),
  }) {
    if (confirmPressed != null) {
      return confirmPressed(this);
    }
    return orElse();
  }
}

abstract class _ConfirmPressed implements InitialInterestsPickerEvent {
  const factory _ConfirmPressed() = _$_ConfirmPressed;
}

/// @nodoc
abstract class _$CancelPressedCopyWith<$Res> {
  factory _$CancelPressedCopyWith(
          _CancelPressed value, $Res Function(_CancelPressed) then) =
      __$CancelPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$CancelPressedCopyWithImpl<$Res>
    extends _$InitialInterestsPickerEventCopyWithImpl<$Res>
    implements _$CancelPressedCopyWith<$Res> {
  __$CancelPressedCopyWithImpl(
      _CancelPressed _value, $Res Function(_CancelPressed) _then)
      : super(_value, (v) => _then(v as _CancelPressed));

  @override
  _CancelPressed get _value => super._value as _CancelPressed;
}

/// @nodoc

class _$_CancelPressed implements _CancelPressed {
  const _$_CancelPressed();

  @override
  String toString() {
    return 'InitialInterestsPickerEvent.cancelPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CancelPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, bool> termInitialInterestStatuses)
        termInitialInterestStatusesLoaded,
    required TResult Function(String termId) termPressed,
    required TResult Function() confirmPressed,
    required TResult Function() cancelPressed,
  }) {
    return cancelPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Map<String, bool> termInitialInterestStatuses)?
        termInitialInterestStatusesLoaded,
    TResult Function(String termId)? termPressed,
    TResult Function()? confirmPressed,
    TResult Function()? cancelPressed,
  }) {
    return cancelPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, bool> termInitialInterestStatuses)?
        termInitialInterestStatusesLoaded,
    TResult Function(String termId)? termPressed,
    TResult Function()? confirmPressed,
    TResult Function()? cancelPressed,
    required TResult orElse(),
  }) {
    if (cancelPressed != null) {
      return cancelPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TermsAdded value)
        termInitialInterestStatusesLoaded,
    required TResult Function(_TermPressed value) termPressed,
    required TResult Function(_ConfirmPressed value) confirmPressed,
    required TResult Function(_CancelPressed value) cancelPressed,
  }) {
    return cancelPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TermsAdded value)? termInitialInterestStatusesLoaded,
    TResult Function(_TermPressed value)? termPressed,
    TResult Function(_ConfirmPressed value)? confirmPressed,
    TResult Function(_CancelPressed value)? cancelPressed,
  }) {
    return cancelPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TermsAdded value)? termInitialInterestStatusesLoaded,
    TResult Function(_TermPressed value)? termPressed,
    TResult Function(_ConfirmPressed value)? confirmPressed,
    TResult Function(_CancelPressed value)? cancelPressed,
    required TResult orElse(),
  }) {
    if (cancelPressed != null) {
      return cancelPressed(this);
    }
    return orElse();
  }
}

abstract class _CancelPressed implements InitialInterestsPickerEvent {
  const factory _CancelPressed() = _$_CancelPressed;
}

/// @nodoc
class _$InitialInterestsPickerStateTearOff {
  const _$InitialInterestsPickerStateTearOff();

  _InitialInterestsPickerState call(
      {required Map<String, bool> termInitialInterestStatuses,
      required bool isSubmitting,
      required Option<Either<UserTermDataSourceEngagementFailure, Unit>>
          failureOrUpdateSuccessfulOption}) {
    return _InitialInterestsPickerState(
      termInitialInterestStatuses: termInitialInterestStatuses,
      isSubmitting: isSubmitting,
      failureOrUpdateSuccessfulOption: failureOrUpdateSuccessfulOption,
    );
  }
}

/// @nodoc
const $InitialInterestsPickerState = _$InitialInterestsPickerStateTearOff();

/// @nodoc
mixin _$InitialInterestsPickerState {
  Map<String, bool> get termInitialInterestStatuses =>
      throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<UserTermDataSourceEngagementFailure, Unit>>
      get failureOrUpdateSuccessfulOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InitialInterestsPickerStateCopyWith<InitialInterestsPickerState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitialInterestsPickerStateCopyWith<$Res> {
  factory $InitialInterestsPickerStateCopyWith(
          InitialInterestsPickerState value,
          $Res Function(InitialInterestsPickerState) then) =
      _$InitialInterestsPickerStateCopyWithImpl<$Res>;
  $Res call(
      {Map<String, bool> termInitialInterestStatuses,
      bool isSubmitting,
      Option<Either<UserTermDataSourceEngagementFailure, Unit>>
          failureOrUpdateSuccessfulOption});
}

/// @nodoc
class _$InitialInterestsPickerStateCopyWithImpl<$Res>
    implements $InitialInterestsPickerStateCopyWith<$Res> {
  _$InitialInterestsPickerStateCopyWithImpl(this._value, this._then);

  final InitialInterestsPickerState _value;
  // ignore: unused_field
  final $Res Function(InitialInterestsPickerState) _then;

  @override
  $Res call({
    Object? termInitialInterestStatuses = freezed,
    Object? isSubmitting = freezed,
    Object? failureOrUpdateSuccessfulOption = freezed,
  }) {
    return _then(_value.copyWith(
      termInitialInterestStatuses: termInitialInterestStatuses == freezed
          ? _value.termInitialInterestStatuses
          : termInitialInterestStatuses // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrUpdateSuccessfulOption: failureOrUpdateSuccessfulOption ==
              freezed
          ? _value.failureOrUpdateSuccessfulOption
          : failureOrUpdateSuccessfulOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<UserTermDataSourceEngagementFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$InitialInterestsPickerStateCopyWith<$Res>
    implements $InitialInterestsPickerStateCopyWith<$Res> {
  factory _$InitialInterestsPickerStateCopyWith(
          _InitialInterestsPickerState value,
          $Res Function(_InitialInterestsPickerState) then) =
      __$InitialInterestsPickerStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Map<String, bool> termInitialInterestStatuses,
      bool isSubmitting,
      Option<Either<UserTermDataSourceEngagementFailure, Unit>>
          failureOrUpdateSuccessfulOption});
}

/// @nodoc
class __$InitialInterestsPickerStateCopyWithImpl<$Res>
    extends _$InitialInterestsPickerStateCopyWithImpl<$Res>
    implements _$InitialInterestsPickerStateCopyWith<$Res> {
  __$InitialInterestsPickerStateCopyWithImpl(
      _InitialInterestsPickerState _value,
      $Res Function(_InitialInterestsPickerState) _then)
      : super(_value, (v) => _then(v as _InitialInterestsPickerState));

  @override
  _InitialInterestsPickerState get _value =>
      super._value as _InitialInterestsPickerState;

  @override
  $Res call({
    Object? termInitialInterestStatuses = freezed,
    Object? isSubmitting = freezed,
    Object? failureOrUpdateSuccessfulOption = freezed,
  }) {
    return _then(_InitialInterestsPickerState(
      termInitialInterestStatuses: termInitialInterestStatuses == freezed
          ? _value.termInitialInterestStatuses
          : termInitialInterestStatuses // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrUpdateSuccessfulOption: failureOrUpdateSuccessfulOption ==
              freezed
          ? _value.failureOrUpdateSuccessfulOption
          : failureOrUpdateSuccessfulOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<UserTermDataSourceEngagementFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_InitialInterestsPickerState implements _InitialInterestsPickerState {
  const _$_InitialInterestsPickerState(
      {required this.termInitialInterestStatuses,
      required this.isSubmitting,
      required this.failureOrUpdateSuccessfulOption});

  @override
  final Map<String, bool> termInitialInterestStatuses;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<UserTermDataSourceEngagementFailure, Unit>>
      failureOrUpdateSuccessfulOption;

  @override
  String toString() {
    return 'InitialInterestsPickerState(termInitialInterestStatuses: $termInitialInterestStatuses, isSubmitting: $isSubmitting, failureOrUpdateSuccessfulOption: $failureOrUpdateSuccessfulOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InitialInterestsPickerState &&
            const DeepCollectionEquality().equals(
                other.termInitialInterestStatuses,
                termInitialInterestStatuses) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.failureOrUpdateSuccessfulOption,
                    failureOrUpdateSuccessfulOption) ||
                other.failureOrUpdateSuccessfulOption ==
                    failureOrUpdateSuccessfulOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(termInitialInterestStatuses),
      isSubmitting,
      failureOrUpdateSuccessfulOption);

  @JsonKey(ignore: true)
  @override
  _$InitialInterestsPickerStateCopyWith<_InitialInterestsPickerState>
      get copyWith => __$InitialInterestsPickerStateCopyWithImpl<
          _InitialInterestsPickerState>(this, _$identity);
}

abstract class _InitialInterestsPickerState
    implements InitialInterestsPickerState {
  const factory _InitialInterestsPickerState(
      {required Map<String, bool> termInitialInterestStatuses,
      required bool isSubmitting,
      required Option<Either<UserTermDataSourceEngagementFailure, Unit>>
          failureOrUpdateSuccessfulOption}) = _$_InitialInterestsPickerState;

  @override
  Map<String, bool> get termInitialInterestStatuses;
  @override
  bool get isSubmitting;
  @override
  Option<Either<UserTermDataSourceEngagementFailure, Unit>>
      get failureOrUpdateSuccessfulOption;
  @override
  @JsonKey(ignore: true)
  _$InitialInterestsPickerStateCopyWith<_InitialInterestsPickerState>
      get copyWith => throw _privateConstructorUsedError;
}
