// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_article_engagement_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserArticleEngagementWatcherEventTearOff {
  const _$UserArticleEngagementWatcherEventTearOff();

  _WatchForCurrentUserAndArticlesStarted watchForCurrentUserAndArticlesStarted(
      KtList<Article> articles) {
    return _WatchForCurrentUserAndArticlesStarted(
      articles,
    );
  }

  _ArticlesReceived userArticleEngagementsReceived(
      Either<UserArticleEngagementFailure, KtMap<String, UserArticleEngagement>>
          failureOrUserArticleEngagements) {
    return _ArticlesReceived(
      failureOrUserArticleEngagements,
    );
  }
}

/// @nodoc
const $UserArticleEngagementWatcherEvent =
    _$UserArticleEngagementWatcherEventTearOff();

/// @nodoc
mixin _$UserArticleEngagementWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KtList<Article> articles)
        watchForCurrentUserAndArticlesStarted,
    required TResult Function(
            Either<UserArticleEngagementFailure,
                    KtMap<String, UserArticleEngagement>>
                failureOrUserArticleEngagements)
        userArticleEngagementsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(KtList<Article> articles)?
        watchForCurrentUserAndArticlesStarted,
    TResult Function(
            Either<UserArticleEngagementFailure,
                    KtMap<String, UserArticleEngagement>>
                failureOrUserArticleEngagements)?
        userArticleEngagementsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KtList<Article> articles)?
        watchForCurrentUserAndArticlesStarted,
    TResult Function(
            Either<UserArticleEngagementFailure,
                    KtMap<String, UserArticleEngagement>>
                failureOrUserArticleEngagements)?
        userArticleEngagementsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchForCurrentUserAndArticlesStarted value)
        watchForCurrentUserAndArticlesStarted,
    required TResult Function(_ArticlesReceived value)
        userArticleEngagementsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchForCurrentUserAndArticlesStarted value)?
        watchForCurrentUserAndArticlesStarted,
    TResult Function(_ArticlesReceived value)? userArticleEngagementsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchForCurrentUserAndArticlesStarted value)?
        watchForCurrentUserAndArticlesStarted,
    TResult Function(_ArticlesReceived value)? userArticleEngagementsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserArticleEngagementWatcherEventCopyWith<$Res> {
  factory $UserArticleEngagementWatcherEventCopyWith(
          UserArticleEngagementWatcherEvent value,
          $Res Function(UserArticleEngagementWatcherEvent) then) =
      _$UserArticleEngagementWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserArticleEngagementWatcherEventCopyWithImpl<$Res>
    implements $UserArticleEngagementWatcherEventCopyWith<$Res> {
  _$UserArticleEngagementWatcherEventCopyWithImpl(this._value, this._then);

  final UserArticleEngagementWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(UserArticleEngagementWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchForCurrentUserAndArticlesStartedCopyWith<$Res> {
  factory _$WatchForCurrentUserAndArticlesStartedCopyWith(
          _WatchForCurrentUserAndArticlesStarted value,
          $Res Function(_WatchForCurrentUserAndArticlesStarted) then) =
      __$WatchForCurrentUserAndArticlesStartedCopyWithImpl<$Res>;
  $Res call({KtList<Article> articles});
}

/// @nodoc
class __$WatchForCurrentUserAndArticlesStartedCopyWithImpl<$Res>
    extends _$UserArticleEngagementWatcherEventCopyWithImpl<$Res>
    implements _$WatchForCurrentUserAndArticlesStartedCopyWith<$Res> {
  __$WatchForCurrentUserAndArticlesStartedCopyWithImpl(
      _WatchForCurrentUserAndArticlesStarted _value,
      $Res Function(_WatchForCurrentUserAndArticlesStarted) _then)
      : super(
            _value, (v) => _then(v as _WatchForCurrentUserAndArticlesStarted));

  @override
  _WatchForCurrentUserAndArticlesStarted get _value =>
      super._value as _WatchForCurrentUserAndArticlesStarted;

  @override
  $Res call({
    Object? articles = freezed,
  }) {
    return _then(_WatchForCurrentUserAndArticlesStarted(
      articles == freezed
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as KtList<Article>,
    ));
  }
}

/// @nodoc

class _$_WatchForCurrentUserAndArticlesStarted
    implements _WatchForCurrentUserAndArticlesStarted {
  const _$_WatchForCurrentUserAndArticlesStarted(this.articles);

  @override
  final KtList<Article> articles;

  @override
  String toString() {
    return 'UserArticleEngagementWatcherEvent.watchForCurrentUserAndArticlesStarted(articles: $articles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WatchForCurrentUserAndArticlesStarted &&
            (identical(other.articles, articles) ||
                other.articles == articles));
  }

  @override
  int get hashCode => Object.hash(runtimeType, articles);

  @JsonKey(ignore: true)
  @override
  _$WatchForCurrentUserAndArticlesStartedCopyWith<
          _WatchForCurrentUserAndArticlesStarted>
      get copyWith => __$WatchForCurrentUserAndArticlesStartedCopyWithImpl<
          _WatchForCurrentUserAndArticlesStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KtList<Article> articles)
        watchForCurrentUserAndArticlesStarted,
    required TResult Function(
            Either<UserArticleEngagementFailure,
                    KtMap<String, UserArticleEngagement>>
                failureOrUserArticleEngagements)
        userArticleEngagementsReceived,
  }) {
    return watchForCurrentUserAndArticlesStarted(articles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(KtList<Article> articles)?
        watchForCurrentUserAndArticlesStarted,
    TResult Function(
            Either<UserArticleEngagementFailure,
                    KtMap<String, UserArticleEngagement>>
                failureOrUserArticleEngagements)?
        userArticleEngagementsReceived,
  }) {
    return watchForCurrentUserAndArticlesStarted?.call(articles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KtList<Article> articles)?
        watchForCurrentUserAndArticlesStarted,
    TResult Function(
            Either<UserArticleEngagementFailure,
                    KtMap<String, UserArticleEngagement>>
                failureOrUserArticleEngagements)?
        userArticleEngagementsReceived,
    required TResult orElse(),
  }) {
    if (watchForCurrentUserAndArticlesStarted != null) {
      return watchForCurrentUserAndArticlesStarted(articles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchForCurrentUserAndArticlesStarted value)
        watchForCurrentUserAndArticlesStarted,
    required TResult Function(_ArticlesReceived value)
        userArticleEngagementsReceived,
  }) {
    return watchForCurrentUserAndArticlesStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchForCurrentUserAndArticlesStarted value)?
        watchForCurrentUserAndArticlesStarted,
    TResult Function(_ArticlesReceived value)? userArticleEngagementsReceived,
  }) {
    return watchForCurrentUserAndArticlesStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchForCurrentUserAndArticlesStarted value)?
        watchForCurrentUserAndArticlesStarted,
    TResult Function(_ArticlesReceived value)? userArticleEngagementsReceived,
    required TResult orElse(),
  }) {
    if (watchForCurrentUserAndArticlesStarted != null) {
      return watchForCurrentUserAndArticlesStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchForCurrentUserAndArticlesStarted
    implements UserArticleEngagementWatcherEvent {
  const factory _WatchForCurrentUserAndArticlesStarted(
      KtList<Article> articles) = _$_WatchForCurrentUserAndArticlesStarted;

  KtList<Article> get articles;
  @JsonKey(ignore: true)
  _$WatchForCurrentUserAndArticlesStartedCopyWith<
          _WatchForCurrentUserAndArticlesStarted>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ArticlesReceivedCopyWith<$Res> {
  factory _$ArticlesReceivedCopyWith(
          _ArticlesReceived value, $Res Function(_ArticlesReceived) then) =
      __$ArticlesReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<UserArticleEngagementFailure,
              KtMap<String, UserArticleEngagement>>
          failureOrUserArticleEngagements});
}

/// @nodoc
class __$ArticlesReceivedCopyWithImpl<$Res>
    extends _$UserArticleEngagementWatcherEventCopyWithImpl<$Res>
    implements _$ArticlesReceivedCopyWith<$Res> {
  __$ArticlesReceivedCopyWithImpl(
      _ArticlesReceived _value, $Res Function(_ArticlesReceived) _then)
      : super(_value, (v) => _then(v as _ArticlesReceived));

  @override
  _ArticlesReceived get _value => super._value as _ArticlesReceived;

  @override
  $Res call({
    Object? failureOrUserArticleEngagements = freezed,
  }) {
    return _then(_ArticlesReceived(
      failureOrUserArticleEngagements == freezed
          ? _value.failureOrUserArticleEngagements
          : failureOrUserArticleEngagements // ignore: cast_nullable_to_non_nullable
              as Either<UserArticleEngagementFailure,
                  KtMap<String, UserArticleEngagement>>,
    ));
  }
}

/// @nodoc

class _$_ArticlesReceived implements _ArticlesReceived {
  const _$_ArticlesReceived(this.failureOrUserArticleEngagements);

  @override
  final Either<UserArticleEngagementFailure,
      KtMap<String, UserArticleEngagement>> failureOrUserArticleEngagements;

  @override
  String toString() {
    return 'UserArticleEngagementWatcherEvent.userArticleEngagementsReceived(failureOrUserArticleEngagements: $failureOrUserArticleEngagements)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArticlesReceived &&
            (identical(other.failureOrUserArticleEngagements,
                    failureOrUserArticleEngagements) ||
                other.failureOrUserArticleEngagements ==
                    failureOrUserArticleEngagements));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrUserArticleEngagements);

  @JsonKey(ignore: true)
  @override
  _$ArticlesReceivedCopyWith<_ArticlesReceived> get copyWith =>
      __$ArticlesReceivedCopyWithImpl<_ArticlesReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(KtList<Article> articles)
        watchForCurrentUserAndArticlesStarted,
    required TResult Function(
            Either<UserArticleEngagementFailure,
                    KtMap<String, UserArticleEngagement>>
                failureOrUserArticleEngagements)
        userArticleEngagementsReceived,
  }) {
    return userArticleEngagementsReceived(failureOrUserArticleEngagements);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(KtList<Article> articles)?
        watchForCurrentUserAndArticlesStarted,
    TResult Function(
            Either<UserArticleEngagementFailure,
                    KtMap<String, UserArticleEngagement>>
                failureOrUserArticleEngagements)?
        userArticleEngagementsReceived,
  }) {
    return userArticleEngagementsReceived
        ?.call(failureOrUserArticleEngagements);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(KtList<Article> articles)?
        watchForCurrentUserAndArticlesStarted,
    TResult Function(
            Either<UserArticleEngagementFailure,
                    KtMap<String, UserArticleEngagement>>
                failureOrUserArticleEngagements)?
        userArticleEngagementsReceived,
    required TResult orElse(),
  }) {
    if (userArticleEngagementsReceived != null) {
      return userArticleEngagementsReceived(failureOrUserArticleEngagements);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchForCurrentUserAndArticlesStarted value)
        watchForCurrentUserAndArticlesStarted,
    required TResult Function(_ArticlesReceived value)
        userArticleEngagementsReceived,
  }) {
    return userArticleEngagementsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchForCurrentUserAndArticlesStarted value)?
        watchForCurrentUserAndArticlesStarted,
    TResult Function(_ArticlesReceived value)? userArticleEngagementsReceived,
  }) {
    return userArticleEngagementsReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchForCurrentUserAndArticlesStarted value)?
        watchForCurrentUserAndArticlesStarted,
    TResult Function(_ArticlesReceived value)? userArticleEngagementsReceived,
    required TResult orElse(),
  }) {
    if (userArticleEngagementsReceived != null) {
      return userArticleEngagementsReceived(this);
    }
    return orElse();
  }
}

abstract class _ArticlesReceived implements UserArticleEngagementWatcherEvent {
  const factory _ArticlesReceived(
      Either<UserArticleEngagementFailure, KtMap<String, UserArticleEngagement>>
          failureOrUserArticleEngagements) = _$_ArticlesReceived;

  Either<UserArticleEngagementFailure, KtMap<String, UserArticleEngagement>>
      get failureOrUserArticleEngagements;
  @JsonKey(ignore: true)
  _$ArticlesReceivedCopyWith<_ArticlesReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$UserArticleEngagementWatcherStateTearOff {
  const _$UserArticleEngagementWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(
      KtMap<String, UserArticleEngagement> userArticleEngagements) {
    return _LoadSuccess(
      userArticleEngagements,
    );
  }

  _LoadFailure loadFailure(
      UserArticleEngagementFailure userArticleEngagementFailure) {
    return _LoadFailure(
      userArticleEngagementFailure,
    );
  }
}

/// @nodoc
const $UserArticleEngagementWatcherState =
    _$UserArticleEngagementWatcherStateTearOff();

/// @nodoc
mixin _$UserArticleEngagementWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(
            KtMap<String, UserArticleEngagement> userArticleEngagements)
        loadSuccess,
    required TResult Function(
            UserArticleEngagementFailure userArticleEngagementFailure)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            KtMap<String, UserArticleEngagement> userArticleEngagements)?
        loadSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            KtMap<String, UserArticleEngagement> userArticleEngagements)?
        loadSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
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
abstract class $UserArticleEngagementWatcherStateCopyWith<$Res> {
  factory $UserArticleEngagementWatcherStateCopyWith(
          UserArticleEngagementWatcherState value,
          $Res Function(UserArticleEngagementWatcherState) then) =
      _$UserArticleEngagementWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserArticleEngagementWatcherStateCopyWithImpl<$Res>
    implements $UserArticleEngagementWatcherStateCopyWith<$Res> {
  _$UserArticleEngagementWatcherStateCopyWithImpl(this._value, this._then);

  final UserArticleEngagementWatcherState _value;
  // ignore: unused_field
  final $Res Function(UserArticleEngagementWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$UserArticleEngagementWatcherStateCopyWithImpl<$Res>
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
    return 'UserArticleEngagementWatcherState.initial()';
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
            KtMap<String, UserArticleEngagement> userArticleEngagements)
        loadSuccess,
    required TResult Function(
            UserArticleEngagementFailure userArticleEngagementFailure)
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
            KtMap<String, UserArticleEngagement> userArticleEngagements)?
        loadSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
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
            KtMap<String, UserArticleEngagement> userArticleEngagements)?
        loadSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
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

abstract class _Initial implements UserArticleEngagementWatcherState {
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
    extends _$UserArticleEngagementWatcherStateCopyWithImpl<$Res>
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
    return 'UserArticleEngagementWatcherState.loadInProgress()';
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
            KtMap<String, UserArticleEngagement> userArticleEngagements)
        loadSuccess,
    required TResult Function(
            UserArticleEngagementFailure userArticleEngagementFailure)
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
            KtMap<String, UserArticleEngagement> userArticleEngagements)?
        loadSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
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
            KtMap<String, UserArticleEngagement> userArticleEngagements)?
        loadSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
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

abstract class _LoadInProgress implements UserArticleEngagementWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtMap<String, UserArticleEngagement> userArticleEngagements});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$UserArticleEngagementWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? userArticleEngagements = freezed,
  }) {
    return _then(_LoadSuccess(
      userArticleEngagements == freezed
          ? _value.userArticleEngagements
          : userArticleEngagements // ignore: cast_nullable_to_non_nullable
              as KtMap<String, UserArticleEngagement>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.userArticleEngagements);

  @override
  final KtMap<String, UserArticleEngagement> userArticleEngagements;

  @override
  String toString() {
    return 'UserArticleEngagementWatcherState.loadSuccess(userArticleEngagements: $userArticleEngagements)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadSuccess &&
            (identical(other.userArticleEngagements, userArticleEngagements) ||
                other.userArticleEngagements == userArticleEngagements));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userArticleEngagements);

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
            KtMap<String, UserArticleEngagement> userArticleEngagements)
        loadSuccess,
    required TResult Function(
            UserArticleEngagementFailure userArticleEngagementFailure)
        loadFailure,
  }) {
    return loadSuccess(userArticleEngagements);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            KtMap<String, UserArticleEngagement> userArticleEngagements)?
        loadSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        loadFailure,
  }) {
    return loadSuccess?.call(userArticleEngagements);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            KtMap<String, UserArticleEngagement> userArticleEngagements)?
        loadSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(userArticleEngagements);
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

abstract class _LoadSuccess implements UserArticleEngagementWatcherState {
  const factory _LoadSuccess(
          KtMap<String, UserArticleEngagement> userArticleEngagements) =
      _$_LoadSuccess;

  KtMap<String, UserArticleEngagement> get userArticleEngagements;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({UserArticleEngagementFailure userArticleEngagementFailure});

  $UserArticleEngagementFailureCopyWith<$Res> get userArticleEngagementFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$UserArticleEngagementWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? userArticleEngagementFailure = freezed,
  }) {
    return _then(_LoadFailure(
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

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.userArticleEngagementFailure);

  @override
  final UserArticleEngagementFailure userArticleEngagementFailure;

  @override
  String toString() {
    return 'UserArticleEngagementWatcherState.loadFailure(userArticleEngagementFailure: $userArticleEngagementFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadFailure &&
            (identical(other.userArticleEngagementFailure,
                    userArticleEngagementFailure) ||
                other.userArticleEngagementFailure ==
                    userArticleEngagementFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userArticleEngagementFailure);

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
            KtMap<String, UserArticleEngagement> userArticleEngagements)
        loadSuccess,
    required TResult Function(
            UserArticleEngagementFailure userArticleEngagementFailure)
        loadFailure,
  }) {
    return loadFailure(userArticleEngagementFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            KtMap<String, UserArticleEngagement> userArticleEngagements)?
        loadSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        loadFailure,
  }) {
    return loadFailure?.call(userArticleEngagementFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            KtMap<String, UserArticleEngagement> userArticleEngagements)?
        loadSuccess,
    TResult Function(UserArticleEngagementFailure userArticleEngagementFailure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(userArticleEngagementFailure);
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

abstract class _LoadFailure implements UserArticleEngagementWatcherState {
  const factory _LoadFailure(
          UserArticleEngagementFailure userArticleEngagementFailure) =
      _$_LoadFailure;

  UserArticleEngagementFailure get userArticleEngagementFailure;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
