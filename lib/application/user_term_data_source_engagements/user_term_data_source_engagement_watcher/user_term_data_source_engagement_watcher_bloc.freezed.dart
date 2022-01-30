// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_term_data_source_engagement_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserTermDataSourceEngagementWatcherEventTearOff {
  const _$UserTermDataSourceEngagementWatcherEventTearOff();

  _WatchingCancelled watchingCancelled() {
    return const _WatchingCancelled();
  }

  _GetForCurrentUserAndTermStarted getForCurrentUserAndTermStarted(
      String termId) {
    return _GetForCurrentUserAndTermStarted(
      termId,
    );
  }

  _WatchMostPopularTermsforCurrentUserStarted
      watchMostPopularTermsForCurrentUserStarted({int limit = 10}) {
    return _WatchMostPopularTermsforCurrentUserStarted(
      limit: limit,
    );
  }

  _WatchForCurrentUserTermsAndDataSourceStarted
      watchForCurrentUserTermsAndDataSourceStarted(
          KtList<String> termIds, String dataSourceId) {
    return _WatchForCurrentUserTermsAndDataSourceStarted(
      termIds,
      dataSourceId,
    );
  }

  _UserTermDataSourceEngagementsReceived userTermDataSourceEngagementsReceived(
      Either<UserTermDataSourceEngagementFailure,
              KtList<UserTermDataSourceEngagement>>
          failureOrUserTermDataSourceEngagements) {
    return _UserTermDataSourceEngagementsReceived(
      failureOrUserTermDataSourceEngagements,
    );
  }
}

/// @nodoc
const $UserTermDataSourceEngagementWatcherEvent =
    _$UserTermDataSourceEngagementWatcherEventTearOff();

/// @nodoc
mixin _$UserTermDataSourceEngagementWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchingCancelled,
    required TResult Function(String termId) getForCurrentUserAndTermStarted,
    required TResult Function(int limit)
        watchMostPopularTermsForCurrentUserStarted,
    required TResult Function(KtList<String> termIds, String dataSourceId)
        watchForCurrentUserTermsAndDataSourceStarted,
    required TResult Function(
            Either<UserTermDataSourceEngagementFailure,
                    KtList<UserTermDataSourceEngagement>>
                failureOrUserTermDataSourceEngagements)
        userTermDataSourceEngagementsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchingCancelled,
    TResult Function(String termId)? getForCurrentUserAndTermStarted,
    TResult Function(int limit)? watchMostPopularTermsForCurrentUserStarted,
    TResult Function(KtList<String> termIds, String dataSourceId)?
        watchForCurrentUserTermsAndDataSourceStarted,
    TResult Function(
            Either<UserTermDataSourceEngagementFailure,
                    KtList<UserTermDataSourceEngagement>>
                failureOrUserTermDataSourceEngagements)?
        userTermDataSourceEngagementsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchingCancelled,
    TResult Function(String termId)? getForCurrentUserAndTermStarted,
    TResult Function(int limit)? watchMostPopularTermsForCurrentUserStarted,
    TResult Function(KtList<String> termIds, String dataSourceId)?
        watchForCurrentUserTermsAndDataSourceStarted,
    TResult Function(
            Either<UserTermDataSourceEngagementFailure,
                    KtList<UserTermDataSourceEngagement>>
                failureOrUserTermDataSourceEngagements)?
        userTermDataSourceEngagementsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchingCancelled value) watchingCancelled,
    required TResult Function(_GetForCurrentUserAndTermStarted value)
        getForCurrentUserAndTermStarted,
    required TResult Function(_WatchMostPopularTermsforCurrentUserStarted value)
        watchMostPopularTermsForCurrentUserStarted,
    required TResult Function(
            _WatchForCurrentUserTermsAndDataSourceStarted value)
        watchForCurrentUserTermsAndDataSourceStarted,
    required TResult Function(_UserTermDataSourceEngagementsReceived value)
        userTermDataSourceEngagementsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchingCancelled value)? watchingCancelled,
    TResult Function(_GetForCurrentUserAndTermStarted value)?
        getForCurrentUserAndTermStarted,
    TResult Function(_WatchMostPopularTermsforCurrentUserStarted value)?
        watchMostPopularTermsForCurrentUserStarted,
    TResult Function(_WatchForCurrentUserTermsAndDataSourceStarted value)?
        watchForCurrentUserTermsAndDataSourceStarted,
    TResult Function(_UserTermDataSourceEngagementsReceived value)?
        userTermDataSourceEngagementsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchingCancelled value)? watchingCancelled,
    TResult Function(_GetForCurrentUserAndTermStarted value)?
        getForCurrentUserAndTermStarted,
    TResult Function(_WatchMostPopularTermsforCurrentUserStarted value)?
        watchMostPopularTermsForCurrentUserStarted,
    TResult Function(_WatchForCurrentUserTermsAndDataSourceStarted value)?
        watchForCurrentUserTermsAndDataSourceStarted,
    TResult Function(_UserTermDataSourceEngagementsReceived value)?
        userTermDataSourceEngagementsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTermDataSourceEngagementWatcherEventCopyWith<$Res> {
  factory $UserTermDataSourceEngagementWatcherEventCopyWith(
          UserTermDataSourceEngagementWatcherEvent value,
          $Res Function(UserTermDataSourceEngagementWatcherEvent) then) =
      _$UserTermDataSourceEngagementWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserTermDataSourceEngagementWatcherEventCopyWithImpl<$Res>
    implements $UserTermDataSourceEngagementWatcherEventCopyWith<$Res> {
  _$UserTermDataSourceEngagementWatcherEventCopyWithImpl(
      this._value, this._then);

  final UserTermDataSourceEngagementWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(UserTermDataSourceEngagementWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchingCancelledCopyWith<$Res> {
  factory _$WatchingCancelledCopyWith(
          _WatchingCancelled value, $Res Function(_WatchingCancelled) then) =
      __$WatchingCancelledCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchingCancelledCopyWithImpl<$Res>
    extends _$UserTermDataSourceEngagementWatcherEventCopyWithImpl<$Res>
    implements _$WatchingCancelledCopyWith<$Res> {
  __$WatchingCancelledCopyWithImpl(
      _WatchingCancelled _value, $Res Function(_WatchingCancelled) _then)
      : super(_value, (v) => _then(v as _WatchingCancelled));

  @override
  _WatchingCancelled get _value => super._value as _WatchingCancelled;
}

/// @nodoc

class _$_WatchingCancelled implements _WatchingCancelled {
  const _$_WatchingCancelled();

  @override
  String toString() {
    return 'UserTermDataSourceEngagementWatcherEvent.watchingCancelled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _WatchingCancelled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchingCancelled,
    required TResult Function(String termId) getForCurrentUserAndTermStarted,
    required TResult Function(int limit)
        watchMostPopularTermsForCurrentUserStarted,
    required TResult Function(KtList<String> termIds, String dataSourceId)
        watchForCurrentUserTermsAndDataSourceStarted,
    required TResult Function(
            Either<UserTermDataSourceEngagementFailure,
                    KtList<UserTermDataSourceEngagement>>
                failureOrUserTermDataSourceEngagements)
        userTermDataSourceEngagementsReceived,
  }) {
    return watchingCancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchingCancelled,
    TResult Function(String termId)? getForCurrentUserAndTermStarted,
    TResult Function(int limit)? watchMostPopularTermsForCurrentUserStarted,
    TResult Function(KtList<String> termIds, String dataSourceId)?
        watchForCurrentUserTermsAndDataSourceStarted,
    TResult Function(
            Either<UserTermDataSourceEngagementFailure,
                    KtList<UserTermDataSourceEngagement>>
                failureOrUserTermDataSourceEngagements)?
        userTermDataSourceEngagementsReceived,
  }) {
    return watchingCancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchingCancelled,
    TResult Function(String termId)? getForCurrentUserAndTermStarted,
    TResult Function(int limit)? watchMostPopularTermsForCurrentUserStarted,
    TResult Function(KtList<String> termIds, String dataSourceId)?
        watchForCurrentUserTermsAndDataSourceStarted,
    TResult Function(
            Either<UserTermDataSourceEngagementFailure,
                    KtList<UserTermDataSourceEngagement>>
                failureOrUserTermDataSourceEngagements)?
        userTermDataSourceEngagementsReceived,
    required TResult orElse(),
  }) {
    if (watchingCancelled != null) {
      return watchingCancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchingCancelled value) watchingCancelled,
    required TResult Function(_GetForCurrentUserAndTermStarted value)
        getForCurrentUserAndTermStarted,
    required TResult Function(_WatchMostPopularTermsforCurrentUserStarted value)
        watchMostPopularTermsForCurrentUserStarted,
    required TResult Function(
            _WatchForCurrentUserTermsAndDataSourceStarted value)
        watchForCurrentUserTermsAndDataSourceStarted,
    required TResult Function(_UserTermDataSourceEngagementsReceived value)
        userTermDataSourceEngagementsReceived,
  }) {
    return watchingCancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchingCancelled value)? watchingCancelled,
    TResult Function(_GetForCurrentUserAndTermStarted value)?
        getForCurrentUserAndTermStarted,
    TResult Function(_WatchMostPopularTermsforCurrentUserStarted value)?
        watchMostPopularTermsForCurrentUserStarted,
    TResult Function(_WatchForCurrentUserTermsAndDataSourceStarted value)?
        watchForCurrentUserTermsAndDataSourceStarted,
    TResult Function(_UserTermDataSourceEngagementsReceived value)?
        userTermDataSourceEngagementsReceived,
  }) {
    return watchingCancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchingCancelled value)? watchingCancelled,
    TResult Function(_GetForCurrentUserAndTermStarted value)?
        getForCurrentUserAndTermStarted,
    TResult Function(_WatchMostPopularTermsforCurrentUserStarted value)?
        watchMostPopularTermsForCurrentUserStarted,
    TResult Function(_WatchForCurrentUserTermsAndDataSourceStarted value)?
        watchForCurrentUserTermsAndDataSourceStarted,
    TResult Function(_UserTermDataSourceEngagementsReceived value)?
        userTermDataSourceEngagementsReceived,
    required TResult orElse(),
  }) {
    if (watchingCancelled != null) {
      return watchingCancelled(this);
    }
    return orElse();
  }
}

abstract class _WatchingCancelled
    implements UserTermDataSourceEngagementWatcherEvent {
  const factory _WatchingCancelled() = _$_WatchingCancelled;
}

/// @nodoc
abstract class _$GetForCurrentUserAndTermStartedCopyWith<$Res> {
  factory _$GetForCurrentUserAndTermStartedCopyWith(
          _GetForCurrentUserAndTermStarted value,
          $Res Function(_GetForCurrentUserAndTermStarted) then) =
      __$GetForCurrentUserAndTermStartedCopyWithImpl<$Res>;
  $Res call({String termId});
}

/// @nodoc
class __$GetForCurrentUserAndTermStartedCopyWithImpl<$Res>
    extends _$UserTermDataSourceEngagementWatcherEventCopyWithImpl<$Res>
    implements _$GetForCurrentUserAndTermStartedCopyWith<$Res> {
  __$GetForCurrentUserAndTermStartedCopyWithImpl(
      _GetForCurrentUserAndTermStarted _value,
      $Res Function(_GetForCurrentUserAndTermStarted) _then)
      : super(_value, (v) => _then(v as _GetForCurrentUserAndTermStarted));

  @override
  _GetForCurrentUserAndTermStarted get _value =>
      super._value as _GetForCurrentUserAndTermStarted;

  @override
  $Res call({
    Object? termId = freezed,
  }) {
    return _then(_GetForCurrentUserAndTermStarted(
      termId == freezed
          ? _value.termId
          : termId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetForCurrentUserAndTermStarted
    implements _GetForCurrentUserAndTermStarted {
  const _$_GetForCurrentUserAndTermStarted(this.termId);

  @override
  final String termId;

  @override
  String toString() {
    return 'UserTermDataSourceEngagementWatcherEvent.getForCurrentUserAndTermStarted(termId: $termId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetForCurrentUserAndTermStarted &&
            (identical(other.termId, termId) || other.termId == termId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, termId);

  @JsonKey(ignore: true)
  @override
  _$GetForCurrentUserAndTermStartedCopyWith<_GetForCurrentUserAndTermStarted>
      get copyWith => __$GetForCurrentUserAndTermStartedCopyWithImpl<
          _GetForCurrentUserAndTermStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchingCancelled,
    required TResult Function(String termId) getForCurrentUserAndTermStarted,
    required TResult Function(int limit)
        watchMostPopularTermsForCurrentUserStarted,
    required TResult Function(KtList<String> termIds, String dataSourceId)
        watchForCurrentUserTermsAndDataSourceStarted,
    required TResult Function(
            Either<UserTermDataSourceEngagementFailure,
                    KtList<UserTermDataSourceEngagement>>
                failureOrUserTermDataSourceEngagements)
        userTermDataSourceEngagementsReceived,
  }) {
    return getForCurrentUserAndTermStarted(termId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchingCancelled,
    TResult Function(String termId)? getForCurrentUserAndTermStarted,
    TResult Function(int limit)? watchMostPopularTermsForCurrentUserStarted,
    TResult Function(KtList<String> termIds, String dataSourceId)?
        watchForCurrentUserTermsAndDataSourceStarted,
    TResult Function(
            Either<UserTermDataSourceEngagementFailure,
                    KtList<UserTermDataSourceEngagement>>
                failureOrUserTermDataSourceEngagements)?
        userTermDataSourceEngagementsReceived,
  }) {
    return getForCurrentUserAndTermStarted?.call(termId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchingCancelled,
    TResult Function(String termId)? getForCurrentUserAndTermStarted,
    TResult Function(int limit)? watchMostPopularTermsForCurrentUserStarted,
    TResult Function(KtList<String> termIds, String dataSourceId)?
        watchForCurrentUserTermsAndDataSourceStarted,
    TResult Function(
            Either<UserTermDataSourceEngagementFailure,
                    KtList<UserTermDataSourceEngagement>>
                failureOrUserTermDataSourceEngagements)?
        userTermDataSourceEngagementsReceived,
    required TResult orElse(),
  }) {
    if (getForCurrentUserAndTermStarted != null) {
      return getForCurrentUserAndTermStarted(termId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchingCancelled value) watchingCancelled,
    required TResult Function(_GetForCurrentUserAndTermStarted value)
        getForCurrentUserAndTermStarted,
    required TResult Function(_WatchMostPopularTermsforCurrentUserStarted value)
        watchMostPopularTermsForCurrentUserStarted,
    required TResult Function(
            _WatchForCurrentUserTermsAndDataSourceStarted value)
        watchForCurrentUserTermsAndDataSourceStarted,
    required TResult Function(_UserTermDataSourceEngagementsReceived value)
        userTermDataSourceEngagementsReceived,
  }) {
    return getForCurrentUserAndTermStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchingCancelled value)? watchingCancelled,
    TResult Function(_GetForCurrentUserAndTermStarted value)?
        getForCurrentUserAndTermStarted,
    TResult Function(_WatchMostPopularTermsforCurrentUserStarted value)?
        watchMostPopularTermsForCurrentUserStarted,
    TResult Function(_WatchForCurrentUserTermsAndDataSourceStarted value)?
        watchForCurrentUserTermsAndDataSourceStarted,
    TResult Function(_UserTermDataSourceEngagementsReceived value)?
        userTermDataSourceEngagementsReceived,
  }) {
    return getForCurrentUserAndTermStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchingCancelled value)? watchingCancelled,
    TResult Function(_GetForCurrentUserAndTermStarted value)?
        getForCurrentUserAndTermStarted,
    TResult Function(_WatchMostPopularTermsforCurrentUserStarted value)?
        watchMostPopularTermsForCurrentUserStarted,
    TResult Function(_WatchForCurrentUserTermsAndDataSourceStarted value)?
        watchForCurrentUserTermsAndDataSourceStarted,
    TResult Function(_UserTermDataSourceEngagementsReceived value)?
        userTermDataSourceEngagementsReceived,
    required TResult orElse(),
  }) {
    if (getForCurrentUserAndTermStarted != null) {
      return getForCurrentUserAndTermStarted(this);
    }
    return orElse();
  }
}

abstract class _GetForCurrentUserAndTermStarted
    implements UserTermDataSourceEngagementWatcherEvent {
  const factory _GetForCurrentUserAndTermStarted(String termId) =
      _$_GetForCurrentUserAndTermStarted;

  String get termId;
  @JsonKey(ignore: true)
  _$GetForCurrentUserAndTermStartedCopyWith<_GetForCurrentUserAndTermStarted>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$WatchMostPopularTermsforCurrentUserStartedCopyWith<$Res> {
  factory _$WatchMostPopularTermsforCurrentUserStartedCopyWith(
          _WatchMostPopularTermsforCurrentUserStarted value,
          $Res Function(_WatchMostPopularTermsforCurrentUserStarted) then) =
      __$WatchMostPopularTermsforCurrentUserStartedCopyWithImpl<$Res>;
  $Res call({int limit});
}

/// @nodoc
class __$WatchMostPopularTermsforCurrentUserStartedCopyWithImpl<$Res>
    extends _$UserTermDataSourceEngagementWatcherEventCopyWithImpl<$Res>
    implements _$WatchMostPopularTermsforCurrentUserStartedCopyWith<$Res> {
  __$WatchMostPopularTermsforCurrentUserStartedCopyWithImpl(
      _WatchMostPopularTermsforCurrentUserStarted _value,
      $Res Function(_WatchMostPopularTermsforCurrentUserStarted) _then)
      : super(_value,
            (v) => _then(v as _WatchMostPopularTermsforCurrentUserStarted));

  @override
  _WatchMostPopularTermsforCurrentUserStarted get _value =>
      super._value as _WatchMostPopularTermsforCurrentUserStarted;

  @override
  $Res call({
    Object? limit = freezed,
  }) {
    return _then(_WatchMostPopularTermsforCurrentUserStarted(
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_WatchMostPopularTermsforCurrentUserStarted
    implements _WatchMostPopularTermsforCurrentUserStarted {
  const _$_WatchMostPopularTermsforCurrentUserStarted({this.limit = 10});

  @JsonKey(defaultValue: 10)
  @override
  final int limit;

  @override
  String toString() {
    return 'UserTermDataSourceEngagementWatcherEvent.watchMostPopularTermsForCurrentUserStarted(limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WatchMostPopularTermsforCurrentUserStarted &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, limit);

  @JsonKey(ignore: true)
  @override
  _$WatchMostPopularTermsforCurrentUserStartedCopyWith<
          _WatchMostPopularTermsforCurrentUserStarted>
      get copyWith => __$WatchMostPopularTermsforCurrentUserStartedCopyWithImpl<
          _WatchMostPopularTermsforCurrentUserStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchingCancelled,
    required TResult Function(String termId) getForCurrentUserAndTermStarted,
    required TResult Function(int limit)
        watchMostPopularTermsForCurrentUserStarted,
    required TResult Function(KtList<String> termIds, String dataSourceId)
        watchForCurrentUserTermsAndDataSourceStarted,
    required TResult Function(
            Either<UserTermDataSourceEngagementFailure,
                    KtList<UserTermDataSourceEngagement>>
                failureOrUserTermDataSourceEngagements)
        userTermDataSourceEngagementsReceived,
  }) {
    return watchMostPopularTermsForCurrentUserStarted(limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchingCancelled,
    TResult Function(String termId)? getForCurrentUserAndTermStarted,
    TResult Function(int limit)? watchMostPopularTermsForCurrentUserStarted,
    TResult Function(KtList<String> termIds, String dataSourceId)?
        watchForCurrentUserTermsAndDataSourceStarted,
    TResult Function(
            Either<UserTermDataSourceEngagementFailure,
                    KtList<UserTermDataSourceEngagement>>
                failureOrUserTermDataSourceEngagements)?
        userTermDataSourceEngagementsReceived,
  }) {
    return watchMostPopularTermsForCurrentUserStarted?.call(limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchingCancelled,
    TResult Function(String termId)? getForCurrentUserAndTermStarted,
    TResult Function(int limit)? watchMostPopularTermsForCurrentUserStarted,
    TResult Function(KtList<String> termIds, String dataSourceId)?
        watchForCurrentUserTermsAndDataSourceStarted,
    TResult Function(
            Either<UserTermDataSourceEngagementFailure,
                    KtList<UserTermDataSourceEngagement>>
                failureOrUserTermDataSourceEngagements)?
        userTermDataSourceEngagementsReceived,
    required TResult orElse(),
  }) {
    if (watchMostPopularTermsForCurrentUserStarted != null) {
      return watchMostPopularTermsForCurrentUserStarted(limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchingCancelled value) watchingCancelled,
    required TResult Function(_GetForCurrentUserAndTermStarted value)
        getForCurrentUserAndTermStarted,
    required TResult Function(_WatchMostPopularTermsforCurrentUserStarted value)
        watchMostPopularTermsForCurrentUserStarted,
    required TResult Function(
            _WatchForCurrentUserTermsAndDataSourceStarted value)
        watchForCurrentUserTermsAndDataSourceStarted,
    required TResult Function(_UserTermDataSourceEngagementsReceived value)
        userTermDataSourceEngagementsReceived,
  }) {
    return watchMostPopularTermsForCurrentUserStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchingCancelled value)? watchingCancelled,
    TResult Function(_GetForCurrentUserAndTermStarted value)?
        getForCurrentUserAndTermStarted,
    TResult Function(_WatchMostPopularTermsforCurrentUserStarted value)?
        watchMostPopularTermsForCurrentUserStarted,
    TResult Function(_WatchForCurrentUserTermsAndDataSourceStarted value)?
        watchForCurrentUserTermsAndDataSourceStarted,
    TResult Function(_UserTermDataSourceEngagementsReceived value)?
        userTermDataSourceEngagementsReceived,
  }) {
    return watchMostPopularTermsForCurrentUserStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchingCancelled value)? watchingCancelled,
    TResult Function(_GetForCurrentUserAndTermStarted value)?
        getForCurrentUserAndTermStarted,
    TResult Function(_WatchMostPopularTermsforCurrentUserStarted value)?
        watchMostPopularTermsForCurrentUserStarted,
    TResult Function(_WatchForCurrentUserTermsAndDataSourceStarted value)?
        watchForCurrentUserTermsAndDataSourceStarted,
    TResult Function(_UserTermDataSourceEngagementsReceived value)?
        userTermDataSourceEngagementsReceived,
    required TResult orElse(),
  }) {
    if (watchMostPopularTermsForCurrentUserStarted != null) {
      return watchMostPopularTermsForCurrentUserStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchMostPopularTermsforCurrentUserStarted
    implements UserTermDataSourceEngagementWatcherEvent {
  const factory _WatchMostPopularTermsforCurrentUserStarted({int limit}) =
      _$_WatchMostPopularTermsforCurrentUserStarted;

  int get limit;
  @JsonKey(ignore: true)
  _$WatchMostPopularTermsforCurrentUserStartedCopyWith<
          _WatchMostPopularTermsforCurrentUserStarted>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$WatchForCurrentUserTermsAndDataSourceStartedCopyWith<$Res> {
  factory _$WatchForCurrentUserTermsAndDataSourceStartedCopyWith(
          _WatchForCurrentUserTermsAndDataSourceStarted value,
          $Res Function(_WatchForCurrentUserTermsAndDataSourceStarted) then) =
      __$WatchForCurrentUserTermsAndDataSourceStartedCopyWithImpl<$Res>;
  $Res call({KtList<String> termIds, String dataSourceId});
}

/// @nodoc
class __$WatchForCurrentUserTermsAndDataSourceStartedCopyWithImpl<$Res>
    extends _$UserTermDataSourceEngagementWatcherEventCopyWithImpl<$Res>
    implements _$WatchForCurrentUserTermsAndDataSourceStartedCopyWith<$Res> {
  __$WatchForCurrentUserTermsAndDataSourceStartedCopyWithImpl(
      _WatchForCurrentUserTermsAndDataSourceStarted _value,
      $Res Function(_WatchForCurrentUserTermsAndDataSourceStarted) _then)
      : super(_value,
            (v) => _then(v as _WatchForCurrentUserTermsAndDataSourceStarted));

  @override
  _WatchForCurrentUserTermsAndDataSourceStarted get _value =>
      super._value as _WatchForCurrentUserTermsAndDataSourceStarted;

  @override
  $Res call({
    Object? termIds = freezed,
    Object? dataSourceId = freezed,
  }) {
    return _then(_WatchForCurrentUserTermsAndDataSourceStarted(
      termIds == freezed
          ? _value.termIds
          : termIds // ignore: cast_nullable_to_non_nullable
              as KtList<String>,
      dataSourceId == freezed
          ? _value.dataSourceId
          : dataSourceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WatchForCurrentUserTermsAndDataSourceStarted
    implements _WatchForCurrentUserTermsAndDataSourceStarted {
  const _$_WatchForCurrentUserTermsAndDataSourceStarted(
      this.termIds, this.dataSourceId);

  @override
  final KtList<String> termIds;
  @override
  final String dataSourceId;

  @override
  String toString() {
    return 'UserTermDataSourceEngagementWatcherEvent.watchForCurrentUserTermsAndDataSourceStarted(termIds: $termIds, dataSourceId: $dataSourceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WatchForCurrentUserTermsAndDataSourceStarted &&
            (identical(other.termIds, termIds) || other.termIds == termIds) &&
            (identical(other.dataSourceId, dataSourceId) ||
                other.dataSourceId == dataSourceId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, termIds, dataSourceId);

  @JsonKey(ignore: true)
  @override
  _$WatchForCurrentUserTermsAndDataSourceStartedCopyWith<
          _WatchForCurrentUserTermsAndDataSourceStarted>
      get copyWith =>
          __$WatchForCurrentUserTermsAndDataSourceStartedCopyWithImpl<
              _WatchForCurrentUserTermsAndDataSourceStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchingCancelled,
    required TResult Function(String termId) getForCurrentUserAndTermStarted,
    required TResult Function(int limit)
        watchMostPopularTermsForCurrentUserStarted,
    required TResult Function(KtList<String> termIds, String dataSourceId)
        watchForCurrentUserTermsAndDataSourceStarted,
    required TResult Function(
            Either<UserTermDataSourceEngagementFailure,
                    KtList<UserTermDataSourceEngagement>>
                failureOrUserTermDataSourceEngagements)
        userTermDataSourceEngagementsReceived,
  }) {
    return watchForCurrentUserTermsAndDataSourceStarted(termIds, dataSourceId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchingCancelled,
    TResult Function(String termId)? getForCurrentUserAndTermStarted,
    TResult Function(int limit)? watchMostPopularTermsForCurrentUserStarted,
    TResult Function(KtList<String> termIds, String dataSourceId)?
        watchForCurrentUserTermsAndDataSourceStarted,
    TResult Function(
            Either<UserTermDataSourceEngagementFailure,
                    KtList<UserTermDataSourceEngagement>>
                failureOrUserTermDataSourceEngagements)?
        userTermDataSourceEngagementsReceived,
  }) {
    return watchForCurrentUserTermsAndDataSourceStarted?.call(
        termIds, dataSourceId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchingCancelled,
    TResult Function(String termId)? getForCurrentUserAndTermStarted,
    TResult Function(int limit)? watchMostPopularTermsForCurrentUserStarted,
    TResult Function(KtList<String> termIds, String dataSourceId)?
        watchForCurrentUserTermsAndDataSourceStarted,
    TResult Function(
            Either<UserTermDataSourceEngagementFailure,
                    KtList<UserTermDataSourceEngagement>>
                failureOrUserTermDataSourceEngagements)?
        userTermDataSourceEngagementsReceived,
    required TResult orElse(),
  }) {
    if (watchForCurrentUserTermsAndDataSourceStarted != null) {
      return watchForCurrentUserTermsAndDataSourceStarted(
          termIds, dataSourceId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchingCancelled value) watchingCancelled,
    required TResult Function(_GetForCurrentUserAndTermStarted value)
        getForCurrentUserAndTermStarted,
    required TResult Function(_WatchMostPopularTermsforCurrentUserStarted value)
        watchMostPopularTermsForCurrentUserStarted,
    required TResult Function(
            _WatchForCurrentUserTermsAndDataSourceStarted value)
        watchForCurrentUserTermsAndDataSourceStarted,
    required TResult Function(_UserTermDataSourceEngagementsReceived value)
        userTermDataSourceEngagementsReceived,
  }) {
    return watchForCurrentUserTermsAndDataSourceStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchingCancelled value)? watchingCancelled,
    TResult Function(_GetForCurrentUserAndTermStarted value)?
        getForCurrentUserAndTermStarted,
    TResult Function(_WatchMostPopularTermsforCurrentUserStarted value)?
        watchMostPopularTermsForCurrentUserStarted,
    TResult Function(_WatchForCurrentUserTermsAndDataSourceStarted value)?
        watchForCurrentUserTermsAndDataSourceStarted,
    TResult Function(_UserTermDataSourceEngagementsReceived value)?
        userTermDataSourceEngagementsReceived,
  }) {
    return watchForCurrentUserTermsAndDataSourceStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchingCancelled value)? watchingCancelled,
    TResult Function(_GetForCurrentUserAndTermStarted value)?
        getForCurrentUserAndTermStarted,
    TResult Function(_WatchMostPopularTermsforCurrentUserStarted value)?
        watchMostPopularTermsForCurrentUserStarted,
    TResult Function(_WatchForCurrentUserTermsAndDataSourceStarted value)?
        watchForCurrentUserTermsAndDataSourceStarted,
    TResult Function(_UserTermDataSourceEngagementsReceived value)?
        userTermDataSourceEngagementsReceived,
    required TResult orElse(),
  }) {
    if (watchForCurrentUserTermsAndDataSourceStarted != null) {
      return watchForCurrentUserTermsAndDataSourceStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchForCurrentUserTermsAndDataSourceStarted
    implements UserTermDataSourceEngagementWatcherEvent {
  const factory _WatchForCurrentUserTermsAndDataSourceStarted(
          KtList<String> termIds, String dataSourceId) =
      _$_WatchForCurrentUserTermsAndDataSourceStarted;

  KtList<String> get termIds;
  String get dataSourceId;
  @JsonKey(ignore: true)
  _$WatchForCurrentUserTermsAndDataSourceStartedCopyWith<
          _WatchForCurrentUserTermsAndDataSourceStarted>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UserTermDataSourceEngagementsReceivedCopyWith<$Res> {
  factory _$UserTermDataSourceEngagementsReceivedCopyWith(
          _UserTermDataSourceEngagementsReceived value,
          $Res Function(_UserTermDataSourceEngagementsReceived) then) =
      __$UserTermDataSourceEngagementsReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<UserTermDataSourceEngagementFailure,
              KtList<UserTermDataSourceEngagement>>
          failureOrUserTermDataSourceEngagements});
}

/// @nodoc
class __$UserTermDataSourceEngagementsReceivedCopyWithImpl<$Res>
    extends _$UserTermDataSourceEngagementWatcherEventCopyWithImpl<$Res>
    implements _$UserTermDataSourceEngagementsReceivedCopyWith<$Res> {
  __$UserTermDataSourceEngagementsReceivedCopyWithImpl(
      _UserTermDataSourceEngagementsReceived _value,
      $Res Function(_UserTermDataSourceEngagementsReceived) _then)
      : super(
            _value, (v) => _then(v as _UserTermDataSourceEngagementsReceived));

  @override
  _UserTermDataSourceEngagementsReceived get _value =>
      super._value as _UserTermDataSourceEngagementsReceived;

  @override
  $Res call({
    Object? failureOrUserTermDataSourceEngagements = freezed,
  }) {
    return _then(_UserTermDataSourceEngagementsReceived(
      failureOrUserTermDataSourceEngagements == freezed
          ? _value.failureOrUserTermDataSourceEngagements
          : failureOrUserTermDataSourceEngagements // ignore: cast_nullable_to_non_nullable
              as Either<UserTermDataSourceEngagementFailure,
                  KtList<UserTermDataSourceEngagement>>,
    ));
  }
}

/// @nodoc

class _$_UserTermDataSourceEngagementsReceived
    implements _UserTermDataSourceEngagementsReceived {
  const _$_UserTermDataSourceEngagementsReceived(
      this.failureOrUserTermDataSourceEngagements);

  @override
  final Either<UserTermDataSourceEngagementFailure,
          KtList<UserTermDataSourceEngagement>>
      failureOrUserTermDataSourceEngagements;

  @override
  String toString() {
    return 'UserTermDataSourceEngagementWatcherEvent.userTermDataSourceEngagementsReceived(failureOrUserTermDataSourceEngagements: $failureOrUserTermDataSourceEngagements)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserTermDataSourceEngagementsReceived &&
            (identical(other.failureOrUserTermDataSourceEngagements,
                    failureOrUserTermDataSourceEngagements) ||
                other.failureOrUserTermDataSourceEngagements ==
                    failureOrUserTermDataSourceEngagements));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, failureOrUserTermDataSourceEngagements);

  @JsonKey(ignore: true)
  @override
  _$UserTermDataSourceEngagementsReceivedCopyWith<
          _UserTermDataSourceEngagementsReceived>
      get copyWith => __$UserTermDataSourceEngagementsReceivedCopyWithImpl<
          _UserTermDataSourceEngagementsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchingCancelled,
    required TResult Function(String termId) getForCurrentUserAndTermStarted,
    required TResult Function(int limit)
        watchMostPopularTermsForCurrentUserStarted,
    required TResult Function(KtList<String> termIds, String dataSourceId)
        watchForCurrentUserTermsAndDataSourceStarted,
    required TResult Function(
            Either<UserTermDataSourceEngagementFailure,
                    KtList<UserTermDataSourceEngagement>>
                failureOrUserTermDataSourceEngagements)
        userTermDataSourceEngagementsReceived,
  }) {
    return userTermDataSourceEngagementsReceived(
        failureOrUserTermDataSourceEngagements);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchingCancelled,
    TResult Function(String termId)? getForCurrentUserAndTermStarted,
    TResult Function(int limit)? watchMostPopularTermsForCurrentUserStarted,
    TResult Function(KtList<String> termIds, String dataSourceId)?
        watchForCurrentUserTermsAndDataSourceStarted,
    TResult Function(
            Either<UserTermDataSourceEngagementFailure,
                    KtList<UserTermDataSourceEngagement>>
                failureOrUserTermDataSourceEngagements)?
        userTermDataSourceEngagementsReceived,
  }) {
    return userTermDataSourceEngagementsReceived
        ?.call(failureOrUserTermDataSourceEngagements);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchingCancelled,
    TResult Function(String termId)? getForCurrentUserAndTermStarted,
    TResult Function(int limit)? watchMostPopularTermsForCurrentUserStarted,
    TResult Function(KtList<String> termIds, String dataSourceId)?
        watchForCurrentUserTermsAndDataSourceStarted,
    TResult Function(
            Either<UserTermDataSourceEngagementFailure,
                    KtList<UserTermDataSourceEngagement>>
                failureOrUserTermDataSourceEngagements)?
        userTermDataSourceEngagementsReceived,
    required TResult orElse(),
  }) {
    if (userTermDataSourceEngagementsReceived != null) {
      return userTermDataSourceEngagementsReceived(
          failureOrUserTermDataSourceEngagements);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchingCancelled value) watchingCancelled,
    required TResult Function(_GetForCurrentUserAndTermStarted value)
        getForCurrentUserAndTermStarted,
    required TResult Function(_WatchMostPopularTermsforCurrentUserStarted value)
        watchMostPopularTermsForCurrentUserStarted,
    required TResult Function(
            _WatchForCurrentUserTermsAndDataSourceStarted value)
        watchForCurrentUserTermsAndDataSourceStarted,
    required TResult Function(_UserTermDataSourceEngagementsReceived value)
        userTermDataSourceEngagementsReceived,
  }) {
    return userTermDataSourceEngagementsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchingCancelled value)? watchingCancelled,
    TResult Function(_GetForCurrentUserAndTermStarted value)?
        getForCurrentUserAndTermStarted,
    TResult Function(_WatchMostPopularTermsforCurrentUserStarted value)?
        watchMostPopularTermsForCurrentUserStarted,
    TResult Function(_WatchForCurrentUserTermsAndDataSourceStarted value)?
        watchForCurrentUserTermsAndDataSourceStarted,
    TResult Function(_UserTermDataSourceEngagementsReceived value)?
        userTermDataSourceEngagementsReceived,
  }) {
    return userTermDataSourceEngagementsReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchingCancelled value)? watchingCancelled,
    TResult Function(_GetForCurrentUserAndTermStarted value)?
        getForCurrentUserAndTermStarted,
    TResult Function(_WatchMostPopularTermsforCurrentUserStarted value)?
        watchMostPopularTermsForCurrentUserStarted,
    TResult Function(_WatchForCurrentUserTermsAndDataSourceStarted value)?
        watchForCurrentUserTermsAndDataSourceStarted,
    TResult Function(_UserTermDataSourceEngagementsReceived value)?
        userTermDataSourceEngagementsReceived,
    required TResult orElse(),
  }) {
    if (userTermDataSourceEngagementsReceived != null) {
      return userTermDataSourceEngagementsReceived(this);
    }
    return orElse();
  }
}

abstract class _UserTermDataSourceEngagementsReceived
    implements UserTermDataSourceEngagementWatcherEvent {
  const factory _UserTermDataSourceEngagementsReceived(
          Either<UserTermDataSourceEngagementFailure,
                  KtList<UserTermDataSourceEngagement>>
              failureOrUserTermDataSourceEngagements) =
      _$_UserTermDataSourceEngagementsReceived;

  Either<UserTermDataSourceEngagementFailure,
          KtList<UserTermDataSourceEngagement>>
      get failureOrUserTermDataSourceEngagements;
  @JsonKey(ignore: true)
  _$UserTermDataSourceEngagementsReceivedCopyWith<
          _UserTermDataSourceEngagementsReceived>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$UserTermDataSourceEngagementWatcherStateTearOff {
  const _$UserTermDataSourceEngagementWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(
      KtList<UserTermDataSourceEngagement> userTermDataSourceEngagements) {
    return _LoadSuccess(
      userTermDataSourceEngagements,
    );
  }

  _LoadFailure loadFailure(
      UserTermDataSourceEngagementFailure userTermDataSourceEngagementFailure) {
    return _LoadFailure(
      userTermDataSourceEngagementFailure,
    );
  }
}

/// @nodoc
const $UserTermDataSourceEngagementWatcherState =
    _$UserTermDataSourceEngagementWatcherStateTearOff();

/// @nodoc
mixin _$UserTermDataSourceEngagementWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(
            KtList<UserTermDataSourceEngagement> userTermDataSourceEngagements)
        loadSuccess,
    required TResult Function(
            UserTermDataSourceEngagementFailure
                userTermDataSourceEngagementFailure)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            KtList<UserTermDataSourceEngagement> userTermDataSourceEngagements)?
        loadSuccess,
    TResult Function(
            UserTermDataSourceEngagementFailure
                userTermDataSourceEngagementFailure)?
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            KtList<UserTermDataSourceEngagement> userTermDataSourceEngagements)?
        loadSuccess,
    TResult Function(
            UserTermDataSourceEngagementFailure
                userTermDataSourceEngagementFailure)?
        loadFailure,
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
abstract class $UserTermDataSourceEngagementWatcherStateCopyWith<$Res> {
  factory $UserTermDataSourceEngagementWatcherStateCopyWith(
          UserTermDataSourceEngagementWatcherState value,
          $Res Function(UserTermDataSourceEngagementWatcherState) then) =
      _$UserTermDataSourceEngagementWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserTermDataSourceEngagementWatcherStateCopyWithImpl<$Res>
    implements $UserTermDataSourceEngagementWatcherStateCopyWith<$Res> {
  _$UserTermDataSourceEngagementWatcherStateCopyWithImpl(
      this._value, this._then);

  final UserTermDataSourceEngagementWatcherState _value;
  // ignore: unused_field
  final $Res Function(UserTermDataSourceEngagementWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$UserTermDataSourceEngagementWatcherStateCopyWithImpl<$Res>
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
    return 'UserTermDataSourceEngagementWatcherState.initial()';
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
    required TResult Function(
            KtList<UserTermDataSourceEngagement> userTermDataSourceEngagements)
        loadSuccess,
    required TResult Function(
            UserTermDataSourceEngagementFailure
                userTermDataSourceEngagementFailure)
        loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            KtList<UserTermDataSourceEngagement> userTermDataSourceEngagements)?
        loadSuccess,
    TResult Function(
            UserTermDataSourceEngagementFailure
                userTermDataSourceEngagementFailure)?
        loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            KtList<UserTermDataSourceEngagement> userTermDataSourceEngagements)?
        loadSuccess,
    TResult Function(
            UserTermDataSourceEngagementFailure
                userTermDataSourceEngagementFailure)?
        loadFailure,
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

abstract class _Initial implements UserTermDataSourceEngagementWatcherState {
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
    extends _$UserTermDataSourceEngagementWatcherStateCopyWithImpl<$Res>
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
    return 'UserTermDataSourceEngagementWatcherState.loadInProgress()';
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
    required TResult Function(
            KtList<UserTermDataSourceEngagement> userTermDataSourceEngagements)
        loadSuccess,
    required TResult Function(
            UserTermDataSourceEngagementFailure
                userTermDataSourceEngagementFailure)
        loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            KtList<UserTermDataSourceEngagement> userTermDataSourceEngagements)?
        loadSuccess,
    TResult Function(
            UserTermDataSourceEngagementFailure
                userTermDataSourceEngagementFailure)?
        loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            KtList<UserTermDataSourceEngagement> userTermDataSourceEngagements)?
        loadSuccess,
    TResult Function(
            UserTermDataSourceEngagementFailure
                userTermDataSourceEngagementFailure)?
        loadFailure,
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

abstract class _LoadInProgress
    implements UserTermDataSourceEngagementWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call(
      {KtList<UserTermDataSourceEngagement> userTermDataSourceEngagements});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$UserTermDataSourceEngagementWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? userTermDataSourceEngagements = freezed,
  }) {
    return _then(_LoadSuccess(
      userTermDataSourceEngagements == freezed
          ? _value.userTermDataSourceEngagements
          : userTermDataSourceEngagements // ignore: cast_nullable_to_non_nullable
              as KtList<UserTermDataSourceEngagement>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.userTermDataSourceEngagements);

  @override
  final KtList<UserTermDataSourceEngagement> userTermDataSourceEngagements;

  @override
  String toString() {
    return 'UserTermDataSourceEngagementWatcherState.loadSuccess(userTermDataSourceEngagements: $userTermDataSourceEngagements)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadSuccess &&
            (identical(other.userTermDataSourceEngagements,
                    userTermDataSourceEngagements) ||
                other.userTermDataSourceEngagements ==
                    userTermDataSourceEngagements));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userTermDataSourceEngagements);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(
            KtList<UserTermDataSourceEngagement> userTermDataSourceEngagements)
        loadSuccess,
    required TResult Function(
            UserTermDataSourceEngagementFailure
                userTermDataSourceEngagementFailure)
        loadFailure,
  }) {
    return loadSuccess(userTermDataSourceEngagements);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            KtList<UserTermDataSourceEngagement> userTermDataSourceEngagements)?
        loadSuccess,
    TResult Function(
            UserTermDataSourceEngagementFailure
                userTermDataSourceEngagementFailure)?
        loadFailure,
  }) {
    return loadSuccess?.call(userTermDataSourceEngagements);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            KtList<UserTermDataSourceEngagement> userTermDataSourceEngagements)?
        loadSuccess,
    TResult Function(
            UserTermDataSourceEngagementFailure
                userTermDataSourceEngagementFailure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(userTermDataSourceEngagements);
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

abstract class _LoadSuccess
    implements UserTermDataSourceEngagementWatcherState {
  const factory _LoadSuccess(
          KtList<UserTermDataSourceEngagement> userTermDataSourceEngagements) =
      _$_LoadSuccess;

  KtList<UserTermDataSourceEngagement> get userTermDataSourceEngagements;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call(
      {UserTermDataSourceEngagementFailure
          userTermDataSourceEngagementFailure});

  $UserTermDataSourceEngagementFailureCopyWith<$Res>
      get userTermDataSourceEngagementFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$UserTermDataSourceEngagementWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? userTermDataSourceEngagementFailure = freezed,
  }) {
    return _then(_LoadFailure(
      userTermDataSourceEngagementFailure == freezed
          ? _value.userTermDataSourceEngagementFailure
          : userTermDataSourceEngagementFailure // ignore: cast_nullable_to_non_nullable
              as UserTermDataSourceEngagementFailure,
    ));
  }

  @override
  $UserTermDataSourceEngagementFailureCopyWith<$Res>
      get userTermDataSourceEngagementFailure {
    return $UserTermDataSourceEngagementFailureCopyWith<$Res>(
        _value.userTermDataSourceEngagementFailure, (value) {
      return _then(_value.copyWith(userTermDataSourceEngagementFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.userTermDataSourceEngagementFailure);

  @override
  final UserTermDataSourceEngagementFailure userTermDataSourceEngagementFailure;

  @override
  String toString() {
    return 'UserTermDataSourceEngagementWatcherState.loadFailure(userTermDataSourceEngagementFailure: $userTermDataSourceEngagementFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadFailure &&
            (identical(other.userTermDataSourceEngagementFailure,
                    userTermDataSourceEngagementFailure) ||
                other.userTermDataSourceEngagementFailure ==
                    userTermDataSourceEngagementFailure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userTermDataSourceEngagementFailure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(
            KtList<UserTermDataSourceEngagement> userTermDataSourceEngagements)
        loadSuccess,
    required TResult Function(
            UserTermDataSourceEngagementFailure
                userTermDataSourceEngagementFailure)
        loadFailure,
  }) {
    return loadFailure(userTermDataSourceEngagementFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            KtList<UserTermDataSourceEngagement> userTermDataSourceEngagements)?
        loadSuccess,
    TResult Function(
            UserTermDataSourceEngagementFailure
                userTermDataSourceEngagementFailure)?
        loadFailure,
  }) {
    return loadFailure?.call(userTermDataSourceEngagementFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            KtList<UserTermDataSourceEngagement> userTermDataSourceEngagements)?
        loadSuccess,
    TResult Function(
            UserTermDataSourceEngagementFailure
                userTermDataSourceEngagementFailure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(userTermDataSourceEngagementFailure);
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

abstract class _LoadFailure
    implements UserTermDataSourceEngagementWatcherState {
  const factory _LoadFailure(
      UserTermDataSourceEngagementFailure
          userTermDataSourceEngagementFailure) = _$_LoadFailure;

  UserTermDataSourceEngagementFailure get userTermDataSourceEngagementFailure;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
