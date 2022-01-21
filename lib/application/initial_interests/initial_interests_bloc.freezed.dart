// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'initial_interests_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InitialInterestsEventTearOff {
  const _$InitialInterestsEventTearOff();

  _Started started() {
    return const _Started();
  }

  _GetMostPopularTermsStarted getMostPopularTermsStarted({int limit = 100}) {
    return _GetMostPopularTermsStarted(
      limit: limit,
    );
  }

  _InterestsReceived interestsReceived(
      Either<TermEngagementFailure, KtList<TermEngagement>>
          failureOrTermEngagements) {
    return _InterestsReceived(
      failureOrTermEngagements,
    );
  }
}

/// @nodoc
const $InitialInterestsEvent = _$InitialInterestsEventTearOff();

/// @nodoc
mixin _$InitialInterestsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int limit) getMostPopularTermsStarted,
    required TResult Function(
            Either<TermEngagementFailure, KtList<TermEngagement>>
                failureOrTermEngagements)
        interestsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int limit)? getMostPopularTermsStarted,
    TResult Function(
            Either<TermEngagementFailure, KtList<TermEngagement>>
                failureOrTermEngagements)?
        interestsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int limit)? getMostPopularTermsStarted,
    TResult Function(
            Either<TermEngagementFailure, KtList<TermEngagement>>
                failureOrTermEngagements)?
        interestsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetMostPopularTermsStarted value)
        getMostPopularTermsStarted,
    required TResult Function(_InterestsReceived value) interestsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetMostPopularTermsStarted value)?
        getMostPopularTermsStarted,
    TResult Function(_InterestsReceived value)? interestsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetMostPopularTermsStarted value)?
        getMostPopularTermsStarted,
    TResult Function(_InterestsReceived value)? interestsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitialInterestsEventCopyWith<$Res> {
  factory $InitialInterestsEventCopyWith(InitialInterestsEvent value,
          $Res Function(InitialInterestsEvent) then) =
      _$InitialInterestsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialInterestsEventCopyWithImpl<$Res>
    implements $InitialInterestsEventCopyWith<$Res> {
  _$InitialInterestsEventCopyWithImpl(this._value, this._then);

  final InitialInterestsEvent _value;
  // ignore: unused_field
  final $Res Function(InitialInterestsEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$InitialInterestsEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'InitialInterestsEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int limit) getMostPopularTermsStarted,
    required TResult Function(
            Either<TermEngagementFailure, KtList<TermEngagement>>
                failureOrTermEngagements)
        interestsReceived,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int limit)? getMostPopularTermsStarted,
    TResult Function(
            Either<TermEngagementFailure, KtList<TermEngagement>>
                failureOrTermEngagements)?
        interestsReceived,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int limit)? getMostPopularTermsStarted,
    TResult Function(
            Either<TermEngagementFailure, KtList<TermEngagement>>
                failureOrTermEngagements)?
        interestsReceived,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetMostPopularTermsStarted value)
        getMostPopularTermsStarted,
    required TResult Function(_InterestsReceived value) interestsReceived,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetMostPopularTermsStarted value)?
        getMostPopularTermsStarted,
    TResult Function(_InterestsReceived value)? interestsReceived,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetMostPopularTermsStarted value)?
        getMostPopularTermsStarted,
    TResult Function(_InterestsReceived value)? interestsReceived,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements InitialInterestsEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$GetMostPopularTermsStartedCopyWith<$Res> {
  factory _$GetMostPopularTermsStartedCopyWith(
          _GetMostPopularTermsStarted value,
          $Res Function(_GetMostPopularTermsStarted) then) =
      __$GetMostPopularTermsStartedCopyWithImpl<$Res>;
  $Res call({int limit});
}

/// @nodoc
class __$GetMostPopularTermsStartedCopyWithImpl<$Res>
    extends _$InitialInterestsEventCopyWithImpl<$Res>
    implements _$GetMostPopularTermsStartedCopyWith<$Res> {
  __$GetMostPopularTermsStartedCopyWithImpl(_GetMostPopularTermsStarted _value,
      $Res Function(_GetMostPopularTermsStarted) _then)
      : super(_value, (v) => _then(v as _GetMostPopularTermsStarted));

  @override
  _GetMostPopularTermsStarted get _value =>
      super._value as _GetMostPopularTermsStarted;

  @override
  $Res call({
    Object? limit = freezed,
  }) {
    return _then(_GetMostPopularTermsStarted(
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetMostPopularTermsStarted implements _GetMostPopularTermsStarted {
  const _$_GetMostPopularTermsStarted({this.limit = 100});

  @JsonKey(defaultValue: 100)
  @override
  final int limit;

  @override
  String toString() {
    return 'InitialInterestsEvent.getMostPopularTermsStarted(limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetMostPopularTermsStarted &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, limit);

  @JsonKey(ignore: true)
  @override
  _$GetMostPopularTermsStartedCopyWith<_GetMostPopularTermsStarted>
      get copyWith => __$GetMostPopularTermsStartedCopyWithImpl<
          _GetMostPopularTermsStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int limit) getMostPopularTermsStarted,
    required TResult Function(
            Either<TermEngagementFailure, KtList<TermEngagement>>
                failureOrTermEngagements)
        interestsReceived,
  }) {
    return getMostPopularTermsStarted(limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int limit)? getMostPopularTermsStarted,
    TResult Function(
            Either<TermEngagementFailure, KtList<TermEngagement>>
                failureOrTermEngagements)?
        interestsReceived,
  }) {
    return getMostPopularTermsStarted?.call(limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int limit)? getMostPopularTermsStarted,
    TResult Function(
            Either<TermEngagementFailure, KtList<TermEngagement>>
                failureOrTermEngagements)?
        interestsReceived,
    required TResult orElse(),
  }) {
    if (getMostPopularTermsStarted != null) {
      return getMostPopularTermsStarted(limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetMostPopularTermsStarted value)
        getMostPopularTermsStarted,
    required TResult Function(_InterestsReceived value) interestsReceived,
  }) {
    return getMostPopularTermsStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetMostPopularTermsStarted value)?
        getMostPopularTermsStarted,
    TResult Function(_InterestsReceived value)? interestsReceived,
  }) {
    return getMostPopularTermsStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetMostPopularTermsStarted value)?
        getMostPopularTermsStarted,
    TResult Function(_InterestsReceived value)? interestsReceived,
    required TResult orElse(),
  }) {
    if (getMostPopularTermsStarted != null) {
      return getMostPopularTermsStarted(this);
    }
    return orElse();
  }
}

abstract class _GetMostPopularTermsStarted implements InitialInterestsEvent {
  const factory _GetMostPopularTermsStarted({int limit}) =
      _$_GetMostPopularTermsStarted;

  int get limit;
  @JsonKey(ignore: true)
  _$GetMostPopularTermsStartedCopyWith<_GetMostPopularTermsStarted>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InterestsReceivedCopyWith<$Res> {
  factory _$InterestsReceivedCopyWith(
          _InterestsReceived value, $Res Function(_InterestsReceived) then) =
      __$InterestsReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<TermEngagementFailure, KtList<TermEngagement>>
          failureOrTermEngagements});
}

/// @nodoc
class __$InterestsReceivedCopyWithImpl<$Res>
    extends _$InitialInterestsEventCopyWithImpl<$Res>
    implements _$InterestsReceivedCopyWith<$Res> {
  __$InterestsReceivedCopyWithImpl(
      _InterestsReceived _value, $Res Function(_InterestsReceived) _then)
      : super(_value, (v) => _then(v as _InterestsReceived));

  @override
  _InterestsReceived get _value => super._value as _InterestsReceived;

  @override
  $Res call({
    Object? failureOrTermEngagements = freezed,
  }) {
    return _then(_InterestsReceived(
      failureOrTermEngagements == freezed
          ? _value.failureOrTermEngagements
          : failureOrTermEngagements // ignore: cast_nullable_to_non_nullable
              as Either<TermEngagementFailure, KtList<TermEngagement>>,
    ));
  }
}

/// @nodoc

class _$_InterestsReceived implements _InterestsReceived {
  const _$_InterestsReceived(this.failureOrTermEngagements);

  @override
  final Either<TermEngagementFailure, KtList<TermEngagement>>
      failureOrTermEngagements;

  @override
  String toString() {
    return 'InitialInterestsEvent.interestsReceived(failureOrTermEngagements: $failureOrTermEngagements)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InterestsReceived &&
            (identical(
                    other.failureOrTermEngagements, failureOrTermEngagements) ||
                other.failureOrTermEngagements == failureOrTermEngagements));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrTermEngagements);

  @JsonKey(ignore: true)
  @override
  _$InterestsReceivedCopyWith<_InterestsReceived> get copyWith =>
      __$InterestsReceivedCopyWithImpl<_InterestsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int limit) getMostPopularTermsStarted,
    required TResult Function(
            Either<TermEngagementFailure, KtList<TermEngagement>>
                failureOrTermEngagements)
        interestsReceived,
  }) {
    return interestsReceived(failureOrTermEngagements);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int limit)? getMostPopularTermsStarted,
    TResult Function(
            Either<TermEngagementFailure, KtList<TermEngagement>>
                failureOrTermEngagements)?
        interestsReceived,
  }) {
    return interestsReceived?.call(failureOrTermEngagements);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int limit)? getMostPopularTermsStarted,
    TResult Function(
            Either<TermEngagementFailure, KtList<TermEngagement>>
                failureOrTermEngagements)?
        interestsReceived,
    required TResult orElse(),
  }) {
    if (interestsReceived != null) {
      return interestsReceived(failureOrTermEngagements);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetMostPopularTermsStarted value)
        getMostPopularTermsStarted,
    required TResult Function(_InterestsReceived value) interestsReceived,
  }) {
    return interestsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetMostPopularTermsStarted value)?
        getMostPopularTermsStarted,
    TResult Function(_InterestsReceived value)? interestsReceived,
  }) {
    return interestsReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetMostPopularTermsStarted value)?
        getMostPopularTermsStarted,
    TResult Function(_InterestsReceived value)? interestsReceived,
    required TResult orElse(),
  }) {
    if (interestsReceived != null) {
      return interestsReceived(this);
    }
    return orElse();
  }
}

abstract class _InterestsReceived implements InitialInterestsEvent {
  const factory _InterestsReceived(
      Either<TermEngagementFailure, KtList<TermEngagement>>
          failureOrTermEngagements) = _$_InterestsReceived;

  Either<TermEngagementFailure, KtList<TermEngagement>>
      get failureOrTermEngagements;
  @JsonKey(ignore: true)
  _$InterestsReceivedCopyWith<_InterestsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$InitialInterestsStateTearOff {
  const _$InitialInterestsStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(KtList<TermEngagement> termEngagements) {
    return _LoadSuccess(
      termEngagements,
    );
  }

  _LoadFailure loadFailure(TermEngagementFailure termEngagementFailure) {
    return _LoadFailure(
      termEngagementFailure,
    );
  }
}

/// @nodoc
const $InitialInterestsState = _$InitialInterestsStateTearOff();

/// @nodoc
mixin _$InitialInterestsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<TermEngagement> termEngagements)
        loadSuccess,
    required TResult Function(TermEngagementFailure termEngagementFailure)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<TermEngagement> termEngagements)? loadSuccess,
    TResult Function(TermEngagementFailure termEngagementFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<TermEngagement> termEngagements)? loadSuccess,
    TResult Function(TermEngagementFailure termEngagementFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitialInterestsStateCopyWith<$Res> {
  factory $InitialInterestsStateCopyWith(InitialInterestsState value,
          $Res Function(InitialInterestsState) then) =
      _$InitialInterestsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialInterestsStateCopyWithImpl<$Res>
    implements $InitialInterestsStateCopyWith<$Res> {
  _$InitialInterestsStateCopyWithImpl(this._value, this._then);

  final InitialInterestsState _value;
  // ignore: unused_field
  final $Res Function(InitialInterestsState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$InitialInterestsStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'InitialInterestsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<TermEngagement> termEngagements)
        loadSuccess,
    required TResult Function(TermEngagementFailure termEngagementFailure)
        loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<TermEngagement> termEngagements)? loadSuccess,
    TResult Function(TermEngagementFailure termEngagementFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<TermEngagement> termEngagements)? loadSuccess,
    TResult Function(TermEngagementFailure termEngagementFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements InitialInterestsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$InitialInterestsStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'InitialInterestsState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<TermEngagement> termEngagements)
        loadSuccess,
    required TResult Function(TermEngagementFailure termEngagementFailure)
        loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<TermEngagement> termEngagements)? loadSuccess,
    TResult Function(TermEngagementFailure termEngagementFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<TermEngagement> termEngagements)? loadSuccess,
    TResult Function(TermEngagementFailure termEngagementFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements InitialInterestsState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<TermEngagement> termEngagements});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$InitialInterestsStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? termEngagements = freezed,
  }) {
    return _then(_LoadSuccess(
      termEngagements == freezed
          ? _value.termEngagements
          : termEngagements // ignore: cast_nullable_to_non_nullable
              as KtList<TermEngagement>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.termEngagements);

  @override
  final KtList<TermEngagement> termEngagements;

  @override
  String toString() {
    return 'InitialInterestsState.loadSuccess(termEngagements: $termEngagements)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadSuccess &&
            (identical(other.termEngagements, termEngagements) ||
                other.termEngagements == termEngagements));
  }

  @override
  int get hashCode => Object.hash(runtimeType, termEngagements);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<TermEngagement> termEngagements)
        loadSuccess,
    required TResult Function(TermEngagementFailure termEngagementFailure)
        loadFailure,
  }) {
    return loadSuccess(termEngagements);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<TermEngagement> termEngagements)? loadSuccess,
    TResult Function(TermEngagementFailure termEngagementFailure)? loadFailure,
  }) {
    return loadSuccess?.call(termEngagements);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<TermEngagement> termEngagements)? loadSuccess,
    TResult Function(TermEngagementFailure termEngagementFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(termEngagements);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements InitialInterestsState {
  const factory _LoadSuccess(KtList<TermEngagement> termEngagements) =
      _$_LoadSuccess;

  KtList<TermEngagement> get termEngagements;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({TermEngagementFailure termEngagementFailure});

  $TermEngagementFailureCopyWith<$Res> get termEngagementFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$InitialInterestsStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? termEngagementFailure = freezed,
  }) {
    return _then(_LoadFailure(
      termEngagementFailure == freezed
          ? _value.termEngagementFailure
          : termEngagementFailure // ignore: cast_nullable_to_non_nullable
              as TermEngagementFailure,
    ));
  }

  @override
  $TermEngagementFailureCopyWith<$Res> get termEngagementFailure {
    return $TermEngagementFailureCopyWith<$Res>(_value.termEngagementFailure,
        (value) {
      return _then(_value.copyWith(termEngagementFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.termEngagementFailure);

  @override
  final TermEngagementFailure termEngagementFailure;

  @override
  String toString() {
    return 'InitialInterestsState.loadFailure(termEngagementFailure: $termEngagementFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadFailure &&
            (identical(other.termEngagementFailure, termEngagementFailure) ||
                other.termEngagementFailure == termEngagementFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, termEngagementFailure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<TermEngagement> termEngagements)
        loadSuccess,
    required TResult Function(TermEngagementFailure termEngagementFailure)
        loadFailure,
  }) {
    return loadFailure(termEngagementFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<TermEngagement> termEngagements)? loadSuccess,
    TResult Function(TermEngagementFailure termEngagementFailure)? loadFailure,
  }) {
    return loadFailure?.call(termEngagementFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<TermEngagement> termEngagements)? loadSuccess,
    TResult Function(TermEngagementFailure termEngagementFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(termEngagementFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements InitialInterestsState {
  const factory _LoadFailure(TermEngagementFailure termEngagementFailure) =
      _$_LoadFailure;

  TermEngagementFailure get termEngagementFailure;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
