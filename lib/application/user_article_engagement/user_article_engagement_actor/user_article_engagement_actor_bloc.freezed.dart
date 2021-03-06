// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_article_engagement_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserArticleEngagementActorEventTearOff {
  const _$UserArticleEngagementActorEventTearOff();

  _SharePressed sharePressed(
      Either<UserArticleEngagementFailure, UserArticleEngagement>
          failureOrUserArticleEngagement) {
    return _SharePressed(
      failureOrUserArticleEngagement,
    );
  }

  _LikePressed likePressed(UserArticleEngagement userArticleEngagement) {
    return _LikePressed(
      userArticleEngagement,
    );
  }

  _DismissPressed dismissPressed(
      Either<UserArticleEngagementFailure, UserArticleEngagement>
          failureOrUserArticleEngagement) {
    return _DismissPressed(
      failureOrUserArticleEngagement,
    );
  }

  _OpenPressed openPressed(
      Either<UserArticleEngagementFailure, UserArticleEngagement>
          failureOrUserArticleEngagement) {
    return _OpenPressed(
      failureOrUserArticleEngagement,
    );
  }
}

/// @nodoc
const $UserArticleEngagementActorEvent =
    _$UserArticleEngagementActorEventTearOff();

/// @nodoc
mixin _$UserArticleEngagementActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Either<UserArticleEngagementFailure, UserArticleEngagement>
                failureOrUserArticleEngagement)
        sharePressed,
    required TResult Function(UserArticleEngagement userArticleEngagement)
        likePressed,
    required TResult Function(
            Either<UserArticleEngagementFailure, UserArticleEngagement>
                failureOrUserArticleEngagement)
        dismissPressed,
    required TResult Function(
            Either<UserArticleEngagementFailure, UserArticleEngagement>
                failureOrUserArticleEngagement)
        openPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            Either<UserArticleEngagementFailure, UserArticleEngagement>
                failureOrUserArticleEngagement)?
        sharePressed,
    TResult Function(UserArticleEngagement userArticleEngagement)? likePressed,
    TResult Function(
            Either<UserArticleEngagementFailure, UserArticleEngagement>
                failureOrUserArticleEngagement)?
        dismissPressed,
    TResult Function(
            Either<UserArticleEngagementFailure, UserArticleEngagement>
                failureOrUserArticleEngagement)?
        openPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Either<UserArticleEngagementFailure, UserArticleEngagement>
                failureOrUserArticleEngagement)?
        sharePressed,
    TResult Function(UserArticleEngagement userArticleEngagement)? likePressed,
    TResult Function(
            Either<UserArticleEngagementFailure, UserArticleEngagement>
                failureOrUserArticleEngagement)?
        dismissPressed,
    TResult Function(
            Either<UserArticleEngagementFailure, UserArticleEngagement>
                failureOrUserArticleEngagement)?
        openPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SharePressed value) sharePressed,
    required TResult Function(_LikePressed value) likePressed,
    required TResult Function(_DismissPressed value) dismissPressed,
    required TResult Function(_OpenPressed value) openPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SharePressed value)? sharePressed,
    TResult Function(_LikePressed value)? likePressed,
    TResult Function(_DismissPressed value)? dismissPressed,
    TResult Function(_OpenPressed value)? openPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SharePressed value)? sharePressed,
    TResult Function(_LikePressed value)? likePressed,
    TResult Function(_DismissPressed value)? dismissPressed,
    TResult Function(_OpenPressed value)? openPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserArticleEngagementActorEventCopyWith<$Res> {
  factory $UserArticleEngagementActorEventCopyWith(
          UserArticleEngagementActorEvent value,
          $Res Function(UserArticleEngagementActorEvent) then) =
      _$UserArticleEngagementActorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserArticleEngagementActorEventCopyWithImpl<$Res>
    implements $UserArticleEngagementActorEventCopyWith<$Res> {
  _$UserArticleEngagementActorEventCopyWithImpl(this._value, this._then);

  final UserArticleEngagementActorEvent _value;
  // ignore: unused_field
  final $Res Function(UserArticleEngagementActorEvent) _then;
}

/// @nodoc
abstract class _$SharePressedCopyWith<$Res> {
  factory _$SharePressedCopyWith(
          _SharePressed value, $Res Function(_SharePressed) then) =
      __$SharePressedCopyWithImpl<$Res>;
  $Res call(
      {Either<UserArticleEngagementFailure, UserArticleEngagement>
          failureOrUserArticleEngagement});
}

/// @nodoc
class __$SharePressedCopyWithImpl<$Res>
    extends _$UserArticleEngagementActorEventCopyWithImpl<$Res>
    implements _$SharePressedCopyWith<$Res> {
  __$SharePressedCopyWithImpl(
      _SharePressed _value, $Res Function(_SharePressed) _then)
      : super(_value, (v) => _then(v as _SharePressed));

  @override
  _SharePressed get _value => super._value as _SharePressed;

  @override
  $Res call({
    Object? failureOrUserArticleEngagement = freezed,
  }) {
    return _then(_SharePressed(
      failureOrUserArticleEngagement == freezed
          ? _value.failureOrUserArticleEngagement
          : failureOrUserArticleEngagement // ignore: cast_nullable_to_non_nullable
              as Either<UserArticleEngagementFailure, UserArticleEngagement>,
    ));
  }
}

/// @nodoc

class _$_SharePressed implements _SharePressed {
  const _$_SharePressed(this.failureOrUserArticleEngagement);

  @override
  final Either<UserArticleEngagementFailure, UserArticleEngagement>
      failureOrUserArticleEngagement;

  @override
  String toString() {
    return 'UserArticleEngagementActorEvent.sharePressed(failureOrUserArticleEngagement: $failureOrUserArticleEngagement)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SharePressed &&
            (identical(other.failureOrUserArticleEngagement,
                    failureOrUserArticleEngagement) ||
                other.failureOrUserArticleEngagement ==
                    failureOrUserArticleEngagement));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrUserArticleEngagement);

  @JsonKey(ignore: true)
  @override
  _$SharePressedCopyWith<_SharePressed> get copyWith =>
      __$SharePressedCopyWithImpl<_SharePressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Either<UserArticleEngagementFailure, UserArticleEngagement>
                failureOrUserArticleEngagement)
        sharePressed,
    required TResult Function(UserArticleEngagement userArticleEngagement)
        likePressed,
    required TResult Function(
            Either<UserArticleEngagementFailure, UserArticleEngagement>
                failureOrUserArticleEngagement)
        dismissPressed,
    required TResult Function(
            Either<UserArticleEngagementFailure, UserArticleEngagement>
                failureOrUserArticleEngagement)
        openPressed,
  }) {
    return sharePressed(failureOrUserArticleEngagement);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            Either<UserArticleEngagementFailure, UserArticleEngagement>
                failureOrUserArticleEngagement)?
        sharePressed,
    TResult Function(UserArticleEngagement userArticleEngagement)? likePressed,
    TResult Function(
            Either<UserArticleEngagementFailure, UserArticleEngagement>
                failureOrUserArticleEngagement)?
        dismissPressed,
    TResult Function(
            Either<UserArticleEngagementFailure, UserArticleEngagement>
                failureOrUserArticleEngagement)?
        openPressed,
  }) {
    return sharePressed?.call(failureOrUserArticleEngagement);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Either<UserArticleEngagementFailure, UserArticleEngagement>
                failureOrUserArticleEngagement)?
        sharePressed,
    TResult Function(UserArticleEngagement userArticleEngagement)? likePressed,
    TResult Function(
            Either<UserArticleEngagementFailure, UserArticleEngagement>
                failureOrUserArticleEngagement)?
        dismissPressed,
    TResult Function(
            Either<UserArticleEngagementFailure, UserArticleEngagement>
                failureOrUserArticleEngagement)?
        openPressed,
    required TResult orElse(),
  }) {
    if (sharePressed != null) {
      return sharePressed(failureOrUserArticleEngagement);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SharePressed value) sharePressed,
    required TResult Function(_LikePressed value) likePressed,
    required TResult Function(_DismissPressed value) dismissPressed,
    required TResult Function(_OpenPressed value) openPressed,
  }) {
    return sharePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SharePressed value)? sharePressed,
    TResult Function(_LikePressed value)? likePressed,
    TResult Function(_DismissPressed value)? dismissPressed,
    TResult Function(_OpenPressed value)? openPressed,
  }) {
    return sharePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SharePressed value)? sharePressed,
    TResult Function(_LikePressed value)? likePressed,
    TResult Function(_DismissPressed value)? dismissPressed,
    TResult Function(_OpenPressed value)? openPressed,
    required TResult orElse(),
  }) {
    if (sharePressed != null) {
      return sharePressed(this);
    }
    return orElse();
  }
}

abstract class _SharePressed implements UserArticleEngagementActorEvent {
  const factory _SharePressed(
      Either<UserArticleEngagementFailure, UserArticleEngagement>
          failureOrUserArticleEngagement) = _$_SharePressed;

  Either<UserArticleEngagementFailure, UserArticleEngagement>
      get failureOrUserArticleEngagement;
  @JsonKey(ignore: true)
  _$SharePressedCopyWith<_SharePressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LikePressedCopyWith<$Res> {
  factory _$LikePressedCopyWith(
          _LikePressed value, $Res Function(_LikePressed) then) =
      __$LikePressedCopyWithImpl<$Res>;
  $Res call({UserArticleEngagement userArticleEngagement});

  $UserArticleEngagementCopyWith<$Res> get userArticleEngagement;
}

/// @nodoc
class __$LikePressedCopyWithImpl<$Res>
    extends _$UserArticleEngagementActorEventCopyWithImpl<$Res>
    implements _$LikePressedCopyWith<$Res> {
  __$LikePressedCopyWithImpl(
      _LikePressed _value, $Res Function(_LikePressed) _then)
      : super(_value, (v) => _then(v as _LikePressed));

  @override
  _LikePressed get _value => super._value as _LikePressed;

  @override
  $Res call({
    Object? userArticleEngagement = freezed,
  }) {
    return _then(_LikePressed(
      userArticleEngagement == freezed
          ? _value.userArticleEngagement
          : userArticleEngagement // ignore: cast_nullable_to_non_nullable
              as UserArticleEngagement,
    ));
  }

  @override
  $UserArticleEngagementCopyWith<$Res> get userArticleEngagement {
    return $UserArticleEngagementCopyWith<$Res>(_value.userArticleEngagement,
        (value) {
      return _then(_value.copyWith(userArticleEngagement: value));
    });
  }
}

/// @nodoc

class _$_LikePressed implements _LikePressed {
  const _$_LikePressed(this.userArticleEngagement);

  @override
  final UserArticleEngagement userArticleEngagement;

  @override
  String toString() {
    return 'UserArticleEngagementActorEvent.likePressed(userArticleEngagement: $userArticleEngagement)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LikePressed &&
            (identical(other.userArticleEngagement, userArticleEngagement) ||
                other.userArticleEngagement == userArticleEngagement));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userArticleEngagement);

  @JsonKey(ignore: true)
  @override
  _$LikePressedCopyWith<_LikePressed> get copyWith =>
      __$LikePressedCopyWithImpl<_LikePressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Either<UserArticleEngagementFailure, UserArticleEngagement>
                failureOrUserArticleEngagement)
        sharePressed,
    required TResult Function(UserArticleEngagement userArticleEngagement)
        likePressed,
    required TResult Function(
            Either<UserArticleEngagementFailure, UserArticleEngagement>
                failureOrUserArticleEngagement)
        dismissPressed,
    required TResult Function(
            Either<UserArticleEngagementFailure, UserArticleEngagement>
                failureOrUserArticleEngagement)
        openPressed,
  }) {
    return likePressed(userArticleEngagement);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            Either<UserArticleEngagementFailure, UserArticleEngagement>
                failureOrUserArticleEngagement)?
        sharePressed,
    TResult Function(UserArticleEngagement userArticleEngagement)? likePressed,
    TResult Function(
            Either<UserArticleEngagementFailure, UserArticleEngagement>
                failureOrUserArticleEngagement)?
        dismissPressed,
    TResult Function(
            Either<UserArticleEngagementFailure, UserArticleEngagement>
                failureOrUserArticleEngagement)?
        openPressed,
  }) {
    return likePressed?.call(userArticleEngagement);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Either<UserArticleEngagementFailure, UserArticleEngagement>
                failureOrUserArticleEngagement)?
        sharePressed,
    TResult Function(UserArticleEngagement userArticleEngagement)? likePressed,
    TResult Function(
            Either<UserArticleEngagementFailure, UserArticleEngagement>
                failureOrUserArticleEngagement)?
        dismissPressed,
    TResult Function(
            Either<UserArticleEngagementFailure, UserArticleEngagement>
                failureOrUserArticleEngagement)?
        openPressed,
    required TResult orElse(),
  }) {
    if (likePressed != null) {
      return likePressed(userArticleEngagement);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SharePressed value) sharePressed,
    required TResult Function(_LikePressed value) likePressed,
    required TResult Function(_DismissPressed value) dismissPressed,
    required TResult Function(_OpenPressed value) openPressed,
  }) {
    return likePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SharePressed value)? sharePressed,
    TResult Function(_LikePressed value)? likePressed,
    TResult Function(_DismissPressed value)? dismissPressed,
    TResult Function(_OpenPressed value)? openPressed,
  }) {
    return likePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SharePressed value)? sharePressed,
    TResult Function(_LikePressed value)? likePressed,
    TResult Function(_DismissPressed value)? dismissPressed,
    TResult Function(_OpenPressed value)? openPressed,
    required TResult orElse(),
  }) {
    if (likePressed != null) {
      return likePressed(this);
    }
    return orElse();
  }
}

abstract class _LikePressed implements UserArticleEngagementActorEvent {
  const factory _LikePressed(UserArticleEngagement userArticleEngagement) =
      _$_LikePressed;

  UserArticleEngagement get userArticleEngagement;
  @JsonKey(ignore: true)
  _$LikePressedCopyWith<_LikePressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DismissPressedCopyWith<$Res> {
  factory _$DismissPressedCopyWith(
          _DismissPressed value, $Res Function(_DismissPressed) then) =
      __$DismissPressedCopyWithImpl<$Res>;
  $Res call(
      {Either<UserArticleEngagementFailure, UserArticleEngagement>
          failureOrUserArticleEngagement});
}

/// @nodoc
class __$DismissPressedCopyWithImpl<$Res>
    extends _$UserArticleEngagementActorEventCopyWithImpl<$Res>
    implements _$DismissPressedCopyWith<$Res> {
  __$DismissPressedCopyWithImpl(
      _DismissPressed _value, $Res Function(_DismissPressed) _then)
      : super(_value, (v) => _then(v as _DismissPressed));

  @override
  _DismissPressed get _value => super._value as _DismissPressed;

  @override
  $Res call({
    Object? failureOrUserArticleEngagement = freezed,
  }) {
    return _then(_DismissPressed(
      failureOrUserArticleEngagement == freezed
          ? _value.failureOrUserArticleEngagement
          : failureOrUserArticleEngagement // ignore: cast_nullable_to_non_nullable
              as Either<UserArticleEngagementFailure, UserArticleEngagement>,
    ));
  }
}

/// @nodoc

class _$_DismissPressed implements _DismissPressed {
  const _$_DismissPressed(this.failureOrUserArticleEngagement);

  @override
  final Either<UserArticleEngagementFailure, UserArticleEngagement>
      failureOrUserArticleEngagement;

  @override
  String toString() {
    return 'UserArticleEngagementActorEvent.dismissPressed(failureOrUserArticleEngagement: $failureOrUserArticleEngagement)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DismissPressed &&
            (identical(other.failureOrUserArticleEngagement,
                    failureOrUserArticleEngagement) ||
                other.failureOrUserArticleEngagement ==
                    failureOrUserArticleEngagement));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrUserArticleEngagement);

  @JsonKey(ignore: true)
  @override
  _$DismissPressedCopyWith<_DismissPressed> get copyWith =>
      __$DismissPressedCopyWithImpl<_DismissPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Either<UserArticleEngagementFailure, UserArticleEngagement>
                failureOrUserArticleEngagement)
        sharePressed,
    required TResult Function(UserArticleEngagement userArticleEngagement)
        likePressed,
    required TResult Function(
            Either<UserArticleEngagementFailure, UserArticleEngagement>
                failureOrUserArticleEngagement)
        dismissPressed,
    required TResult Function(
            Either<UserArticleEngagementFailure, UserArticleEngagement>
                failureOrUserArticleEngagement)
        openPressed,
  }) {
    return dismissPressed(failureOrUserArticleEngagement);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            Either<UserArticleEngagementFailure, UserArticleEngagement>
                failureOrUserArticleEngagement)?
        sharePressed,
    TResult Function(UserArticleEngagement userArticleEngagement)? likePressed,
    TResult Function(
            Either<UserArticleEngagementFailure, UserArticleEngagement>
                failureOrUserArticleEngagement)?
        dismissPressed,
    TResult Function(
            Either<UserArticleEngagementFailure, UserArticleEngagement>
                failureOrUserArticleEngagement)?
        openPressed,
  }) {
    return dismissPressed?.call(failureOrUserArticleEngagement);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Either<UserArticleEngagementFailure, UserArticleEngagement>
                failureOrUserArticleEngagement)?
        sharePressed,
    TResult Function(UserArticleEngagement userArticleEngagement)? likePressed,
    TResult Function(
            Either<UserArticleEngagementFailure, UserArticleEngagement>
                failureOrUserArticleEngagement)?
        dismissPressed,
    TResult Function(
            Either<UserArticleEngagementFailure, UserArticleEngagement>
                failureOrUserArticleEngagement)?
        openPressed,
    required TResult orElse(),
  }) {
    if (dismissPressed != null) {
      return dismissPressed(failureOrUserArticleEngagement);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SharePressed value) sharePressed,
    required TResult Function(_LikePressed value) likePressed,
    required TResult Function(_DismissPressed value) dismissPressed,
    required TResult Function(_OpenPressed value) openPressed,
  }) {
    return dismissPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SharePressed value)? sharePressed,
    TResult Function(_LikePressed value)? likePressed,
    TResult Function(_DismissPressed value)? dismissPressed,
    TResult Function(_OpenPressed value)? openPressed,
  }) {
    return dismissPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SharePressed value)? sharePressed,
    TResult Function(_LikePressed value)? likePressed,
    TResult Function(_DismissPressed value)? dismissPressed,
    TResult Function(_OpenPressed value)? openPressed,
    required TResult orElse(),
  }) {
    if (dismissPressed != null) {
      return dismissPressed(this);
    }
    return orElse();
  }
}

abstract class _DismissPressed implements UserArticleEngagementActorEvent {
  const factory _DismissPressed(
      Either<UserArticleEngagementFailure, UserArticleEngagement>
          failureOrUserArticleEngagement) = _$_DismissPressed;

  Either<UserArticleEngagementFailure, UserArticleEngagement>
      get failureOrUserArticleEngagement;
  @JsonKey(ignore: true)
  _$DismissPressedCopyWith<_DismissPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OpenPressedCopyWith<$Res> {
  factory _$OpenPressedCopyWith(
          _OpenPressed value, $Res Function(_OpenPressed) then) =
      __$OpenPressedCopyWithImpl<$Res>;
  $Res call(
      {Either<UserArticleEngagementFailure, UserArticleEngagement>
          failureOrUserArticleEngagement});
}

/// @nodoc
class __$OpenPressedCopyWithImpl<$Res>
    extends _$UserArticleEngagementActorEventCopyWithImpl<$Res>
    implements _$OpenPressedCopyWith<$Res> {
  __$OpenPressedCopyWithImpl(
      _OpenPressed _value, $Res Function(_OpenPressed) _then)
      : super(_value, (v) => _then(v as _OpenPressed));

  @override
  _OpenPressed get _value => super._value as _OpenPressed;

  @override
  $Res call({
    Object? failureOrUserArticleEngagement = freezed,
  }) {
    return _then(_OpenPressed(
      failureOrUserArticleEngagement == freezed
          ? _value.failureOrUserArticleEngagement
          : failureOrUserArticleEngagement // ignore: cast_nullable_to_non_nullable
              as Either<UserArticleEngagementFailure, UserArticleEngagement>,
    ));
  }
}

/// @nodoc

class _$_OpenPressed implements _OpenPressed {
  const _$_OpenPressed(this.failureOrUserArticleEngagement);

  @override
  final Either<UserArticleEngagementFailure, UserArticleEngagement>
      failureOrUserArticleEngagement;

  @override
  String toString() {
    return 'UserArticleEngagementActorEvent.openPressed(failureOrUserArticleEngagement: $failureOrUserArticleEngagement)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OpenPressed &&
            (identical(other.failureOrUserArticleEngagement,
                    failureOrUserArticleEngagement) ||
                other.failureOrUserArticleEngagement ==
                    failureOrUserArticleEngagement));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrUserArticleEngagement);

  @JsonKey(ignore: true)
  @override
  _$OpenPressedCopyWith<_OpenPressed> get copyWith =>
      __$OpenPressedCopyWithImpl<_OpenPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Either<UserArticleEngagementFailure, UserArticleEngagement>
                failureOrUserArticleEngagement)
        sharePressed,
    required TResult Function(UserArticleEngagement userArticleEngagement)
        likePressed,
    required TResult Function(
            Either<UserArticleEngagementFailure, UserArticleEngagement>
                failureOrUserArticleEngagement)
        dismissPressed,
    required TResult Function(
            Either<UserArticleEngagementFailure, UserArticleEngagement>
                failureOrUserArticleEngagement)
        openPressed,
  }) {
    return openPressed(failureOrUserArticleEngagement);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            Either<UserArticleEngagementFailure, UserArticleEngagement>
                failureOrUserArticleEngagement)?
        sharePressed,
    TResult Function(UserArticleEngagement userArticleEngagement)? likePressed,
    TResult Function(
            Either<UserArticleEngagementFailure, UserArticleEngagement>
                failureOrUserArticleEngagement)?
        dismissPressed,
    TResult Function(
            Either<UserArticleEngagementFailure, UserArticleEngagement>
                failureOrUserArticleEngagement)?
        openPressed,
  }) {
    return openPressed?.call(failureOrUserArticleEngagement);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Either<UserArticleEngagementFailure, UserArticleEngagement>
                failureOrUserArticleEngagement)?
        sharePressed,
    TResult Function(UserArticleEngagement userArticleEngagement)? likePressed,
    TResult Function(
            Either<UserArticleEngagementFailure, UserArticleEngagement>
                failureOrUserArticleEngagement)?
        dismissPressed,
    TResult Function(
            Either<UserArticleEngagementFailure, UserArticleEngagement>
                failureOrUserArticleEngagement)?
        openPressed,
    required TResult orElse(),
  }) {
    if (openPressed != null) {
      return openPressed(failureOrUserArticleEngagement);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SharePressed value) sharePressed,
    required TResult Function(_LikePressed value) likePressed,
    required TResult Function(_DismissPressed value) dismissPressed,
    required TResult Function(_OpenPressed value) openPressed,
  }) {
    return openPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SharePressed value)? sharePressed,
    TResult Function(_LikePressed value)? likePressed,
    TResult Function(_DismissPressed value)? dismissPressed,
    TResult Function(_OpenPressed value)? openPressed,
  }) {
    return openPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SharePressed value)? sharePressed,
    TResult Function(_LikePressed value)? likePressed,
    TResult Function(_DismissPressed value)? dismissPressed,
    TResult Function(_OpenPressed value)? openPressed,
    required TResult orElse(),
  }) {
    if (openPressed != null) {
      return openPressed(this);
    }
    return orElse();
  }
}

abstract class _OpenPressed implements UserArticleEngagementActorEvent {
  const factory _OpenPressed(
      Either<UserArticleEngagementFailure, UserArticleEngagement>
          failureOrUserArticleEngagement) = _$_OpenPressed;

  Either<UserArticleEngagementFailure, UserArticleEngagement>
      get failureOrUserArticleEngagement;
  @JsonKey(ignore: true)
  _$OpenPressedCopyWith<_OpenPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$UserArticleEngagementActorStateTearOff {
  const _$UserArticleEngagementActorStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

  _LikeFailure likeFailure(
      UserArticleEngagementFailure userArticleEngagementFailure) {
    return _LikeFailure(
      userArticleEngagementFailure,
    );
  }

  _LikeSuccess likeSuccess(UserArticleEngagement updatedUserArticleEngagement) {
    return _LikeSuccess(
      updatedUserArticleEngagement,
    );
  }

  _ShareFailure shareFailure(
      UserArticleEngagementFailure userArticleEngagementFailure) {
    return _ShareFailure(
      userArticleEngagementFailure,
    );
  }

  _ShareOpened shareOpened(UserArticleEngagement userArticleEngagement) {
    return _ShareOpened(
      userArticleEngagement,
    );
  }

  _DismissFailure dismissFailure(
      UserArticleEngagementFailure userArticleEngagementFailure) {
    return _DismissFailure(
      userArticleEngagementFailure,
    );
  }

  _DismissSuccess dismissSuccess(UserArticleEngagement userArticleEngagement) {
    return _DismissSuccess(
      userArticleEngagement,
    );
  }

  _OpenFailure openFailure(
      UserArticleEngagementFailure userArticleEngagementFailure) {
    return _OpenFailure(
      userArticleEngagementFailure,
    );
  }

  _OpenSuccess openSuccess(UserArticleEngagement userArticleEngagement) {
    return _OpenSuccess(
      userArticleEngagement,
    );
  }
}

/// @nodoc
const $UserArticleEngagementActorState =
    _$UserArticleEngagementActorStateTearOff();

/// @nodoc
mixin _$UserArticleEngagementActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(
            UserArticleEngagementFailure userArticleEngagementFailure)
        likeFailure,
    required TResult Function(
            UserArticleEngagement updatedUserArticleEngagement)
        likeSuccess,
    required TResult Function(
            UserArticleEngagementFailure userArticleEngagementFailure)
        shareFailure,
    required TResult Function(UserArticleEngagement userArticleEngagement)
        shareOpened,
    required TResult Function(
            UserArticleEngagementFailure userArticleEngagementFailure)
        dismissFailure,
    required TResult Function(UserArticleEngagement userArticleEngagement)
        dismissSuccess,
    required TResult Function(
            UserArticleEngagementFailure userArticleEngagementFailure)
        openFailure,
    required TResult Function(UserArticleEngagement userArticleEngagement)
        openSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        likeFailure,
    TResult Function(UserArticleEngagement updatedUserArticleEngagement)?
        likeSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        shareFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)? shareOpened,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        dismissFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)?
        dismissSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        openFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)? openSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        likeFailure,
    TResult Function(UserArticleEngagement updatedUserArticleEngagement)?
        likeSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        shareFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)? shareOpened,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        dismissFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)?
        dismissSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        openFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)? openSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_LikeFailure value) likeFailure,
    required TResult Function(_LikeSuccess value) likeSuccess,
    required TResult Function(_ShareFailure value) shareFailure,
    required TResult Function(_ShareOpened value) shareOpened,
    required TResult Function(_DismissFailure value) dismissFailure,
    required TResult Function(_DismissSuccess value) dismissSuccess,
    required TResult Function(_OpenFailure value) openFailure,
    required TResult Function(_OpenSuccess value) openSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_LikeFailure value)? likeFailure,
    TResult Function(_LikeSuccess value)? likeSuccess,
    TResult Function(_ShareFailure value)? shareFailure,
    TResult Function(_ShareOpened value)? shareOpened,
    TResult Function(_DismissFailure value)? dismissFailure,
    TResult Function(_DismissSuccess value)? dismissSuccess,
    TResult Function(_OpenFailure value)? openFailure,
    TResult Function(_OpenSuccess value)? openSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_LikeFailure value)? likeFailure,
    TResult Function(_LikeSuccess value)? likeSuccess,
    TResult Function(_ShareFailure value)? shareFailure,
    TResult Function(_ShareOpened value)? shareOpened,
    TResult Function(_DismissFailure value)? dismissFailure,
    TResult Function(_DismissSuccess value)? dismissSuccess,
    TResult Function(_OpenFailure value)? openFailure,
    TResult Function(_OpenSuccess value)? openSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserArticleEngagementActorStateCopyWith<$Res> {
  factory $UserArticleEngagementActorStateCopyWith(
          UserArticleEngagementActorState value,
          $Res Function(UserArticleEngagementActorState) then) =
      _$UserArticleEngagementActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserArticleEngagementActorStateCopyWithImpl<$Res>
    implements $UserArticleEngagementActorStateCopyWith<$Res> {
  _$UserArticleEngagementActorStateCopyWithImpl(this._value, this._then);

  final UserArticleEngagementActorState _value;
  // ignore: unused_field
  final $Res Function(UserArticleEngagementActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$UserArticleEngagementActorStateCopyWithImpl<$Res>
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
    return 'UserArticleEngagementActorState.initial()';
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
    required TResult Function() actionInProgress,
    required TResult Function(
            UserArticleEngagementFailure userArticleEngagementFailure)
        likeFailure,
    required TResult Function(
            UserArticleEngagement updatedUserArticleEngagement)
        likeSuccess,
    required TResult Function(
            UserArticleEngagementFailure userArticleEngagementFailure)
        shareFailure,
    required TResult Function(UserArticleEngagement userArticleEngagement)
        shareOpened,
    required TResult Function(
            UserArticleEngagementFailure userArticleEngagementFailure)
        dismissFailure,
    required TResult Function(UserArticleEngagement userArticleEngagement)
        dismissSuccess,
    required TResult Function(
            UserArticleEngagementFailure userArticleEngagementFailure)
        openFailure,
    required TResult Function(UserArticleEngagement userArticleEngagement)
        openSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        likeFailure,
    TResult Function(UserArticleEngagement updatedUserArticleEngagement)?
        likeSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        shareFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)? shareOpened,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        dismissFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)?
        dismissSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        openFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)? openSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        likeFailure,
    TResult Function(UserArticleEngagement updatedUserArticleEngagement)?
        likeSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        shareFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)? shareOpened,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        dismissFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)?
        dismissSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        openFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)? openSuccess,
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
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_LikeFailure value) likeFailure,
    required TResult Function(_LikeSuccess value) likeSuccess,
    required TResult Function(_ShareFailure value) shareFailure,
    required TResult Function(_ShareOpened value) shareOpened,
    required TResult Function(_DismissFailure value) dismissFailure,
    required TResult Function(_DismissSuccess value) dismissSuccess,
    required TResult Function(_OpenFailure value) openFailure,
    required TResult Function(_OpenSuccess value) openSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_LikeFailure value)? likeFailure,
    TResult Function(_LikeSuccess value)? likeSuccess,
    TResult Function(_ShareFailure value)? shareFailure,
    TResult Function(_ShareOpened value)? shareOpened,
    TResult Function(_DismissFailure value)? dismissFailure,
    TResult Function(_DismissSuccess value)? dismissSuccess,
    TResult Function(_OpenFailure value)? openFailure,
    TResult Function(_OpenSuccess value)? openSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_LikeFailure value)? likeFailure,
    TResult Function(_LikeSuccess value)? likeSuccess,
    TResult Function(_ShareFailure value)? shareFailure,
    TResult Function(_ShareOpened value)? shareOpened,
    TResult Function(_DismissFailure value)? dismissFailure,
    TResult Function(_DismissSuccess value)? dismissSuccess,
    TResult Function(_OpenFailure value)? openFailure,
    TResult Function(_OpenSuccess value)? openSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UserArticleEngagementActorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(
          _ActionInProgress value, $Res Function(_ActionInProgress) then) =
      __$ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActionInProgressCopyWithImpl<$Res>
    extends _$UserArticleEngagementActorStateCopyWithImpl<$Res>
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
    return 'UserArticleEngagementActorState.actionInProgress()';
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
    required TResult Function() actionInProgress,
    required TResult Function(
            UserArticleEngagementFailure userArticleEngagementFailure)
        likeFailure,
    required TResult Function(
            UserArticleEngagement updatedUserArticleEngagement)
        likeSuccess,
    required TResult Function(
            UserArticleEngagementFailure userArticleEngagementFailure)
        shareFailure,
    required TResult Function(UserArticleEngagement userArticleEngagement)
        shareOpened,
    required TResult Function(
            UserArticleEngagementFailure userArticleEngagementFailure)
        dismissFailure,
    required TResult Function(UserArticleEngagement userArticleEngagement)
        dismissSuccess,
    required TResult Function(
            UserArticleEngagementFailure userArticleEngagementFailure)
        openFailure,
    required TResult Function(UserArticleEngagement userArticleEngagement)
        openSuccess,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        likeFailure,
    TResult Function(UserArticleEngagement updatedUserArticleEngagement)?
        likeSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        shareFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)? shareOpened,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        dismissFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)?
        dismissSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        openFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)? openSuccess,
  }) {
    return actionInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        likeFailure,
    TResult Function(UserArticleEngagement updatedUserArticleEngagement)?
        likeSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        shareFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)? shareOpened,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        dismissFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)?
        dismissSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        openFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)? openSuccess,
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
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_LikeFailure value) likeFailure,
    required TResult Function(_LikeSuccess value) likeSuccess,
    required TResult Function(_ShareFailure value) shareFailure,
    required TResult Function(_ShareOpened value) shareOpened,
    required TResult Function(_DismissFailure value) dismissFailure,
    required TResult Function(_DismissSuccess value) dismissSuccess,
    required TResult Function(_OpenFailure value) openFailure,
    required TResult Function(_OpenSuccess value) openSuccess,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_LikeFailure value)? likeFailure,
    TResult Function(_LikeSuccess value)? likeSuccess,
    TResult Function(_ShareFailure value)? shareFailure,
    TResult Function(_ShareOpened value)? shareOpened,
    TResult Function(_DismissFailure value)? dismissFailure,
    TResult Function(_DismissSuccess value)? dismissSuccess,
    TResult Function(_OpenFailure value)? openFailure,
    TResult Function(_OpenSuccess value)? openSuccess,
  }) {
    return actionInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_LikeFailure value)? likeFailure,
    TResult Function(_LikeSuccess value)? likeSuccess,
    TResult Function(_ShareFailure value)? shareFailure,
    TResult Function(_ShareOpened value)? shareOpened,
    TResult Function(_DismissFailure value)? dismissFailure,
    TResult Function(_DismissSuccess value)? dismissSuccess,
    TResult Function(_OpenFailure value)? openFailure,
    TResult Function(_OpenSuccess value)? openSuccess,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements UserArticleEngagementActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$LikeFailureCopyWith<$Res> {
  factory _$LikeFailureCopyWith(
          _LikeFailure value, $Res Function(_LikeFailure) then) =
      __$LikeFailureCopyWithImpl<$Res>;
  $Res call({UserArticleEngagementFailure userArticleEngagementFailure});

  $UserArticleEngagementFailureCopyWith<$Res> get userArticleEngagementFailure;
}

/// @nodoc
class __$LikeFailureCopyWithImpl<$Res>
    extends _$UserArticleEngagementActorStateCopyWithImpl<$Res>
    implements _$LikeFailureCopyWith<$Res> {
  __$LikeFailureCopyWithImpl(
      _LikeFailure _value, $Res Function(_LikeFailure) _then)
      : super(_value, (v) => _then(v as _LikeFailure));

  @override
  _LikeFailure get _value => super._value as _LikeFailure;

  @override
  $Res call({
    Object? userArticleEngagementFailure = freezed,
  }) {
    return _then(_LikeFailure(
      userArticleEngagementFailure == freezed
          ? _value.userArticleEngagementFailure
          : userArticleEngagementFailure // ignore: cast_nullable_to_non_nullable
              as UserArticleEngagementFailure,
    ));
  }

  @override
  $UserArticleEngagementFailureCopyWith<$Res> get userArticleEngagementFailure {
    return $UserArticleEngagementFailureCopyWith<$Res>(
        _value.userArticleEngagementFailure, (value) {
      return _then(_value.copyWith(userArticleEngagementFailure: value));
    });
  }
}

/// @nodoc

class _$_LikeFailure implements _LikeFailure {
  const _$_LikeFailure(this.userArticleEngagementFailure);

  @override
  final UserArticleEngagementFailure userArticleEngagementFailure;

  @override
  String toString() {
    return 'UserArticleEngagementActorState.likeFailure(userArticleEngagementFailure: $userArticleEngagementFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LikeFailure &&
            (identical(other.userArticleEngagementFailure,
                    userArticleEngagementFailure) ||
                other.userArticleEngagementFailure ==
                    userArticleEngagementFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userArticleEngagementFailure);

  @JsonKey(ignore: true)
  @override
  _$LikeFailureCopyWith<_LikeFailure> get copyWith =>
      __$LikeFailureCopyWithImpl<_LikeFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(
            UserArticleEngagementFailure userArticleEngagementFailure)
        likeFailure,
    required TResult Function(
            UserArticleEngagement updatedUserArticleEngagement)
        likeSuccess,
    required TResult Function(
            UserArticleEngagementFailure userArticleEngagementFailure)
        shareFailure,
    required TResult Function(UserArticleEngagement userArticleEngagement)
        shareOpened,
    required TResult Function(
            UserArticleEngagementFailure userArticleEngagementFailure)
        dismissFailure,
    required TResult Function(UserArticleEngagement userArticleEngagement)
        dismissSuccess,
    required TResult Function(
            UserArticleEngagementFailure userArticleEngagementFailure)
        openFailure,
    required TResult Function(UserArticleEngagement userArticleEngagement)
        openSuccess,
  }) {
    return likeFailure(userArticleEngagementFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        likeFailure,
    TResult Function(UserArticleEngagement updatedUserArticleEngagement)?
        likeSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        shareFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)? shareOpened,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        dismissFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)?
        dismissSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        openFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)? openSuccess,
  }) {
    return likeFailure?.call(userArticleEngagementFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        likeFailure,
    TResult Function(UserArticleEngagement updatedUserArticleEngagement)?
        likeSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        shareFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)? shareOpened,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        dismissFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)?
        dismissSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        openFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)? openSuccess,
    required TResult orElse(),
  }) {
    if (likeFailure != null) {
      return likeFailure(userArticleEngagementFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_LikeFailure value) likeFailure,
    required TResult Function(_LikeSuccess value) likeSuccess,
    required TResult Function(_ShareFailure value) shareFailure,
    required TResult Function(_ShareOpened value) shareOpened,
    required TResult Function(_DismissFailure value) dismissFailure,
    required TResult Function(_DismissSuccess value) dismissSuccess,
    required TResult Function(_OpenFailure value) openFailure,
    required TResult Function(_OpenSuccess value) openSuccess,
  }) {
    return likeFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_LikeFailure value)? likeFailure,
    TResult Function(_LikeSuccess value)? likeSuccess,
    TResult Function(_ShareFailure value)? shareFailure,
    TResult Function(_ShareOpened value)? shareOpened,
    TResult Function(_DismissFailure value)? dismissFailure,
    TResult Function(_DismissSuccess value)? dismissSuccess,
    TResult Function(_OpenFailure value)? openFailure,
    TResult Function(_OpenSuccess value)? openSuccess,
  }) {
    return likeFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_LikeFailure value)? likeFailure,
    TResult Function(_LikeSuccess value)? likeSuccess,
    TResult Function(_ShareFailure value)? shareFailure,
    TResult Function(_ShareOpened value)? shareOpened,
    TResult Function(_DismissFailure value)? dismissFailure,
    TResult Function(_DismissSuccess value)? dismissSuccess,
    TResult Function(_OpenFailure value)? openFailure,
    TResult Function(_OpenSuccess value)? openSuccess,
    required TResult orElse(),
  }) {
    if (likeFailure != null) {
      return likeFailure(this);
    }
    return orElse();
  }
}

abstract class _LikeFailure implements UserArticleEngagementActorState {
  const factory _LikeFailure(
          UserArticleEngagementFailure userArticleEngagementFailure) =
      _$_LikeFailure;

  UserArticleEngagementFailure get userArticleEngagementFailure;
  @JsonKey(ignore: true)
  _$LikeFailureCopyWith<_LikeFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LikeSuccessCopyWith<$Res> {
  factory _$LikeSuccessCopyWith(
          _LikeSuccess value, $Res Function(_LikeSuccess) then) =
      __$LikeSuccessCopyWithImpl<$Res>;
  $Res call({UserArticleEngagement updatedUserArticleEngagement});

  $UserArticleEngagementCopyWith<$Res> get updatedUserArticleEngagement;
}

/// @nodoc
class __$LikeSuccessCopyWithImpl<$Res>
    extends _$UserArticleEngagementActorStateCopyWithImpl<$Res>
    implements _$LikeSuccessCopyWith<$Res> {
  __$LikeSuccessCopyWithImpl(
      _LikeSuccess _value, $Res Function(_LikeSuccess) _then)
      : super(_value, (v) => _then(v as _LikeSuccess));

  @override
  _LikeSuccess get _value => super._value as _LikeSuccess;

  @override
  $Res call({
    Object? updatedUserArticleEngagement = freezed,
  }) {
    return _then(_LikeSuccess(
      updatedUserArticleEngagement == freezed
          ? _value.updatedUserArticleEngagement
          : updatedUserArticleEngagement // ignore: cast_nullable_to_non_nullable
              as UserArticleEngagement,
    ));
  }

  @override
  $UserArticleEngagementCopyWith<$Res> get updatedUserArticleEngagement {
    return $UserArticleEngagementCopyWith<$Res>(
        _value.updatedUserArticleEngagement, (value) {
      return _then(_value.copyWith(updatedUserArticleEngagement: value));
    });
  }
}

/// @nodoc

class _$_LikeSuccess implements _LikeSuccess {
  const _$_LikeSuccess(this.updatedUserArticleEngagement);

  @override
  final UserArticleEngagement updatedUserArticleEngagement;

  @override
  String toString() {
    return 'UserArticleEngagementActorState.likeSuccess(updatedUserArticleEngagement: $updatedUserArticleEngagement)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LikeSuccess &&
            (identical(other.updatedUserArticleEngagement,
                    updatedUserArticleEngagement) ||
                other.updatedUserArticleEngagement ==
                    updatedUserArticleEngagement));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updatedUserArticleEngagement);

  @JsonKey(ignore: true)
  @override
  _$LikeSuccessCopyWith<_LikeSuccess> get copyWith =>
      __$LikeSuccessCopyWithImpl<_LikeSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(
            UserArticleEngagementFailure userArticleEngagementFailure)
        likeFailure,
    required TResult Function(
            UserArticleEngagement updatedUserArticleEngagement)
        likeSuccess,
    required TResult Function(
            UserArticleEngagementFailure userArticleEngagementFailure)
        shareFailure,
    required TResult Function(UserArticleEngagement userArticleEngagement)
        shareOpened,
    required TResult Function(
            UserArticleEngagementFailure userArticleEngagementFailure)
        dismissFailure,
    required TResult Function(UserArticleEngagement userArticleEngagement)
        dismissSuccess,
    required TResult Function(
            UserArticleEngagementFailure userArticleEngagementFailure)
        openFailure,
    required TResult Function(UserArticleEngagement userArticleEngagement)
        openSuccess,
  }) {
    return likeSuccess(updatedUserArticleEngagement);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        likeFailure,
    TResult Function(UserArticleEngagement updatedUserArticleEngagement)?
        likeSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        shareFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)? shareOpened,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        dismissFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)?
        dismissSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        openFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)? openSuccess,
  }) {
    return likeSuccess?.call(updatedUserArticleEngagement);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        likeFailure,
    TResult Function(UserArticleEngagement updatedUserArticleEngagement)?
        likeSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        shareFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)? shareOpened,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        dismissFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)?
        dismissSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        openFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)? openSuccess,
    required TResult orElse(),
  }) {
    if (likeSuccess != null) {
      return likeSuccess(updatedUserArticleEngagement);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_LikeFailure value) likeFailure,
    required TResult Function(_LikeSuccess value) likeSuccess,
    required TResult Function(_ShareFailure value) shareFailure,
    required TResult Function(_ShareOpened value) shareOpened,
    required TResult Function(_DismissFailure value) dismissFailure,
    required TResult Function(_DismissSuccess value) dismissSuccess,
    required TResult Function(_OpenFailure value) openFailure,
    required TResult Function(_OpenSuccess value) openSuccess,
  }) {
    return likeSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_LikeFailure value)? likeFailure,
    TResult Function(_LikeSuccess value)? likeSuccess,
    TResult Function(_ShareFailure value)? shareFailure,
    TResult Function(_ShareOpened value)? shareOpened,
    TResult Function(_DismissFailure value)? dismissFailure,
    TResult Function(_DismissSuccess value)? dismissSuccess,
    TResult Function(_OpenFailure value)? openFailure,
    TResult Function(_OpenSuccess value)? openSuccess,
  }) {
    return likeSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_LikeFailure value)? likeFailure,
    TResult Function(_LikeSuccess value)? likeSuccess,
    TResult Function(_ShareFailure value)? shareFailure,
    TResult Function(_ShareOpened value)? shareOpened,
    TResult Function(_DismissFailure value)? dismissFailure,
    TResult Function(_DismissSuccess value)? dismissSuccess,
    TResult Function(_OpenFailure value)? openFailure,
    TResult Function(_OpenSuccess value)? openSuccess,
    required TResult orElse(),
  }) {
    if (likeSuccess != null) {
      return likeSuccess(this);
    }
    return orElse();
  }
}

abstract class _LikeSuccess implements UserArticleEngagementActorState {
  const factory _LikeSuccess(
      UserArticleEngagement updatedUserArticleEngagement) = _$_LikeSuccess;

  UserArticleEngagement get updatedUserArticleEngagement;
  @JsonKey(ignore: true)
  _$LikeSuccessCopyWith<_LikeSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ShareFailureCopyWith<$Res> {
  factory _$ShareFailureCopyWith(
          _ShareFailure value, $Res Function(_ShareFailure) then) =
      __$ShareFailureCopyWithImpl<$Res>;
  $Res call({UserArticleEngagementFailure userArticleEngagementFailure});

  $UserArticleEngagementFailureCopyWith<$Res> get userArticleEngagementFailure;
}

/// @nodoc
class __$ShareFailureCopyWithImpl<$Res>
    extends _$UserArticleEngagementActorStateCopyWithImpl<$Res>
    implements _$ShareFailureCopyWith<$Res> {
  __$ShareFailureCopyWithImpl(
      _ShareFailure _value, $Res Function(_ShareFailure) _then)
      : super(_value, (v) => _then(v as _ShareFailure));

  @override
  _ShareFailure get _value => super._value as _ShareFailure;

  @override
  $Res call({
    Object? userArticleEngagementFailure = freezed,
  }) {
    return _then(_ShareFailure(
      userArticleEngagementFailure == freezed
          ? _value.userArticleEngagementFailure
          : userArticleEngagementFailure // ignore: cast_nullable_to_non_nullable
              as UserArticleEngagementFailure,
    ));
  }

  @override
  $UserArticleEngagementFailureCopyWith<$Res> get userArticleEngagementFailure {
    return $UserArticleEngagementFailureCopyWith<$Res>(
        _value.userArticleEngagementFailure, (value) {
      return _then(_value.copyWith(userArticleEngagementFailure: value));
    });
  }
}

/// @nodoc

class _$_ShareFailure implements _ShareFailure {
  const _$_ShareFailure(this.userArticleEngagementFailure);

  @override
  final UserArticleEngagementFailure userArticleEngagementFailure;

  @override
  String toString() {
    return 'UserArticleEngagementActorState.shareFailure(userArticleEngagementFailure: $userArticleEngagementFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShareFailure &&
            (identical(other.userArticleEngagementFailure,
                    userArticleEngagementFailure) ||
                other.userArticleEngagementFailure ==
                    userArticleEngagementFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userArticleEngagementFailure);

  @JsonKey(ignore: true)
  @override
  _$ShareFailureCopyWith<_ShareFailure> get copyWith =>
      __$ShareFailureCopyWithImpl<_ShareFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(
            UserArticleEngagementFailure userArticleEngagementFailure)
        likeFailure,
    required TResult Function(
            UserArticleEngagement updatedUserArticleEngagement)
        likeSuccess,
    required TResult Function(
            UserArticleEngagementFailure userArticleEngagementFailure)
        shareFailure,
    required TResult Function(UserArticleEngagement userArticleEngagement)
        shareOpened,
    required TResult Function(
            UserArticleEngagementFailure userArticleEngagementFailure)
        dismissFailure,
    required TResult Function(UserArticleEngagement userArticleEngagement)
        dismissSuccess,
    required TResult Function(
            UserArticleEngagementFailure userArticleEngagementFailure)
        openFailure,
    required TResult Function(UserArticleEngagement userArticleEngagement)
        openSuccess,
  }) {
    return shareFailure(userArticleEngagementFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        likeFailure,
    TResult Function(UserArticleEngagement updatedUserArticleEngagement)?
        likeSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        shareFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)? shareOpened,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        dismissFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)?
        dismissSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        openFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)? openSuccess,
  }) {
    return shareFailure?.call(userArticleEngagementFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        likeFailure,
    TResult Function(UserArticleEngagement updatedUserArticleEngagement)?
        likeSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        shareFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)? shareOpened,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        dismissFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)?
        dismissSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        openFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)? openSuccess,
    required TResult orElse(),
  }) {
    if (shareFailure != null) {
      return shareFailure(userArticleEngagementFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_LikeFailure value) likeFailure,
    required TResult Function(_LikeSuccess value) likeSuccess,
    required TResult Function(_ShareFailure value) shareFailure,
    required TResult Function(_ShareOpened value) shareOpened,
    required TResult Function(_DismissFailure value) dismissFailure,
    required TResult Function(_DismissSuccess value) dismissSuccess,
    required TResult Function(_OpenFailure value) openFailure,
    required TResult Function(_OpenSuccess value) openSuccess,
  }) {
    return shareFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_LikeFailure value)? likeFailure,
    TResult Function(_LikeSuccess value)? likeSuccess,
    TResult Function(_ShareFailure value)? shareFailure,
    TResult Function(_ShareOpened value)? shareOpened,
    TResult Function(_DismissFailure value)? dismissFailure,
    TResult Function(_DismissSuccess value)? dismissSuccess,
    TResult Function(_OpenFailure value)? openFailure,
    TResult Function(_OpenSuccess value)? openSuccess,
  }) {
    return shareFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_LikeFailure value)? likeFailure,
    TResult Function(_LikeSuccess value)? likeSuccess,
    TResult Function(_ShareFailure value)? shareFailure,
    TResult Function(_ShareOpened value)? shareOpened,
    TResult Function(_DismissFailure value)? dismissFailure,
    TResult Function(_DismissSuccess value)? dismissSuccess,
    TResult Function(_OpenFailure value)? openFailure,
    TResult Function(_OpenSuccess value)? openSuccess,
    required TResult orElse(),
  }) {
    if (shareFailure != null) {
      return shareFailure(this);
    }
    return orElse();
  }
}

abstract class _ShareFailure implements UserArticleEngagementActorState {
  const factory _ShareFailure(
          UserArticleEngagementFailure userArticleEngagementFailure) =
      _$_ShareFailure;

  UserArticleEngagementFailure get userArticleEngagementFailure;
  @JsonKey(ignore: true)
  _$ShareFailureCopyWith<_ShareFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ShareOpenedCopyWith<$Res> {
  factory _$ShareOpenedCopyWith(
          _ShareOpened value, $Res Function(_ShareOpened) then) =
      __$ShareOpenedCopyWithImpl<$Res>;
  $Res call({UserArticleEngagement userArticleEngagement});

  $UserArticleEngagementCopyWith<$Res> get userArticleEngagement;
}

/// @nodoc
class __$ShareOpenedCopyWithImpl<$Res>
    extends _$UserArticleEngagementActorStateCopyWithImpl<$Res>
    implements _$ShareOpenedCopyWith<$Res> {
  __$ShareOpenedCopyWithImpl(
      _ShareOpened _value, $Res Function(_ShareOpened) _then)
      : super(_value, (v) => _then(v as _ShareOpened));

  @override
  _ShareOpened get _value => super._value as _ShareOpened;

  @override
  $Res call({
    Object? userArticleEngagement = freezed,
  }) {
    return _then(_ShareOpened(
      userArticleEngagement == freezed
          ? _value.userArticleEngagement
          : userArticleEngagement // ignore: cast_nullable_to_non_nullable
              as UserArticleEngagement,
    ));
  }

  @override
  $UserArticleEngagementCopyWith<$Res> get userArticleEngagement {
    return $UserArticleEngagementCopyWith<$Res>(_value.userArticleEngagement,
        (value) {
      return _then(_value.copyWith(userArticleEngagement: value));
    });
  }
}

/// @nodoc

class _$_ShareOpened implements _ShareOpened {
  const _$_ShareOpened(this.userArticleEngagement);

  @override
  final UserArticleEngagement userArticleEngagement;

  @override
  String toString() {
    return 'UserArticleEngagementActorState.shareOpened(userArticleEngagement: $userArticleEngagement)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShareOpened &&
            (identical(other.userArticleEngagement, userArticleEngagement) ||
                other.userArticleEngagement == userArticleEngagement));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userArticleEngagement);

  @JsonKey(ignore: true)
  @override
  _$ShareOpenedCopyWith<_ShareOpened> get copyWith =>
      __$ShareOpenedCopyWithImpl<_ShareOpened>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(
            UserArticleEngagementFailure userArticleEngagementFailure)
        likeFailure,
    required TResult Function(
            UserArticleEngagement updatedUserArticleEngagement)
        likeSuccess,
    required TResult Function(
            UserArticleEngagementFailure userArticleEngagementFailure)
        shareFailure,
    required TResult Function(UserArticleEngagement userArticleEngagement)
        shareOpened,
    required TResult Function(
            UserArticleEngagementFailure userArticleEngagementFailure)
        dismissFailure,
    required TResult Function(UserArticleEngagement userArticleEngagement)
        dismissSuccess,
    required TResult Function(
            UserArticleEngagementFailure userArticleEngagementFailure)
        openFailure,
    required TResult Function(UserArticleEngagement userArticleEngagement)
        openSuccess,
  }) {
    return shareOpened(userArticleEngagement);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        likeFailure,
    TResult Function(UserArticleEngagement updatedUserArticleEngagement)?
        likeSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        shareFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)? shareOpened,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        dismissFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)?
        dismissSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        openFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)? openSuccess,
  }) {
    return shareOpened?.call(userArticleEngagement);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        likeFailure,
    TResult Function(UserArticleEngagement updatedUserArticleEngagement)?
        likeSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        shareFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)? shareOpened,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        dismissFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)?
        dismissSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        openFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)? openSuccess,
    required TResult orElse(),
  }) {
    if (shareOpened != null) {
      return shareOpened(userArticleEngagement);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_LikeFailure value) likeFailure,
    required TResult Function(_LikeSuccess value) likeSuccess,
    required TResult Function(_ShareFailure value) shareFailure,
    required TResult Function(_ShareOpened value) shareOpened,
    required TResult Function(_DismissFailure value) dismissFailure,
    required TResult Function(_DismissSuccess value) dismissSuccess,
    required TResult Function(_OpenFailure value) openFailure,
    required TResult Function(_OpenSuccess value) openSuccess,
  }) {
    return shareOpened(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_LikeFailure value)? likeFailure,
    TResult Function(_LikeSuccess value)? likeSuccess,
    TResult Function(_ShareFailure value)? shareFailure,
    TResult Function(_ShareOpened value)? shareOpened,
    TResult Function(_DismissFailure value)? dismissFailure,
    TResult Function(_DismissSuccess value)? dismissSuccess,
    TResult Function(_OpenFailure value)? openFailure,
    TResult Function(_OpenSuccess value)? openSuccess,
  }) {
    return shareOpened?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_LikeFailure value)? likeFailure,
    TResult Function(_LikeSuccess value)? likeSuccess,
    TResult Function(_ShareFailure value)? shareFailure,
    TResult Function(_ShareOpened value)? shareOpened,
    TResult Function(_DismissFailure value)? dismissFailure,
    TResult Function(_DismissSuccess value)? dismissSuccess,
    TResult Function(_OpenFailure value)? openFailure,
    TResult Function(_OpenSuccess value)? openSuccess,
    required TResult orElse(),
  }) {
    if (shareOpened != null) {
      return shareOpened(this);
    }
    return orElse();
  }
}

abstract class _ShareOpened implements UserArticleEngagementActorState {
  const factory _ShareOpened(UserArticleEngagement userArticleEngagement) =
      _$_ShareOpened;

  UserArticleEngagement get userArticleEngagement;
  @JsonKey(ignore: true)
  _$ShareOpenedCopyWith<_ShareOpened> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DismissFailureCopyWith<$Res> {
  factory _$DismissFailureCopyWith(
          _DismissFailure value, $Res Function(_DismissFailure) then) =
      __$DismissFailureCopyWithImpl<$Res>;
  $Res call({UserArticleEngagementFailure userArticleEngagementFailure});

  $UserArticleEngagementFailureCopyWith<$Res> get userArticleEngagementFailure;
}

/// @nodoc
class __$DismissFailureCopyWithImpl<$Res>
    extends _$UserArticleEngagementActorStateCopyWithImpl<$Res>
    implements _$DismissFailureCopyWith<$Res> {
  __$DismissFailureCopyWithImpl(
      _DismissFailure _value, $Res Function(_DismissFailure) _then)
      : super(_value, (v) => _then(v as _DismissFailure));

  @override
  _DismissFailure get _value => super._value as _DismissFailure;

  @override
  $Res call({
    Object? userArticleEngagementFailure = freezed,
  }) {
    return _then(_DismissFailure(
      userArticleEngagementFailure == freezed
          ? _value.userArticleEngagementFailure
          : userArticleEngagementFailure // ignore: cast_nullable_to_non_nullable
              as UserArticleEngagementFailure,
    ));
  }

  @override
  $UserArticleEngagementFailureCopyWith<$Res> get userArticleEngagementFailure {
    return $UserArticleEngagementFailureCopyWith<$Res>(
        _value.userArticleEngagementFailure, (value) {
      return _then(_value.copyWith(userArticleEngagementFailure: value));
    });
  }
}

/// @nodoc

class _$_DismissFailure implements _DismissFailure {
  const _$_DismissFailure(this.userArticleEngagementFailure);

  @override
  final UserArticleEngagementFailure userArticleEngagementFailure;

  @override
  String toString() {
    return 'UserArticleEngagementActorState.dismissFailure(userArticleEngagementFailure: $userArticleEngagementFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DismissFailure &&
            (identical(other.userArticleEngagementFailure,
                    userArticleEngagementFailure) ||
                other.userArticleEngagementFailure ==
                    userArticleEngagementFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userArticleEngagementFailure);

  @JsonKey(ignore: true)
  @override
  _$DismissFailureCopyWith<_DismissFailure> get copyWith =>
      __$DismissFailureCopyWithImpl<_DismissFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(
            UserArticleEngagementFailure userArticleEngagementFailure)
        likeFailure,
    required TResult Function(
            UserArticleEngagement updatedUserArticleEngagement)
        likeSuccess,
    required TResult Function(
            UserArticleEngagementFailure userArticleEngagementFailure)
        shareFailure,
    required TResult Function(UserArticleEngagement userArticleEngagement)
        shareOpened,
    required TResult Function(
            UserArticleEngagementFailure userArticleEngagementFailure)
        dismissFailure,
    required TResult Function(UserArticleEngagement userArticleEngagement)
        dismissSuccess,
    required TResult Function(
            UserArticleEngagementFailure userArticleEngagementFailure)
        openFailure,
    required TResult Function(UserArticleEngagement userArticleEngagement)
        openSuccess,
  }) {
    return dismissFailure(userArticleEngagementFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        likeFailure,
    TResult Function(UserArticleEngagement updatedUserArticleEngagement)?
        likeSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        shareFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)? shareOpened,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        dismissFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)?
        dismissSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        openFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)? openSuccess,
  }) {
    return dismissFailure?.call(userArticleEngagementFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        likeFailure,
    TResult Function(UserArticleEngagement updatedUserArticleEngagement)?
        likeSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        shareFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)? shareOpened,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        dismissFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)?
        dismissSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        openFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)? openSuccess,
    required TResult orElse(),
  }) {
    if (dismissFailure != null) {
      return dismissFailure(userArticleEngagementFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_LikeFailure value) likeFailure,
    required TResult Function(_LikeSuccess value) likeSuccess,
    required TResult Function(_ShareFailure value) shareFailure,
    required TResult Function(_ShareOpened value) shareOpened,
    required TResult Function(_DismissFailure value) dismissFailure,
    required TResult Function(_DismissSuccess value) dismissSuccess,
    required TResult Function(_OpenFailure value) openFailure,
    required TResult Function(_OpenSuccess value) openSuccess,
  }) {
    return dismissFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_LikeFailure value)? likeFailure,
    TResult Function(_LikeSuccess value)? likeSuccess,
    TResult Function(_ShareFailure value)? shareFailure,
    TResult Function(_ShareOpened value)? shareOpened,
    TResult Function(_DismissFailure value)? dismissFailure,
    TResult Function(_DismissSuccess value)? dismissSuccess,
    TResult Function(_OpenFailure value)? openFailure,
    TResult Function(_OpenSuccess value)? openSuccess,
  }) {
    return dismissFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_LikeFailure value)? likeFailure,
    TResult Function(_LikeSuccess value)? likeSuccess,
    TResult Function(_ShareFailure value)? shareFailure,
    TResult Function(_ShareOpened value)? shareOpened,
    TResult Function(_DismissFailure value)? dismissFailure,
    TResult Function(_DismissSuccess value)? dismissSuccess,
    TResult Function(_OpenFailure value)? openFailure,
    TResult Function(_OpenSuccess value)? openSuccess,
    required TResult orElse(),
  }) {
    if (dismissFailure != null) {
      return dismissFailure(this);
    }
    return orElse();
  }
}

abstract class _DismissFailure implements UserArticleEngagementActorState {
  const factory _DismissFailure(
          UserArticleEngagementFailure userArticleEngagementFailure) =
      _$_DismissFailure;

  UserArticleEngagementFailure get userArticleEngagementFailure;
  @JsonKey(ignore: true)
  _$DismissFailureCopyWith<_DismissFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DismissSuccessCopyWith<$Res> {
  factory _$DismissSuccessCopyWith(
          _DismissSuccess value, $Res Function(_DismissSuccess) then) =
      __$DismissSuccessCopyWithImpl<$Res>;
  $Res call({UserArticleEngagement userArticleEngagement});

  $UserArticleEngagementCopyWith<$Res> get userArticleEngagement;
}

/// @nodoc
class __$DismissSuccessCopyWithImpl<$Res>
    extends _$UserArticleEngagementActorStateCopyWithImpl<$Res>
    implements _$DismissSuccessCopyWith<$Res> {
  __$DismissSuccessCopyWithImpl(
      _DismissSuccess _value, $Res Function(_DismissSuccess) _then)
      : super(_value, (v) => _then(v as _DismissSuccess));

  @override
  _DismissSuccess get _value => super._value as _DismissSuccess;

  @override
  $Res call({
    Object? userArticleEngagement = freezed,
  }) {
    return _then(_DismissSuccess(
      userArticleEngagement == freezed
          ? _value.userArticleEngagement
          : userArticleEngagement // ignore: cast_nullable_to_non_nullable
              as UserArticleEngagement,
    ));
  }

  @override
  $UserArticleEngagementCopyWith<$Res> get userArticleEngagement {
    return $UserArticleEngagementCopyWith<$Res>(_value.userArticleEngagement,
        (value) {
      return _then(_value.copyWith(userArticleEngagement: value));
    });
  }
}

/// @nodoc

class _$_DismissSuccess implements _DismissSuccess {
  const _$_DismissSuccess(this.userArticleEngagement);

  @override
  final UserArticleEngagement userArticleEngagement;

  @override
  String toString() {
    return 'UserArticleEngagementActorState.dismissSuccess(userArticleEngagement: $userArticleEngagement)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DismissSuccess &&
            (identical(other.userArticleEngagement, userArticleEngagement) ||
                other.userArticleEngagement == userArticleEngagement));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userArticleEngagement);

  @JsonKey(ignore: true)
  @override
  _$DismissSuccessCopyWith<_DismissSuccess> get copyWith =>
      __$DismissSuccessCopyWithImpl<_DismissSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(
            UserArticleEngagementFailure userArticleEngagementFailure)
        likeFailure,
    required TResult Function(
            UserArticleEngagement updatedUserArticleEngagement)
        likeSuccess,
    required TResult Function(
            UserArticleEngagementFailure userArticleEngagementFailure)
        shareFailure,
    required TResult Function(UserArticleEngagement userArticleEngagement)
        shareOpened,
    required TResult Function(
            UserArticleEngagementFailure userArticleEngagementFailure)
        dismissFailure,
    required TResult Function(UserArticleEngagement userArticleEngagement)
        dismissSuccess,
    required TResult Function(
            UserArticleEngagementFailure userArticleEngagementFailure)
        openFailure,
    required TResult Function(UserArticleEngagement userArticleEngagement)
        openSuccess,
  }) {
    return dismissSuccess(userArticleEngagement);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        likeFailure,
    TResult Function(UserArticleEngagement updatedUserArticleEngagement)?
        likeSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        shareFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)? shareOpened,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        dismissFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)?
        dismissSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        openFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)? openSuccess,
  }) {
    return dismissSuccess?.call(userArticleEngagement);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        likeFailure,
    TResult Function(UserArticleEngagement updatedUserArticleEngagement)?
        likeSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        shareFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)? shareOpened,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        dismissFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)?
        dismissSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        openFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)? openSuccess,
    required TResult orElse(),
  }) {
    if (dismissSuccess != null) {
      return dismissSuccess(userArticleEngagement);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_LikeFailure value) likeFailure,
    required TResult Function(_LikeSuccess value) likeSuccess,
    required TResult Function(_ShareFailure value) shareFailure,
    required TResult Function(_ShareOpened value) shareOpened,
    required TResult Function(_DismissFailure value) dismissFailure,
    required TResult Function(_DismissSuccess value) dismissSuccess,
    required TResult Function(_OpenFailure value) openFailure,
    required TResult Function(_OpenSuccess value) openSuccess,
  }) {
    return dismissSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_LikeFailure value)? likeFailure,
    TResult Function(_LikeSuccess value)? likeSuccess,
    TResult Function(_ShareFailure value)? shareFailure,
    TResult Function(_ShareOpened value)? shareOpened,
    TResult Function(_DismissFailure value)? dismissFailure,
    TResult Function(_DismissSuccess value)? dismissSuccess,
    TResult Function(_OpenFailure value)? openFailure,
    TResult Function(_OpenSuccess value)? openSuccess,
  }) {
    return dismissSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_LikeFailure value)? likeFailure,
    TResult Function(_LikeSuccess value)? likeSuccess,
    TResult Function(_ShareFailure value)? shareFailure,
    TResult Function(_ShareOpened value)? shareOpened,
    TResult Function(_DismissFailure value)? dismissFailure,
    TResult Function(_DismissSuccess value)? dismissSuccess,
    TResult Function(_OpenFailure value)? openFailure,
    TResult Function(_OpenSuccess value)? openSuccess,
    required TResult orElse(),
  }) {
    if (dismissSuccess != null) {
      return dismissSuccess(this);
    }
    return orElse();
  }
}

abstract class _DismissSuccess implements UserArticleEngagementActorState {
  const factory _DismissSuccess(UserArticleEngagement userArticleEngagement) =
      _$_DismissSuccess;

  UserArticleEngagement get userArticleEngagement;
  @JsonKey(ignore: true)
  _$DismissSuccessCopyWith<_DismissSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OpenFailureCopyWith<$Res> {
  factory _$OpenFailureCopyWith(
          _OpenFailure value, $Res Function(_OpenFailure) then) =
      __$OpenFailureCopyWithImpl<$Res>;
  $Res call({UserArticleEngagementFailure userArticleEngagementFailure});

  $UserArticleEngagementFailureCopyWith<$Res> get userArticleEngagementFailure;
}

/// @nodoc
class __$OpenFailureCopyWithImpl<$Res>
    extends _$UserArticleEngagementActorStateCopyWithImpl<$Res>
    implements _$OpenFailureCopyWith<$Res> {
  __$OpenFailureCopyWithImpl(
      _OpenFailure _value, $Res Function(_OpenFailure) _then)
      : super(_value, (v) => _then(v as _OpenFailure));

  @override
  _OpenFailure get _value => super._value as _OpenFailure;

  @override
  $Res call({
    Object? userArticleEngagementFailure = freezed,
  }) {
    return _then(_OpenFailure(
      userArticleEngagementFailure == freezed
          ? _value.userArticleEngagementFailure
          : userArticleEngagementFailure // ignore: cast_nullable_to_non_nullable
              as UserArticleEngagementFailure,
    ));
  }

  @override
  $UserArticleEngagementFailureCopyWith<$Res> get userArticleEngagementFailure {
    return $UserArticleEngagementFailureCopyWith<$Res>(
        _value.userArticleEngagementFailure, (value) {
      return _then(_value.copyWith(userArticleEngagementFailure: value));
    });
  }
}

/// @nodoc

class _$_OpenFailure implements _OpenFailure {
  const _$_OpenFailure(this.userArticleEngagementFailure);

  @override
  final UserArticleEngagementFailure userArticleEngagementFailure;

  @override
  String toString() {
    return 'UserArticleEngagementActorState.openFailure(userArticleEngagementFailure: $userArticleEngagementFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OpenFailure &&
            (identical(other.userArticleEngagementFailure,
                    userArticleEngagementFailure) ||
                other.userArticleEngagementFailure ==
                    userArticleEngagementFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userArticleEngagementFailure);

  @JsonKey(ignore: true)
  @override
  _$OpenFailureCopyWith<_OpenFailure> get copyWith =>
      __$OpenFailureCopyWithImpl<_OpenFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(
            UserArticleEngagementFailure userArticleEngagementFailure)
        likeFailure,
    required TResult Function(
            UserArticleEngagement updatedUserArticleEngagement)
        likeSuccess,
    required TResult Function(
            UserArticleEngagementFailure userArticleEngagementFailure)
        shareFailure,
    required TResult Function(UserArticleEngagement userArticleEngagement)
        shareOpened,
    required TResult Function(
            UserArticleEngagementFailure userArticleEngagementFailure)
        dismissFailure,
    required TResult Function(UserArticleEngagement userArticleEngagement)
        dismissSuccess,
    required TResult Function(
            UserArticleEngagementFailure userArticleEngagementFailure)
        openFailure,
    required TResult Function(UserArticleEngagement userArticleEngagement)
        openSuccess,
  }) {
    return openFailure(userArticleEngagementFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        likeFailure,
    TResult Function(UserArticleEngagement updatedUserArticleEngagement)?
        likeSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        shareFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)? shareOpened,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        dismissFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)?
        dismissSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        openFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)? openSuccess,
  }) {
    return openFailure?.call(userArticleEngagementFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        likeFailure,
    TResult Function(UserArticleEngagement updatedUserArticleEngagement)?
        likeSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        shareFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)? shareOpened,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        dismissFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)?
        dismissSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        openFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)? openSuccess,
    required TResult orElse(),
  }) {
    if (openFailure != null) {
      return openFailure(userArticleEngagementFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_LikeFailure value) likeFailure,
    required TResult Function(_LikeSuccess value) likeSuccess,
    required TResult Function(_ShareFailure value) shareFailure,
    required TResult Function(_ShareOpened value) shareOpened,
    required TResult Function(_DismissFailure value) dismissFailure,
    required TResult Function(_DismissSuccess value) dismissSuccess,
    required TResult Function(_OpenFailure value) openFailure,
    required TResult Function(_OpenSuccess value) openSuccess,
  }) {
    return openFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_LikeFailure value)? likeFailure,
    TResult Function(_LikeSuccess value)? likeSuccess,
    TResult Function(_ShareFailure value)? shareFailure,
    TResult Function(_ShareOpened value)? shareOpened,
    TResult Function(_DismissFailure value)? dismissFailure,
    TResult Function(_DismissSuccess value)? dismissSuccess,
    TResult Function(_OpenFailure value)? openFailure,
    TResult Function(_OpenSuccess value)? openSuccess,
  }) {
    return openFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_LikeFailure value)? likeFailure,
    TResult Function(_LikeSuccess value)? likeSuccess,
    TResult Function(_ShareFailure value)? shareFailure,
    TResult Function(_ShareOpened value)? shareOpened,
    TResult Function(_DismissFailure value)? dismissFailure,
    TResult Function(_DismissSuccess value)? dismissSuccess,
    TResult Function(_OpenFailure value)? openFailure,
    TResult Function(_OpenSuccess value)? openSuccess,
    required TResult orElse(),
  }) {
    if (openFailure != null) {
      return openFailure(this);
    }
    return orElse();
  }
}

abstract class _OpenFailure implements UserArticleEngagementActorState {
  const factory _OpenFailure(
          UserArticleEngagementFailure userArticleEngagementFailure) =
      _$_OpenFailure;

  UserArticleEngagementFailure get userArticleEngagementFailure;
  @JsonKey(ignore: true)
  _$OpenFailureCopyWith<_OpenFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OpenSuccessCopyWith<$Res> {
  factory _$OpenSuccessCopyWith(
          _OpenSuccess value, $Res Function(_OpenSuccess) then) =
      __$OpenSuccessCopyWithImpl<$Res>;
  $Res call({UserArticleEngagement userArticleEngagement});

  $UserArticleEngagementCopyWith<$Res> get userArticleEngagement;
}

/// @nodoc
class __$OpenSuccessCopyWithImpl<$Res>
    extends _$UserArticleEngagementActorStateCopyWithImpl<$Res>
    implements _$OpenSuccessCopyWith<$Res> {
  __$OpenSuccessCopyWithImpl(
      _OpenSuccess _value, $Res Function(_OpenSuccess) _then)
      : super(_value, (v) => _then(v as _OpenSuccess));

  @override
  _OpenSuccess get _value => super._value as _OpenSuccess;

  @override
  $Res call({
    Object? userArticleEngagement = freezed,
  }) {
    return _then(_OpenSuccess(
      userArticleEngagement == freezed
          ? _value.userArticleEngagement
          : userArticleEngagement // ignore: cast_nullable_to_non_nullable
              as UserArticleEngagement,
    ));
  }

  @override
  $UserArticleEngagementCopyWith<$Res> get userArticleEngagement {
    return $UserArticleEngagementCopyWith<$Res>(_value.userArticleEngagement,
        (value) {
      return _then(_value.copyWith(userArticleEngagement: value));
    });
  }
}

/// @nodoc

class _$_OpenSuccess implements _OpenSuccess {
  const _$_OpenSuccess(this.userArticleEngagement);

  @override
  final UserArticleEngagement userArticleEngagement;

  @override
  String toString() {
    return 'UserArticleEngagementActorState.openSuccess(userArticleEngagement: $userArticleEngagement)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OpenSuccess &&
            (identical(other.userArticleEngagement, userArticleEngagement) ||
                other.userArticleEngagement == userArticleEngagement));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userArticleEngagement);

  @JsonKey(ignore: true)
  @override
  _$OpenSuccessCopyWith<_OpenSuccess> get copyWith =>
      __$OpenSuccessCopyWithImpl<_OpenSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(
            UserArticleEngagementFailure userArticleEngagementFailure)
        likeFailure,
    required TResult Function(
            UserArticleEngagement updatedUserArticleEngagement)
        likeSuccess,
    required TResult Function(
            UserArticleEngagementFailure userArticleEngagementFailure)
        shareFailure,
    required TResult Function(UserArticleEngagement userArticleEngagement)
        shareOpened,
    required TResult Function(
            UserArticleEngagementFailure userArticleEngagementFailure)
        dismissFailure,
    required TResult Function(UserArticleEngagement userArticleEngagement)
        dismissSuccess,
    required TResult Function(
            UserArticleEngagementFailure userArticleEngagementFailure)
        openFailure,
    required TResult Function(UserArticleEngagement userArticleEngagement)
        openSuccess,
  }) {
    return openSuccess(userArticleEngagement);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        likeFailure,
    TResult Function(UserArticleEngagement updatedUserArticleEngagement)?
        likeSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        shareFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)? shareOpened,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        dismissFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)?
        dismissSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        openFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)? openSuccess,
  }) {
    return openSuccess?.call(userArticleEngagement);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        likeFailure,
    TResult Function(UserArticleEngagement updatedUserArticleEngagement)?
        likeSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        shareFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)? shareOpened,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        dismissFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)?
        dismissSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        openFailure,
    TResult Function(UserArticleEngagement userArticleEngagement)? openSuccess,
    required TResult orElse(),
  }) {
    if (openSuccess != null) {
      return openSuccess(userArticleEngagement);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_LikeFailure value) likeFailure,
    required TResult Function(_LikeSuccess value) likeSuccess,
    required TResult Function(_ShareFailure value) shareFailure,
    required TResult Function(_ShareOpened value) shareOpened,
    required TResult Function(_DismissFailure value) dismissFailure,
    required TResult Function(_DismissSuccess value) dismissSuccess,
    required TResult Function(_OpenFailure value) openFailure,
    required TResult Function(_OpenSuccess value) openSuccess,
  }) {
    return openSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_LikeFailure value)? likeFailure,
    TResult Function(_LikeSuccess value)? likeSuccess,
    TResult Function(_ShareFailure value)? shareFailure,
    TResult Function(_ShareOpened value)? shareOpened,
    TResult Function(_DismissFailure value)? dismissFailure,
    TResult Function(_DismissSuccess value)? dismissSuccess,
    TResult Function(_OpenFailure value)? openFailure,
    TResult Function(_OpenSuccess value)? openSuccess,
  }) {
    return openSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_LikeFailure value)? likeFailure,
    TResult Function(_LikeSuccess value)? likeSuccess,
    TResult Function(_ShareFailure value)? shareFailure,
    TResult Function(_ShareOpened value)? shareOpened,
    TResult Function(_DismissFailure value)? dismissFailure,
    TResult Function(_DismissSuccess value)? dismissSuccess,
    TResult Function(_OpenFailure value)? openFailure,
    TResult Function(_OpenSuccess value)? openSuccess,
    required TResult orElse(),
  }) {
    if (openSuccess != null) {
      return openSuccess(this);
    }
    return orElse();
  }
}

abstract class _OpenSuccess implements UserArticleEngagementActorState {
  const factory _OpenSuccess(UserArticleEngagement userArticleEngagement) =
      _$_OpenSuccess;

  UserArticleEngagement get userArticleEngagement;
  @JsonKey(ignore: true)
  _$OpenSuccessCopyWith<_OpenSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
