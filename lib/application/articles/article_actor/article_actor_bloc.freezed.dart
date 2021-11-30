// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'article_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ArticleActorEventTearOff {
  const _$ArticleActorEventTearOff();

  _Started started() {
    return const _Started();
  }

  _Liked liked() {
    return const _Liked();
  }
}

/// @nodoc
const $ArticleActorEvent = _$ArticleActorEventTearOff();

/// @nodoc
mixin _$ArticleActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() liked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? liked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? liked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Liked value) liked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Liked value)? liked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Liked value)? liked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleActorEventCopyWith<$Res> {
  factory $ArticleActorEventCopyWith(
          ArticleActorEvent value, $Res Function(ArticleActorEvent) then) =
      _$ArticleActorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ArticleActorEventCopyWithImpl<$Res>
    implements $ArticleActorEventCopyWith<$Res> {
  _$ArticleActorEventCopyWithImpl(this._value, this._then);

  final ArticleActorEvent _value;
  // ignore: unused_field
  final $Res Function(ArticleActorEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$ArticleActorEventCopyWithImpl<$Res>
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
    return 'ArticleActorEvent.started()';
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
    required TResult Function() liked,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? liked,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? liked,
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
    required TResult Function(_Liked value) liked,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Liked value)? liked,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Liked value)? liked,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ArticleActorEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$LikedCopyWith<$Res> {
  factory _$LikedCopyWith(_Liked value, $Res Function(_Liked) then) =
      __$LikedCopyWithImpl<$Res>;
}

/// @nodoc
class __$LikedCopyWithImpl<$Res> extends _$ArticleActorEventCopyWithImpl<$Res>
    implements _$LikedCopyWith<$Res> {
  __$LikedCopyWithImpl(_Liked _value, $Res Function(_Liked) _then)
      : super(_value, (v) => _then(v as _Liked));

  @override
  _Liked get _value => super._value as _Liked;
}

/// @nodoc

class _$_Liked implements _Liked {
  const _$_Liked();

  @override
  String toString() {
    return 'ArticleActorEvent.liked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Liked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() liked,
  }) {
    return liked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? liked,
  }) {
    return liked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? liked,
    required TResult orElse(),
  }) {
    if (liked != null) {
      return liked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Liked value) liked,
  }) {
    return liked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Liked value)? liked,
  }) {
    return liked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Liked value)? liked,
    required TResult orElse(),
  }) {
    if (liked != null) {
      return liked(this);
    }
    return orElse();
  }
}

abstract class _Liked implements ArticleActorEvent {
  const factory _Liked() = _$_Liked;
}

/// @nodoc
class _$ArticleActorStateTearOff {
  const _$ArticleActorStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LikeFailure likeFailure(ArticleFailure articleFailure) {
    return _LikeFailure(
      articleFailure,
    );
  }

  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }
}

/// @nodoc
const $ArticleActorState = _$ArticleActorStateTearOff();

/// @nodoc
mixin _$ArticleActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ArticleFailure articleFailure) likeFailure,
    required TResult Function() actionInProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ArticleFailure articleFailure)? likeFailure,
    TResult Function()? actionInProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ArticleFailure articleFailure)? likeFailure,
    TResult Function()? actionInProgress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LikeFailure value) likeFailure,
    required TResult Function(_ActionInProgress value) actionInProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LikeFailure value)? likeFailure,
    TResult Function(_ActionInProgress value)? actionInProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LikeFailure value)? likeFailure,
    TResult Function(_ActionInProgress value)? actionInProgress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleActorStateCopyWith<$Res> {
  factory $ArticleActorStateCopyWith(
          ArticleActorState value, $Res Function(ArticleActorState) then) =
      _$ArticleActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ArticleActorStateCopyWithImpl<$Res>
    implements $ArticleActorStateCopyWith<$Res> {
  _$ArticleActorStateCopyWithImpl(this._value, this._then);

  final ArticleActorState _value;
  // ignore: unused_field
  final $Res Function(ArticleActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ArticleActorStateCopyWithImpl<$Res>
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
    return 'ArticleActorState.initial()';
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
    required TResult Function(ArticleFailure articleFailure) likeFailure,
    required TResult Function() actionInProgress,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ArticleFailure articleFailure)? likeFailure,
    TResult Function()? actionInProgress,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ArticleFailure articleFailure)? likeFailure,
    TResult Function()? actionInProgress,
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
    required TResult Function(_LikeFailure value) likeFailure,
    required TResult Function(_ActionInProgress value) actionInProgress,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LikeFailure value)? likeFailure,
    TResult Function(_ActionInProgress value)? actionInProgress,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LikeFailure value)? likeFailure,
    TResult Function(_ActionInProgress value)? actionInProgress,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ArticleActorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LikeFailureCopyWith<$Res> {
  factory _$LikeFailureCopyWith(
          _LikeFailure value, $Res Function(_LikeFailure) then) =
      __$LikeFailureCopyWithImpl<$Res>;
  $Res call({ArticleFailure articleFailure});

  $ArticleFailureCopyWith<$Res> get articleFailure;
}

/// @nodoc
class __$LikeFailureCopyWithImpl<$Res>
    extends _$ArticleActorStateCopyWithImpl<$Res>
    implements _$LikeFailureCopyWith<$Res> {
  __$LikeFailureCopyWithImpl(
      _LikeFailure _value, $Res Function(_LikeFailure) _then)
      : super(_value, (v) => _then(v as _LikeFailure));

  @override
  _LikeFailure get _value => super._value as _LikeFailure;

  @override
  $Res call({
    Object? articleFailure = freezed,
  }) {
    return _then(_LikeFailure(
      articleFailure == freezed
          ? _value.articleFailure
          : articleFailure // ignore: cast_nullable_to_non_nullable
              as ArticleFailure,
    ));
  }

  @override
  $ArticleFailureCopyWith<$Res> get articleFailure {
    return $ArticleFailureCopyWith<$Res>(_value.articleFailure, (value) {
      return _then(_value.copyWith(articleFailure: value));
    });
  }
}

/// @nodoc

class _$_LikeFailure implements _LikeFailure {
  const _$_LikeFailure(this.articleFailure);

  @override
  final ArticleFailure articleFailure;

  @override
  String toString() {
    return 'ArticleActorState.likeFailure(articleFailure: $articleFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LikeFailure &&
            (identical(other.articleFailure, articleFailure) ||
                other.articleFailure == articleFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, articleFailure);

  @JsonKey(ignore: true)
  @override
  _$LikeFailureCopyWith<_LikeFailure> get copyWith =>
      __$LikeFailureCopyWithImpl<_LikeFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ArticleFailure articleFailure) likeFailure,
    required TResult Function() actionInProgress,
  }) {
    return likeFailure(articleFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ArticleFailure articleFailure)? likeFailure,
    TResult Function()? actionInProgress,
  }) {
    return likeFailure?.call(articleFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ArticleFailure articleFailure)? likeFailure,
    TResult Function()? actionInProgress,
    required TResult orElse(),
  }) {
    if (likeFailure != null) {
      return likeFailure(articleFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LikeFailure value) likeFailure,
    required TResult Function(_ActionInProgress value) actionInProgress,
  }) {
    return likeFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LikeFailure value)? likeFailure,
    TResult Function(_ActionInProgress value)? actionInProgress,
  }) {
    return likeFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LikeFailure value)? likeFailure,
    TResult Function(_ActionInProgress value)? actionInProgress,
    required TResult orElse(),
  }) {
    if (likeFailure != null) {
      return likeFailure(this);
    }
    return orElse();
  }
}

abstract class _LikeFailure implements ArticleActorState {
  const factory _LikeFailure(ArticleFailure articleFailure) = _$_LikeFailure;

  ArticleFailure get articleFailure;
  @JsonKey(ignore: true)
  _$LikeFailureCopyWith<_LikeFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(
          _ActionInProgress value, $Res Function(_ActionInProgress) then) =
      __$ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActionInProgressCopyWithImpl<$Res>
    extends _$ArticleActorStateCopyWithImpl<$Res>
    implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(
      _ActionInProgress _value, $Res Function(_ActionInProgress) _then)
      : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

/// @nodoc

class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'ArticleActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ArticleFailure articleFailure) likeFailure,
    required TResult Function() actionInProgress,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ArticleFailure articleFailure)? likeFailure,
    TResult Function()? actionInProgress,
  }) {
    return actionInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ArticleFailure articleFailure)? likeFailure,
    TResult Function()? actionInProgress,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LikeFailure value) likeFailure,
    required TResult Function(_ActionInProgress value) actionInProgress,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LikeFailure value)? likeFailure,
    TResult Function(_ActionInProgress value)? actionInProgress,
  }) {
    return actionInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LikeFailure value)? likeFailure,
    TResult Function(_ActionInProgress value)? actionInProgress,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements ArticleActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}
