// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'topic_details_charts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TopicDetailsChartsEventTearOff {
  const _$TopicDetailsChartsEventTearOff();

  _EngagementChanged engagementChanged(String engagementType) {
    return _EngagementChanged(
      engagementType,
    );
  }

  _TermChanged termChanged(String termId) {
    return _TermChanged(
      termId,
    );
  }
}

/// @nodoc
const $TopicDetailsChartsEvent = _$TopicDetailsChartsEventTearOff();

/// @nodoc
mixin _$TopicDetailsChartsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String engagementType) engagementChanged,
    required TResult Function(String termId) termChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String engagementType)? engagementChanged,
    TResult Function(String termId)? termChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String engagementType)? engagementChanged,
    TResult Function(String termId)? termChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EngagementChanged value) engagementChanged,
    required TResult Function(_TermChanged value) termChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EngagementChanged value)? engagementChanged,
    TResult Function(_TermChanged value)? termChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EngagementChanged value)? engagementChanged,
    TResult Function(_TermChanged value)? termChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicDetailsChartsEventCopyWith<$Res> {
  factory $TopicDetailsChartsEventCopyWith(TopicDetailsChartsEvent value,
          $Res Function(TopicDetailsChartsEvent) then) =
      _$TopicDetailsChartsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TopicDetailsChartsEventCopyWithImpl<$Res>
    implements $TopicDetailsChartsEventCopyWith<$Res> {
  _$TopicDetailsChartsEventCopyWithImpl(this._value, this._then);

  final TopicDetailsChartsEvent _value;
  // ignore: unused_field
  final $Res Function(TopicDetailsChartsEvent) _then;
}

/// @nodoc
abstract class _$EngagementChangedCopyWith<$Res> {
  factory _$EngagementChangedCopyWith(
          _EngagementChanged value, $Res Function(_EngagementChanged) then) =
      __$EngagementChangedCopyWithImpl<$Res>;
  $Res call({String engagementType});
}

/// @nodoc
class __$EngagementChangedCopyWithImpl<$Res>
    extends _$TopicDetailsChartsEventCopyWithImpl<$Res>
    implements _$EngagementChangedCopyWith<$Res> {
  __$EngagementChangedCopyWithImpl(
      _EngagementChanged _value, $Res Function(_EngagementChanged) _then)
      : super(_value, (v) => _then(v as _EngagementChanged));

  @override
  _EngagementChanged get _value => super._value as _EngagementChanged;

  @override
  $Res call({
    Object? engagementType = freezed,
  }) {
    return _then(_EngagementChanged(
      engagementType == freezed
          ? _value.engagementType
          : engagementType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EngagementChanged implements _EngagementChanged {
  const _$_EngagementChanged(this.engagementType);

  @override
  final String engagementType;

  @override
  String toString() {
    return 'TopicDetailsChartsEvent.engagementChanged(engagementType: $engagementType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EngagementChanged &&
            (identical(other.engagementType, engagementType) ||
                other.engagementType == engagementType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, engagementType);

  @JsonKey(ignore: true)
  @override
  _$EngagementChangedCopyWith<_EngagementChanged> get copyWith =>
      __$EngagementChangedCopyWithImpl<_EngagementChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String engagementType) engagementChanged,
    required TResult Function(String termId) termChanged,
  }) {
    return engagementChanged(engagementType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String engagementType)? engagementChanged,
    TResult Function(String termId)? termChanged,
  }) {
    return engagementChanged?.call(engagementType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String engagementType)? engagementChanged,
    TResult Function(String termId)? termChanged,
    required TResult orElse(),
  }) {
    if (engagementChanged != null) {
      return engagementChanged(engagementType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EngagementChanged value) engagementChanged,
    required TResult Function(_TermChanged value) termChanged,
  }) {
    return engagementChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EngagementChanged value)? engagementChanged,
    TResult Function(_TermChanged value)? termChanged,
  }) {
    return engagementChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EngagementChanged value)? engagementChanged,
    TResult Function(_TermChanged value)? termChanged,
    required TResult orElse(),
  }) {
    if (engagementChanged != null) {
      return engagementChanged(this);
    }
    return orElse();
  }
}

abstract class _EngagementChanged implements TopicDetailsChartsEvent {
  const factory _EngagementChanged(String engagementType) =
      _$_EngagementChanged;

  String get engagementType;
  @JsonKey(ignore: true)
  _$EngagementChangedCopyWith<_EngagementChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TermChangedCopyWith<$Res> {
  factory _$TermChangedCopyWith(
          _TermChanged value, $Res Function(_TermChanged) then) =
      __$TermChangedCopyWithImpl<$Res>;
  $Res call({String termId});
}

/// @nodoc
class __$TermChangedCopyWithImpl<$Res>
    extends _$TopicDetailsChartsEventCopyWithImpl<$Res>
    implements _$TermChangedCopyWith<$Res> {
  __$TermChangedCopyWithImpl(
      _TermChanged _value, $Res Function(_TermChanged) _then)
      : super(_value, (v) => _then(v as _TermChanged));

  @override
  _TermChanged get _value => super._value as _TermChanged;

  @override
  $Res call({
    Object? termId = freezed,
  }) {
    return _then(_TermChanged(
      termId == freezed
          ? _value.termId
          : termId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TermChanged implements _TermChanged {
  const _$_TermChanged(this.termId);

  @override
  final String termId;

  @override
  String toString() {
    return 'TopicDetailsChartsEvent.termChanged(termId: $termId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TermChanged &&
            (identical(other.termId, termId) || other.termId == termId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, termId);

  @JsonKey(ignore: true)
  @override
  _$TermChangedCopyWith<_TermChanged> get copyWith =>
      __$TermChangedCopyWithImpl<_TermChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String engagementType) engagementChanged,
    required TResult Function(String termId) termChanged,
  }) {
    return termChanged(termId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String engagementType)? engagementChanged,
    TResult Function(String termId)? termChanged,
  }) {
    return termChanged?.call(termId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String engagementType)? engagementChanged,
    TResult Function(String termId)? termChanged,
    required TResult orElse(),
  }) {
    if (termChanged != null) {
      return termChanged(termId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EngagementChanged value) engagementChanged,
    required TResult Function(_TermChanged value) termChanged,
  }) {
    return termChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EngagementChanged value)? engagementChanged,
    TResult Function(_TermChanged value)? termChanged,
  }) {
    return termChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EngagementChanged value)? engagementChanged,
    TResult Function(_TermChanged value)? termChanged,
    required TResult orElse(),
  }) {
    if (termChanged != null) {
      return termChanged(this);
    }
    return orElse();
  }
}

abstract class _TermChanged implements TopicDetailsChartsEvent {
  const factory _TermChanged(String termId) = _$_TermChanged;

  String get termId;
  @JsonKey(ignore: true)
  _$TermChangedCopyWith<_TermChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TopicDetailsChartsStateTearOff {
  const _$TopicDetailsChartsStateTearOff();

  _TopicDetailsChartsState call(
      {required String currentEngagementType, required String currentTermId}) {
    return _TopicDetailsChartsState(
      currentEngagementType: currentEngagementType,
      currentTermId: currentTermId,
    );
  }
}

/// @nodoc
const $TopicDetailsChartsState = _$TopicDetailsChartsStateTearOff();

/// @nodoc
mixin _$TopicDetailsChartsState {
  String get currentEngagementType => throw _privateConstructorUsedError;
  String get currentTermId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TopicDetailsChartsStateCopyWith<TopicDetailsChartsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicDetailsChartsStateCopyWith<$Res> {
  factory $TopicDetailsChartsStateCopyWith(TopicDetailsChartsState value,
          $Res Function(TopicDetailsChartsState) then) =
      _$TopicDetailsChartsStateCopyWithImpl<$Res>;
  $Res call({String currentEngagementType, String currentTermId});
}

/// @nodoc
class _$TopicDetailsChartsStateCopyWithImpl<$Res>
    implements $TopicDetailsChartsStateCopyWith<$Res> {
  _$TopicDetailsChartsStateCopyWithImpl(this._value, this._then);

  final TopicDetailsChartsState _value;
  // ignore: unused_field
  final $Res Function(TopicDetailsChartsState) _then;

  @override
  $Res call({
    Object? currentEngagementType = freezed,
    Object? currentTermId = freezed,
  }) {
    return _then(_value.copyWith(
      currentEngagementType: currentEngagementType == freezed
          ? _value.currentEngagementType
          : currentEngagementType // ignore: cast_nullable_to_non_nullable
              as String,
      currentTermId: currentTermId == freezed
          ? _value.currentTermId
          : currentTermId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TopicDetailsChartsStateCopyWith<$Res>
    implements $TopicDetailsChartsStateCopyWith<$Res> {
  factory _$TopicDetailsChartsStateCopyWith(_TopicDetailsChartsState value,
          $Res Function(_TopicDetailsChartsState) then) =
      __$TopicDetailsChartsStateCopyWithImpl<$Res>;
  @override
  $Res call({String currentEngagementType, String currentTermId});
}

/// @nodoc
class __$TopicDetailsChartsStateCopyWithImpl<$Res>
    extends _$TopicDetailsChartsStateCopyWithImpl<$Res>
    implements _$TopicDetailsChartsStateCopyWith<$Res> {
  __$TopicDetailsChartsStateCopyWithImpl(_TopicDetailsChartsState _value,
      $Res Function(_TopicDetailsChartsState) _then)
      : super(_value, (v) => _then(v as _TopicDetailsChartsState));

  @override
  _TopicDetailsChartsState get _value =>
      super._value as _TopicDetailsChartsState;

  @override
  $Res call({
    Object? currentEngagementType = freezed,
    Object? currentTermId = freezed,
  }) {
    return _then(_TopicDetailsChartsState(
      currentEngagementType: currentEngagementType == freezed
          ? _value.currentEngagementType
          : currentEngagementType // ignore: cast_nullable_to_non_nullable
              as String,
      currentTermId: currentTermId == freezed
          ? _value.currentTermId
          : currentTermId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TopicDetailsChartsState implements _TopicDetailsChartsState {
  const _$_TopicDetailsChartsState(
      {required this.currentEngagementType, required this.currentTermId});

  @override
  final String currentEngagementType;
  @override
  final String currentTermId;

  @override
  String toString() {
    return 'TopicDetailsChartsState(currentEngagementType: $currentEngagementType, currentTermId: $currentTermId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TopicDetailsChartsState &&
            (identical(other.currentEngagementType, currentEngagementType) ||
                other.currentEngagementType == currentEngagementType) &&
            (identical(other.currentTermId, currentTermId) ||
                other.currentTermId == currentTermId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, currentEngagementType, currentTermId);

  @JsonKey(ignore: true)
  @override
  _$TopicDetailsChartsStateCopyWith<_TopicDetailsChartsState> get copyWith =>
      __$TopicDetailsChartsStateCopyWithImpl<_TopicDetailsChartsState>(
          this, _$identity);
}

abstract class _TopicDetailsChartsState implements TopicDetailsChartsState {
  const factory _TopicDetailsChartsState(
      {required String currentEngagementType,
      required String currentTermId}) = _$_TopicDetailsChartsState;

  @override
  String get currentEngagementType;
  @override
  String get currentTermId;
  @override
  @JsonKey(ignore: true)
  _$TopicDetailsChartsStateCopyWith<_TopicDetailsChartsState> get copyWith =>
      throw _privateConstructorUsedError;
}
