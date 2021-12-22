// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recommendation_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RecommendationWatcherEventTearOff {
  const _$RecommendationWatcherEventTearOff();

  _WatchAllForCurrentUserStarted watchAllForCurrentUserStarted() {
    return const _WatchAllForCurrentUserStarted();
  }

  _WatchSpecificRecommendationsForCurrentUserStarted
      watchSpecificRecommendationsForCurrentUserStarted(
          List<String> recommendationIds) {
    return _WatchSpecificRecommendationsForCurrentUserStarted(
      recommendationIds,
    );
  }

  _RecommendationsReceived recommendationsReceived(
      dynamic failureOrRecommendations) {
    return _RecommendationsReceived(
      failureOrRecommendations,
    );
  }
}

/// @nodoc
const $RecommendationWatcherEvent = _$RecommendationWatcherEventTearOff();

/// @nodoc
mixin _$RecommendationWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllForCurrentUserStarted,
    required TResult Function(List<String> recommendationIds)
        watchSpecificRecommendationsForCurrentUserStarted,
    required TResult Function(dynamic failureOrRecommendations)
        recommendationsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchAllForCurrentUserStarted,
    TResult Function(List<String> recommendationIds)?
        watchSpecificRecommendationsForCurrentUserStarted,
    TResult Function(dynamic failureOrRecommendations)? recommendationsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllForCurrentUserStarted,
    TResult Function(List<String> recommendationIds)?
        watchSpecificRecommendationsForCurrentUserStarted,
    TResult Function(dynamic failureOrRecommendations)? recommendationsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllForCurrentUserStarted value)
        watchAllForCurrentUserStarted,
    required TResult Function(
            _WatchSpecificRecommendationsForCurrentUserStarted value)
        watchSpecificRecommendationsForCurrentUserStarted,
    required TResult Function(_RecommendationsReceived value)
        recommendationsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAllForCurrentUserStarted value)?
        watchAllForCurrentUserStarted,
    TResult Function(_WatchSpecificRecommendationsForCurrentUserStarted value)?
        watchSpecificRecommendationsForCurrentUserStarted,
    TResult Function(_RecommendationsReceived value)? recommendationsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllForCurrentUserStarted value)?
        watchAllForCurrentUserStarted,
    TResult Function(_WatchSpecificRecommendationsForCurrentUserStarted value)?
        watchSpecificRecommendationsForCurrentUserStarted,
    TResult Function(_RecommendationsReceived value)? recommendationsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendationWatcherEventCopyWith<$Res> {
  factory $RecommendationWatcherEventCopyWith(RecommendationWatcherEvent value,
          $Res Function(RecommendationWatcherEvent) then) =
      _$RecommendationWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RecommendationWatcherEventCopyWithImpl<$Res>
    implements $RecommendationWatcherEventCopyWith<$Res> {
  _$RecommendationWatcherEventCopyWithImpl(this._value, this._then);

  final RecommendationWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(RecommendationWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchAllForCurrentUserStartedCopyWith<$Res> {
  factory _$WatchAllForCurrentUserStartedCopyWith(
          _WatchAllForCurrentUserStarted value,
          $Res Function(_WatchAllForCurrentUserStarted) then) =
      __$WatchAllForCurrentUserStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAllForCurrentUserStartedCopyWithImpl<$Res>
    extends _$RecommendationWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllForCurrentUserStartedCopyWith<$Res> {
  __$WatchAllForCurrentUserStartedCopyWithImpl(
      _WatchAllForCurrentUserStarted _value,
      $Res Function(_WatchAllForCurrentUserStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllForCurrentUserStarted));

  @override
  _WatchAllForCurrentUserStarted get _value =>
      super._value as _WatchAllForCurrentUserStarted;
}

/// @nodoc

class _$_WatchAllForCurrentUserStarted
    implements _WatchAllForCurrentUserStarted {
  const _$_WatchAllForCurrentUserStarted();

  @override
  String toString() {
    return 'RecommendationWatcherEvent.watchAllForCurrentUserStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WatchAllForCurrentUserStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllForCurrentUserStarted,
    required TResult Function(List<String> recommendationIds)
        watchSpecificRecommendationsForCurrentUserStarted,
    required TResult Function(dynamic failureOrRecommendations)
        recommendationsReceived,
  }) {
    return watchAllForCurrentUserStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchAllForCurrentUserStarted,
    TResult Function(List<String> recommendationIds)?
        watchSpecificRecommendationsForCurrentUserStarted,
    TResult Function(dynamic failureOrRecommendations)? recommendationsReceived,
  }) {
    return watchAllForCurrentUserStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllForCurrentUserStarted,
    TResult Function(List<String> recommendationIds)?
        watchSpecificRecommendationsForCurrentUserStarted,
    TResult Function(dynamic failureOrRecommendations)? recommendationsReceived,
    required TResult orElse(),
  }) {
    if (watchAllForCurrentUserStarted != null) {
      return watchAllForCurrentUserStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllForCurrentUserStarted value)
        watchAllForCurrentUserStarted,
    required TResult Function(
            _WatchSpecificRecommendationsForCurrentUserStarted value)
        watchSpecificRecommendationsForCurrentUserStarted,
    required TResult Function(_RecommendationsReceived value)
        recommendationsReceived,
  }) {
    return watchAllForCurrentUserStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAllForCurrentUserStarted value)?
        watchAllForCurrentUserStarted,
    TResult Function(_WatchSpecificRecommendationsForCurrentUserStarted value)?
        watchSpecificRecommendationsForCurrentUserStarted,
    TResult Function(_RecommendationsReceived value)? recommendationsReceived,
  }) {
    return watchAllForCurrentUserStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllForCurrentUserStarted value)?
        watchAllForCurrentUserStarted,
    TResult Function(_WatchSpecificRecommendationsForCurrentUserStarted value)?
        watchSpecificRecommendationsForCurrentUserStarted,
    TResult Function(_RecommendationsReceived value)? recommendationsReceived,
    required TResult orElse(),
  }) {
    if (watchAllForCurrentUserStarted != null) {
      return watchAllForCurrentUserStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllForCurrentUserStarted
    implements RecommendationWatcherEvent {
  const factory _WatchAllForCurrentUserStarted() =
      _$_WatchAllForCurrentUserStarted;
}

/// @nodoc
abstract class _$WatchSpecificRecommendationsForCurrentUserStartedCopyWith<
    $Res> {
  factory _$WatchSpecificRecommendationsForCurrentUserStartedCopyWith(
          _WatchSpecificRecommendationsForCurrentUserStarted value,
          $Res Function(_WatchSpecificRecommendationsForCurrentUserStarted)
              then) =
      __$WatchSpecificRecommendationsForCurrentUserStartedCopyWithImpl<$Res>;
  $Res call({List<String> recommendationIds});
}

/// @nodoc
class __$WatchSpecificRecommendationsForCurrentUserStartedCopyWithImpl<$Res>
    extends _$RecommendationWatcherEventCopyWithImpl<$Res>
    implements
        _$WatchSpecificRecommendationsForCurrentUserStartedCopyWith<$Res> {
  __$WatchSpecificRecommendationsForCurrentUserStartedCopyWithImpl(
      _WatchSpecificRecommendationsForCurrentUserStarted _value,
      $Res Function(_WatchSpecificRecommendationsForCurrentUserStarted) _then)
      : super(
            _value,
            (v) =>
                _then(v as _WatchSpecificRecommendationsForCurrentUserStarted));

  @override
  _WatchSpecificRecommendationsForCurrentUserStarted get _value =>
      super._value as _WatchSpecificRecommendationsForCurrentUserStarted;

  @override
  $Res call({
    Object? recommendationIds = freezed,
  }) {
    return _then(_WatchSpecificRecommendationsForCurrentUserStarted(
      recommendationIds == freezed
          ? _value.recommendationIds
          : recommendationIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_WatchSpecificRecommendationsForCurrentUserStarted
    implements _WatchSpecificRecommendationsForCurrentUserStarted {
  const _$_WatchSpecificRecommendationsForCurrentUserStarted(
      this.recommendationIds);

  @override
  final List<String> recommendationIds;

  @override
  String toString() {
    return 'RecommendationWatcherEvent.watchSpecificRecommendationsForCurrentUserStarted(recommendationIds: $recommendationIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WatchSpecificRecommendationsForCurrentUserStarted &&
            const DeepCollectionEquality()
                .equals(other.recommendationIds, recommendationIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(recommendationIds));

  @JsonKey(ignore: true)
  @override
  _$WatchSpecificRecommendationsForCurrentUserStartedCopyWith<
          _WatchSpecificRecommendationsForCurrentUserStarted>
      get copyWith =>
          __$WatchSpecificRecommendationsForCurrentUserStartedCopyWithImpl<
                  _WatchSpecificRecommendationsForCurrentUserStarted>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllForCurrentUserStarted,
    required TResult Function(List<String> recommendationIds)
        watchSpecificRecommendationsForCurrentUserStarted,
    required TResult Function(dynamic failureOrRecommendations)
        recommendationsReceived,
  }) {
    return watchSpecificRecommendationsForCurrentUserStarted(recommendationIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchAllForCurrentUserStarted,
    TResult Function(List<String> recommendationIds)?
        watchSpecificRecommendationsForCurrentUserStarted,
    TResult Function(dynamic failureOrRecommendations)? recommendationsReceived,
  }) {
    return watchSpecificRecommendationsForCurrentUserStarted
        ?.call(recommendationIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllForCurrentUserStarted,
    TResult Function(List<String> recommendationIds)?
        watchSpecificRecommendationsForCurrentUserStarted,
    TResult Function(dynamic failureOrRecommendations)? recommendationsReceived,
    required TResult orElse(),
  }) {
    if (watchSpecificRecommendationsForCurrentUserStarted != null) {
      return watchSpecificRecommendationsForCurrentUserStarted(
          recommendationIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllForCurrentUserStarted value)
        watchAllForCurrentUserStarted,
    required TResult Function(
            _WatchSpecificRecommendationsForCurrentUserStarted value)
        watchSpecificRecommendationsForCurrentUserStarted,
    required TResult Function(_RecommendationsReceived value)
        recommendationsReceived,
  }) {
    return watchSpecificRecommendationsForCurrentUserStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAllForCurrentUserStarted value)?
        watchAllForCurrentUserStarted,
    TResult Function(_WatchSpecificRecommendationsForCurrentUserStarted value)?
        watchSpecificRecommendationsForCurrentUserStarted,
    TResult Function(_RecommendationsReceived value)? recommendationsReceived,
  }) {
    return watchSpecificRecommendationsForCurrentUserStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllForCurrentUserStarted value)?
        watchAllForCurrentUserStarted,
    TResult Function(_WatchSpecificRecommendationsForCurrentUserStarted value)?
        watchSpecificRecommendationsForCurrentUserStarted,
    TResult Function(_RecommendationsReceived value)? recommendationsReceived,
    required TResult orElse(),
  }) {
    if (watchSpecificRecommendationsForCurrentUserStarted != null) {
      return watchSpecificRecommendationsForCurrentUserStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchSpecificRecommendationsForCurrentUserStarted
    implements RecommendationWatcherEvent {
  const factory _WatchSpecificRecommendationsForCurrentUserStarted(
          List<String> recommendationIds) =
      _$_WatchSpecificRecommendationsForCurrentUserStarted;

  List<String> get recommendationIds;
  @JsonKey(ignore: true)
  _$WatchSpecificRecommendationsForCurrentUserStartedCopyWith<
          _WatchSpecificRecommendationsForCurrentUserStarted>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RecommendationsReceivedCopyWith<$Res> {
  factory _$RecommendationsReceivedCopyWith(_RecommendationsReceived value,
          $Res Function(_RecommendationsReceived) then) =
      __$RecommendationsReceivedCopyWithImpl<$Res>;
  $Res call({dynamic failureOrRecommendations});
}

/// @nodoc
class __$RecommendationsReceivedCopyWithImpl<$Res>
    extends _$RecommendationWatcherEventCopyWithImpl<$Res>
    implements _$RecommendationsReceivedCopyWith<$Res> {
  __$RecommendationsReceivedCopyWithImpl(_RecommendationsReceived _value,
      $Res Function(_RecommendationsReceived) _then)
      : super(_value, (v) => _then(v as _RecommendationsReceived));

  @override
  _RecommendationsReceived get _value =>
      super._value as _RecommendationsReceived;

  @override
  $Res call({
    Object? failureOrRecommendations = freezed,
  }) {
    return _then(_RecommendationsReceived(
      failureOrRecommendations == freezed
          ? _value.failureOrRecommendations
          : failureOrRecommendations,
    ));
  }
}

/// @nodoc

class _$_RecommendationsReceived implements _RecommendationsReceived {
  const _$_RecommendationsReceived(this.failureOrRecommendations);

  @override
  final dynamic failureOrRecommendations;

  @override
  String toString() {
    return 'RecommendationWatcherEvent.recommendationsReceived(failureOrRecommendations: $failureOrRecommendations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RecommendationsReceived &&
            const DeepCollectionEquality().equals(
                other.failureOrRecommendations, failureOrRecommendations));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(failureOrRecommendations));

  @JsonKey(ignore: true)
  @override
  _$RecommendationsReceivedCopyWith<_RecommendationsReceived> get copyWith =>
      __$RecommendationsReceivedCopyWithImpl<_RecommendationsReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllForCurrentUserStarted,
    required TResult Function(List<String> recommendationIds)
        watchSpecificRecommendationsForCurrentUserStarted,
    required TResult Function(dynamic failureOrRecommendations)
        recommendationsReceived,
  }) {
    return recommendationsReceived(failureOrRecommendations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchAllForCurrentUserStarted,
    TResult Function(List<String> recommendationIds)?
        watchSpecificRecommendationsForCurrentUserStarted,
    TResult Function(dynamic failureOrRecommendations)? recommendationsReceived,
  }) {
    return recommendationsReceived?.call(failureOrRecommendations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllForCurrentUserStarted,
    TResult Function(List<String> recommendationIds)?
        watchSpecificRecommendationsForCurrentUserStarted,
    TResult Function(dynamic failureOrRecommendations)? recommendationsReceived,
    required TResult orElse(),
  }) {
    if (recommendationsReceived != null) {
      return recommendationsReceived(failureOrRecommendations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllForCurrentUserStarted value)
        watchAllForCurrentUserStarted,
    required TResult Function(
            _WatchSpecificRecommendationsForCurrentUserStarted value)
        watchSpecificRecommendationsForCurrentUserStarted,
    required TResult Function(_RecommendationsReceived value)
        recommendationsReceived,
  }) {
    return recommendationsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAllForCurrentUserStarted value)?
        watchAllForCurrentUserStarted,
    TResult Function(_WatchSpecificRecommendationsForCurrentUserStarted value)?
        watchSpecificRecommendationsForCurrentUserStarted,
    TResult Function(_RecommendationsReceived value)? recommendationsReceived,
  }) {
    return recommendationsReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllForCurrentUserStarted value)?
        watchAllForCurrentUserStarted,
    TResult Function(_WatchSpecificRecommendationsForCurrentUserStarted value)?
        watchSpecificRecommendationsForCurrentUserStarted,
    TResult Function(_RecommendationsReceived value)? recommendationsReceived,
    required TResult orElse(),
  }) {
    if (recommendationsReceived != null) {
      return recommendationsReceived(this);
    }
    return orElse();
  }
}

abstract class _RecommendationsReceived implements RecommendationWatcherEvent {
  const factory _RecommendationsReceived(dynamic failureOrRecommendations) =
      _$_RecommendationsReceived;

  dynamic get failureOrRecommendations;
  @JsonKey(ignore: true)
  _$RecommendationsReceivedCopyWith<_RecommendationsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RecommendationWatcherStateTearOff {
  const _$RecommendationWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(dynamic recommendations) {
    return _LoadSuccess(
      recommendations,
    );
  }

  _LoadFailure loadFailure(RecommendationFailure recommendationFailure) {
    return _LoadFailure(
      recommendationFailure,
    );
  }
}

/// @nodoc
const $RecommendationWatcherState = _$RecommendationWatcherStateTearOff();

/// @nodoc
mixin _$RecommendationWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(dynamic recommendations) loadSuccess,
    required TResult Function(RecommendationFailure recommendationFailure)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(dynamic recommendations)? loadSuccess,
    TResult Function(RecommendationFailure recommendationFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(dynamic recommendations)? loadSuccess,
    TResult Function(RecommendationFailure recommendationFailure)? loadFailure,
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
abstract class $RecommendationWatcherStateCopyWith<$Res> {
  factory $RecommendationWatcherStateCopyWith(RecommendationWatcherState value,
          $Res Function(RecommendationWatcherState) then) =
      _$RecommendationWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RecommendationWatcherStateCopyWithImpl<$Res>
    implements $RecommendationWatcherStateCopyWith<$Res> {
  _$RecommendationWatcherStateCopyWithImpl(this._value, this._then);

  final RecommendationWatcherState _value;
  // ignore: unused_field
  final $Res Function(RecommendationWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$RecommendationWatcherStateCopyWithImpl<$Res>
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
    return 'RecommendationWatcherState.initial()';
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
    required TResult Function(dynamic recommendations) loadSuccess,
    required TResult Function(RecommendationFailure recommendationFailure)
        loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(dynamic recommendations)? loadSuccess,
    TResult Function(RecommendationFailure recommendationFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(dynamic recommendations)? loadSuccess,
    TResult Function(RecommendationFailure recommendationFailure)? loadFailure,
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

abstract class _Initial implements RecommendationWatcherState {
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
    extends _$RecommendationWatcherStateCopyWithImpl<$Res>
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
    return 'RecommendationWatcherState.loadInProgress()';
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
    required TResult Function(dynamic recommendations) loadSuccess,
    required TResult Function(RecommendationFailure recommendationFailure)
        loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(dynamic recommendations)? loadSuccess,
    TResult Function(RecommendationFailure recommendationFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(dynamic recommendations)? loadSuccess,
    TResult Function(RecommendationFailure recommendationFailure)? loadFailure,
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

abstract class _LoadInProgress implements RecommendationWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({dynamic recommendations});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$RecommendationWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? recommendations = freezed,
  }) {
    return _then(_LoadSuccess(
      recommendations == freezed ? _value.recommendations : recommendations,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.recommendations);

  @override
  final dynamic recommendations;

  @override
  String toString() {
    return 'RecommendationWatcherState.loadSuccess(recommendations: $recommendations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadSuccess &&
            const DeepCollectionEquality()
                .equals(other.recommendations, recommendations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(recommendations));

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(dynamic recommendations) loadSuccess,
    required TResult Function(RecommendationFailure recommendationFailure)
        loadFailure,
  }) {
    return loadSuccess(recommendations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(dynamic recommendations)? loadSuccess,
    TResult Function(RecommendationFailure recommendationFailure)? loadFailure,
  }) {
    return loadSuccess?.call(recommendations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(dynamic recommendations)? loadSuccess,
    TResult Function(RecommendationFailure recommendationFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(recommendations);
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

abstract class _LoadSuccess implements RecommendationWatcherState {
  const factory _LoadSuccess(dynamic recommendations) = _$_LoadSuccess;

  dynamic get recommendations;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({RecommendationFailure recommendationFailure});
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$RecommendationWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? recommendationFailure = freezed,
  }) {
    return _then(_LoadFailure(
      recommendationFailure == freezed
          ? _value.recommendationFailure
          : recommendationFailure // ignore: cast_nullable_to_non_nullable
              as RecommendationFailure,
    ));
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.recommendationFailure);

  @override
  final RecommendationFailure recommendationFailure;

  @override
  String toString() {
    return 'RecommendationWatcherState.loadFailure(recommendationFailure: $recommendationFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadFailure &&
            const DeepCollectionEquality()
                .equals(other.recommendationFailure, recommendationFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(recommendationFailure));

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(dynamic recommendations) loadSuccess,
    required TResult Function(RecommendationFailure recommendationFailure)
        loadFailure,
  }) {
    return loadFailure(recommendationFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(dynamic recommendations)? loadSuccess,
    TResult Function(RecommendationFailure recommendationFailure)? loadFailure,
  }) {
    return loadFailure?.call(recommendationFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(dynamic recommendations)? loadSuccess,
    TResult Function(RecommendationFailure recommendationFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(recommendationFailure);
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

abstract class _LoadFailure implements RecommendationWatcherState {
  const factory _LoadFailure(RecommendationFailure recommendationFailure) =
      _$_LoadFailure;

  RecommendationFailure get recommendationFailure;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
