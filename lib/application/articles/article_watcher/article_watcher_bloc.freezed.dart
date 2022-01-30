// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'article_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ArticleWatcherEventTearOff {
  const _$ArticleWatcherEventTearOff();

  _WatchingCancelled watchingCancelled() {
    return const _WatchingCancelled();
  }

  _WatchAllStarted watchAllStarted() {
    return const _WatchAllStarted();
  }

  _WatchFromSourceStarted watchFromSourceStarted(ArticleSource articleSource) {
    return _WatchFromSourceStarted(
      articleSource,
    );
  }

  _WatchByIdStarted watchByIdStarted(KtList<String> articleIds) {
    return _WatchByIdStarted(
      articleIds,
    );
  }

  _ArticlesReceived articlesReceived(
      Either<ArticleFailure, KtList<Article>> failureOrArticles) {
    return _ArticlesReceived(
      failureOrArticles,
    );
  }
}

/// @nodoc
const $ArticleWatcherEvent = _$ArticleWatcherEventTearOff();

/// @nodoc
mixin _$ArticleWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchingCancelled,
    required TResult Function() watchAllStarted,
    required TResult Function(ArticleSource articleSource)
        watchFromSourceStarted,
    required TResult Function(KtList<String> articleIds) watchByIdStarted,
    required TResult Function(
            Either<ArticleFailure, KtList<Article>> failureOrArticles)
        articlesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchingCancelled,
    TResult Function()? watchAllStarted,
    TResult Function(ArticleSource articleSource)? watchFromSourceStarted,
    TResult Function(KtList<String> articleIds)? watchByIdStarted,
    TResult Function(Either<ArticleFailure, KtList<Article>> failureOrArticles)?
        articlesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchingCancelled,
    TResult Function()? watchAllStarted,
    TResult Function(ArticleSource articleSource)? watchFromSourceStarted,
    TResult Function(KtList<String> articleIds)? watchByIdStarted,
    TResult Function(Either<ArticleFailure, KtList<Article>> failureOrArticles)?
        articlesReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchingCancelled value) watchingCancelled,
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchFromSourceStarted value)
        watchFromSourceStarted,
    required TResult Function(_WatchByIdStarted value) watchByIdStarted,
    required TResult Function(_ArticlesReceived value) articlesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchingCancelled value)? watchingCancelled,
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchFromSourceStarted value)? watchFromSourceStarted,
    TResult Function(_WatchByIdStarted value)? watchByIdStarted,
    TResult Function(_ArticlesReceived value)? articlesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchingCancelled value)? watchingCancelled,
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchFromSourceStarted value)? watchFromSourceStarted,
    TResult Function(_WatchByIdStarted value)? watchByIdStarted,
    TResult Function(_ArticlesReceived value)? articlesReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleWatcherEventCopyWith<$Res> {
  factory $ArticleWatcherEventCopyWith(
          ArticleWatcherEvent value, $Res Function(ArticleWatcherEvent) then) =
      _$ArticleWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ArticleWatcherEventCopyWithImpl<$Res>
    implements $ArticleWatcherEventCopyWith<$Res> {
  _$ArticleWatcherEventCopyWithImpl(this._value, this._then);

  final ArticleWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(ArticleWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchingCancelledCopyWith<$Res> {
  factory _$WatchingCancelledCopyWith(
          _WatchingCancelled value, $Res Function(_WatchingCancelled) then) =
      __$WatchingCancelledCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchingCancelledCopyWithImpl<$Res>
    extends _$ArticleWatcherEventCopyWithImpl<$Res>
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
    return 'ArticleWatcherEvent.watchingCancelled()';
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
    required TResult Function() watchAllStarted,
    required TResult Function(ArticleSource articleSource)
        watchFromSourceStarted,
    required TResult Function(KtList<String> articleIds) watchByIdStarted,
    required TResult Function(
            Either<ArticleFailure, KtList<Article>> failureOrArticles)
        articlesReceived,
  }) {
    return watchingCancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchingCancelled,
    TResult Function()? watchAllStarted,
    TResult Function(ArticleSource articleSource)? watchFromSourceStarted,
    TResult Function(KtList<String> articleIds)? watchByIdStarted,
    TResult Function(Either<ArticleFailure, KtList<Article>> failureOrArticles)?
        articlesReceived,
  }) {
    return watchingCancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchingCancelled,
    TResult Function()? watchAllStarted,
    TResult Function(ArticleSource articleSource)? watchFromSourceStarted,
    TResult Function(KtList<String> articleIds)? watchByIdStarted,
    TResult Function(Either<ArticleFailure, KtList<Article>> failureOrArticles)?
        articlesReceived,
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
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchFromSourceStarted value)
        watchFromSourceStarted,
    required TResult Function(_WatchByIdStarted value) watchByIdStarted,
    required TResult Function(_ArticlesReceived value) articlesReceived,
  }) {
    return watchingCancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchingCancelled value)? watchingCancelled,
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchFromSourceStarted value)? watchFromSourceStarted,
    TResult Function(_WatchByIdStarted value)? watchByIdStarted,
    TResult Function(_ArticlesReceived value)? articlesReceived,
  }) {
    return watchingCancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchingCancelled value)? watchingCancelled,
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchFromSourceStarted value)? watchFromSourceStarted,
    TResult Function(_WatchByIdStarted value)? watchByIdStarted,
    TResult Function(_ArticlesReceived value)? articlesReceived,
    required TResult orElse(),
  }) {
    if (watchingCancelled != null) {
      return watchingCancelled(this);
    }
    return orElse();
  }
}

abstract class _WatchingCancelled implements ArticleWatcherEvent {
  const factory _WatchingCancelled() = _$_WatchingCancelled;
}

/// @nodoc
abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$ArticleWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllStartedCopyWith<$Res> {
  __$WatchAllStartedCopyWithImpl(
      _WatchAllStarted _value, $Res Function(_WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllStarted));

  @override
  _WatchAllStarted get _value => super._value as _WatchAllStarted;
}

/// @nodoc

class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted();

  @override
  String toString() {
    return 'ArticleWatcherEvent.watchAllStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _WatchAllStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchingCancelled,
    required TResult Function() watchAllStarted,
    required TResult Function(ArticleSource articleSource)
        watchFromSourceStarted,
    required TResult Function(KtList<String> articleIds) watchByIdStarted,
    required TResult Function(
            Either<ArticleFailure, KtList<Article>> failureOrArticles)
        articlesReceived,
  }) {
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchingCancelled,
    TResult Function()? watchAllStarted,
    TResult Function(ArticleSource articleSource)? watchFromSourceStarted,
    TResult Function(KtList<String> articleIds)? watchByIdStarted,
    TResult Function(Either<ArticleFailure, KtList<Article>> failureOrArticles)?
        articlesReceived,
  }) {
    return watchAllStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchingCancelled,
    TResult Function()? watchAllStarted,
    TResult Function(ArticleSource articleSource)? watchFromSourceStarted,
    TResult Function(KtList<String> articleIds)? watchByIdStarted,
    TResult Function(Either<ArticleFailure, KtList<Article>> failureOrArticles)?
        articlesReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchingCancelled value) watchingCancelled,
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchFromSourceStarted value)
        watchFromSourceStarted,
    required TResult Function(_WatchByIdStarted value) watchByIdStarted,
    required TResult Function(_ArticlesReceived value) articlesReceived,
  }) {
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchingCancelled value)? watchingCancelled,
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchFromSourceStarted value)? watchFromSourceStarted,
    TResult Function(_WatchByIdStarted value)? watchByIdStarted,
    TResult Function(_ArticlesReceived value)? articlesReceived,
  }) {
    return watchAllStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchingCancelled value)? watchingCancelled,
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchFromSourceStarted value)? watchFromSourceStarted,
    TResult Function(_WatchByIdStarted value)? watchByIdStarted,
    TResult Function(_ArticlesReceived value)? articlesReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements ArticleWatcherEvent {
  const factory _WatchAllStarted() = _$_WatchAllStarted;
}

/// @nodoc
abstract class _$WatchFromSourceStartedCopyWith<$Res> {
  factory _$WatchFromSourceStartedCopyWith(_WatchFromSourceStarted value,
          $Res Function(_WatchFromSourceStarted) then) =
      __$WatchFromSourceStartedCopyWithImpl<$Res>;
  $Res call({ArticleSource articleSource});

  $ArticleSourceCopyWith<$Res> get articleSource;
}

/// @nodoc
class __$WatchFromSourceStartedCopyWithImpl<$Res>
    extends _$ArticleWatcherEventCopyWithImpl<$Res>
    implements _$WatchFromSourceStartedCopyWith<$Res> {
  __$WatchFromSourceStartedCopyWithImpl(_WatchFromSourceStarted _value,
      $Res Function(_WatchFromSourceStarted) _then)
      : super(_value, (v) => _then(v as _WatchFromSourceStarted));

  @override
  _WatchFromSourceStarted get _value => super._value as _WatchFromSourceStarted;

  @override
  $Res call({
    Object? articleSource = freezed,
  }) {
    return _then(_WatchFromSourceStarted(
      articleSource == freezed
          ? _value.articleSource
          : articleSource // ignore: cast_nullable_to_non_nullable
              as ArticleSource,
    ));
  }

  @override
  $ArticleSourceCopyWith<$Res> get articleSource {
    return $ArticleSourceCopyWith<$Res>(_value.articleSource, (value) {
      return _then(_value.copyWith(articleSource: value));
    });
  }
}

/// @nodoc

class _$_WatchFromSourceStarted implements _WatchFromSourceStarted {
  const _$_WatchFromSourceStarted(this.articleSource);

  @override
  final ArticleSource articleSource;

  @override
  String toString() {
    return 'ArticleWatcherEvent.watchFromSourceStarted(articleSource: $articleSource)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WatchFromSourceStarted &&
            (identical(other.articleSource, articleSource) ||
                other.articleSource == articleSource));
  }

  @override
  int get hashCode => Object.hash(runtimeType, articleSource);

  @JsonKey(ignore: true)
  @override
  _$WatchFromSourceStartedCopyWith<_WatchFromSourceStarted> get copyWith =>
      __$WatchFromSourceStartedCopyWithImpl<_WatchFromSourceStarted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchingCancelled,
    required TResult Function() watchAllStarted,
    required TResult Function(ArticleSource articleSource)
        watchFromSourceStarted,
    required TResult Function(KtList<String> articleIds) watchByIdStarted,
    required TResult Function(
            Either<ArticleFailure, KtList<Article>> failureOrArticles)
        articlesReceived,
  }) {
    return watchFromSourceStarted(articleSource);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchingCancelled,
    TResult Function()? watchAllStarted,
    TResult Function(ArticleSource articleSource)? watchFromSourceStarted,
    TResult Function(KtList<String> articleIds)? watchByIdStarted,
    TResult Function(Either<ArticleFailure, KtList<Article>> failureOrArticles)?
        articlesReceived,
  }) {
    return watchFromSourceStarted?.call(articleSource);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchingCancelled,
    TResult Function()? watchAllStarted,
    TResult Function(ArticleSource articleSource)? watchFromSourceStarted,
    TResult Function(KtList<String> articleIds)? watchByIdStarted,
    TResult Function(Either<ArticleFailure, KtList<Article>> failureOrArticles)?
        articlesReceived,
    required TResult orElse(),
  }) {
    if (watchFromSourceStarted != null) {
      return watchFromSourceStarted(articleSource);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchingCancelled value) watchingCancelled,
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchFromSourceStarted value)
        watchFromSourceStarted,
    required TResult Function(_WatchByIdStarted value) watchByIdStarted,
    required TResult Function(_ArticlesReceived value) articlesReceived,
  }) {
    return watchFromSourceStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchingCancelled value)? watchingCancelled,
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchFromSourceStarted value)? watchFromSourceStarted,
    TResult Function(_WatchByIdStarted value)? watchByIdStarted,
    TResult Function(_ArticlesReceived value)? articlesReceived,
  }) {
    return watchFromSourceStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchingCancelled value)? watchingCancelled,
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchFromSourceStarted value)? watchFromSourceStarted,
    TResult Function(_WatchByIdStarted value)? watchByIdStarted,
    TResult Function(_ArticlesReceived value)? articlesReceived,
    required TResult orElse(),
  }) {
    if (watchFromSourceStarted != null) {
      return watchFromSourceStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchFromSourceStarted implements ArticleWatcherEvent {
  const factory _WatchFromSourceStarted(ArticleSource articleSource) =
      _$_WatchFromSourceStarted;

  ArticleSource get articleSource;
  @JsonKey(ignore: true)
  _$WatchFromSourceStartedCopyWith<_WatchFromSourceStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$WatchByIdStartedCopyWith<$Res> {
  factory _$WatchByIdStartedCopyWith(
          _WatchByIdStarted value, $Res Function(_WatchByIdStarted) then) =
      __$WatchByIdStartedCopyWithImpl<$Res>;
  $Res call({KtList<String> articleIds});
}

/// @nodoc
class __$WatchByIdStartedCopyWithImpl<$Res>
    extends _$ArticleWatcherEventCopyWithImpl<$Res>
    implements _$WatchByIdStartedCopyWith<$Res> {
  __$WatchByIdStartedCopyWithImpl(
      _WatchByIdStarted _value, $Res Function(_WatchByIdStarted) _then)
      : super(_value, (v) => _then(v as _WatchByIdStarted));

  @override
  _WatchByIdStarted get _value => super._value as _WatchByIdStarted;

  @override
  $Res call({
    Object? articleIds = freezed,
  }) {
    return _then(_WatchByIdStarted(
      articleIds == freezed
          ? _value.articleIds
          : articleIds // ignore: cast_nullable_to_non_nullable
              as KtList<String>,
    ));
  }
}

/// @nodoc

class _$_WatchByIdStarted implements _WatchByIdStarted {
  const _$_WatchByIdStarted(this.articleIds);

  @override
  final KtList<String> articleIds;

  @override
  String toString() {
    return 'ArticleWatcherEvent.watchByIdStarted(articleIds: $articleIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WatchByIdStarted &&
            (identical(other.articleIds, articleIds) ||
                other.articleIds == articleIds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, articleIds);

  @JsonKey(ignore: true)
  @override
  _$WatchByIdStartedCopyWith<_WatchByIdStarted> get copyWith =>
      __$WatchByIdStartedCopyWithImpl<_WatchByIdStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchingCancelled,
    required TResult Function() watchAllStarted,
    required TResult Function(ArticleSource articleSource)
        watchFromSourceStarted,
    required TResult Function(KtList<String> articleIds) watchByIdStarted,
    required TResult Function(
            Either<ArticleFailure, KtList<Article>> failureOrArticles)
        articlesReceived,
  }) {
    return watchByIdStarted(articleIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchingCancelled,
    TResult Function()? watchAllStarted,
    TResult Function(ArticleSource articleSource)? watchFromSourceStarted,
    TResult Function(KtList<String> articleIds)? watchByIdStarted,
    TResult Function(Either<ArticleFailure, KtList<Article>> failureOrArticles)?
        articlesReceived,
  }) {
    return watchByIdStarted?.call(articleIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchingCancelled,
    TResult Function()? watchAllStarted,
    TResult Function(ArticleSource articleSource)? watchFromSourceStarted,
    TResult Function(KtList<String> articleIds)? watchByIdStarted,
    TResult Function(Either<ArticleFailure, KtList<Article>> failureOrArticles)?
        articlesReceived,
    required TResult orElse(),
  }) {
    if (watchByIdStarted != null) {
      return watchByIdStarted(articleIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchingCancelled value) watchingCancelled,
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchFromSourceStarted value)
        watchFromSourceStarted,
    required TResult Function(_WatchByIdStarted value) watchByIdStarted,
    required TResult Function(_ArticlesReceived value) articlesReceived,
  }) {
    return watchByIdStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchingCancelled value)? watchingCancelled,
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchFromSourceStarted value)? watchFromSourceStarted,
    TResult Function(_WatchByIdStarted value)? watchByIdStarted,
    TResult Function(_ArticlesReceived value)? articlesReceived,
  }) {
    return watchByIdStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchingCancelled value)? watchingCancelled,
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchFromSourceStarted value)? watchFromSourceStarted,
    TResult Function(_WatchByIdStarted value)? watchByIdStarted,
    TResult Function(_ArticlesReceived value)? articlesReceived,
    required TResult orElse(),
  }) {
    if (watchByIdStarted != null) {
      return watchByIdStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchByIdStarted implements ArticleWatcherEvent {
  const factory _WatchByIdStarted(KtList<String> articleIds) =
      _$_WatchByIdStarted;

  KtList<String> get articleIds;
  @JsonKey(ignore: true)
  _$WatchByIdStartedCopyWith<_WatchByIdStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ArticlesReceivedCopyWith<$Res> {
  factory _$ArticlesReceivedCopyWith(
          _ArticlesReceived value, $Res Function(_ArticlesReceived) then) =
      __$ArticlesReceivedCopyWithImpl<$Res>;
  $Res call({Either<ArticleFailure, KtList<Article>> failureOrArticles});
}

/// @nodoc
class __$ArticlesReceivedCopyWithImpl<$Res>
    extends _$ArticleWatcherEventCopyWithImpl<$Res>
    implements _$ArticlesReceivedCopyWith<$Res> {
  __$ArticlesReceivedCopyWithImpl(
      _ArticlesReceived _value, $Res Function(_ArticlesReceived) _then)
      : super(_value, (v) => _then(v as _ArticlesReceived));

  @override
  _ArticlesReceived get _value => super._value as _ArticlesReceived;

  @override
  $Res call({
    Object? failureOrArticles = freezed,
  }) {
    return _then(_ArticlesReceived(
      failureOrArticles == freezed
          ? _value.failureOrArticles
          : failureOrArticles // ignore: cast_nullable_to_non_nullable
              as Either<ArticleFailure, KtList<Article>>,
    ));
  }
}

/// @nodoc

class _$_ArticlesReceived implements _ArticlesReceived {
  const _$_ArticlesReceived(this.failureOrArticles);

  @override
  final Either<ArticleFailure, KtList<Article>> failureOrArticles;

  @override
  String toString() {
    return 'ArticleWatcherEvent.articlesReceived(failureOrArticles: $failureOrArticles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArticlesReceived &&
            (identical(other.failureOrArticles, failureOrArticles) ||
                other.failureOrArticles == failureOrArticles));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrArticles);

  @JsonKey(ignore: true)
  @override
  _$ArticlesReceivedCopyWith<_ArticlesReceived> get copyWith =>
      __$ArticlesReceivedCopyWithImpl<_ArticlesReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchingCancelled,
    required TResult Function() watchAllStarted,
    required TResult Function(ArticleSource articleSource)
        watchFromSourceStarted,
    required TResult Function(KtList<String> articleIds) watchByIdStarted,
    required TResult Function(
            Either<ArticleFailure, KtList<Article>> failureOrArticles)
        articlesReceived,
  }) {
    return articlesReceived(failureOrArticles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchingCancelled,
    TResult Function()? watchAllStarted,
    TResult Function(ArticleSource articleSource)? watchFromSourceStarted,
    TResult Function(KtList<String> articleIds)? watchByIdStarted,
    TResult Function(Either<ArticleFailure, KtList<Article>> failureOrArticles)?
        articlesReceived,
  }) {
    return articlesReceived?.call(failureOrArticles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchingCancelled,
    TResult Function()? watchAllStarted,
    TResult Function(ArticleSource articleSource)? watchFromSourceStarted,
    TResult Function(KtList<String> articleIds)? watchByIdStarted,
    TResult Function(Either<ArticleFailure, KtList<Article>> failureOrArticles)?
        articlesReceived,
    required TResult orElse(),
  }) {
    if (articlesReceived != null) {
      return articlesReceived(failureOrArticles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchingCancelled value) watchingCancelled,
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchFromSourceStarted value)
        watchFromSourceStarted,
    required TResult Function(_WatchByIdStarted value) watchByIdStarted,
    required TResult Function(_ArticlesReceived value) articlesReceived,
  }) {
    return articlesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchingCancelled value)? watchingCancelled,
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchFromSourceStarted value)? watchFromSourceStarted,
    TResult Function(_WatchByIdStarted value)? watchByIdStarted,
    TResult Function(_ArticlesReceived value)? articlesReceived,
  }) {
    return articlesReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchingCancelled value)? watchingCancelled,
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchFromSourceStarted value)? watchFromSourceStarted,
    TResult Function(_WatchByIdStarted value)? watchByIdStarted,
    TResult Function(_ArticlesReceived value)? articlesReceived,
    required TResult orElse(),
  }) {
    if (articlesReceived != null) {
      return articlesReceived(this);
    }
    return orElse();
  }
}

abstract class _ArticlesReceived implements ArticleWatcherEvent {
  const factory _ArticlesReceived(
          Either<ArticleFailure, KtList<Article>> failureOrArticles) =
      _$_ArticlesReceived;

  Either<ArticleFailure, KtList<Article>> get failureOrArticles;
  @JsonKey(ignore: true)
  _$ArticlesReceivedCopyWith<_ArticlesReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ArticleWatcherStateTearOff {
  const _$ArticleWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(KtList<Article> articles) {
    return _LoadSuccess(
      articles,
    );
  }

  _LoadFailure loadFailure(ArticleFailure articleFailure) {
    return _LoadFailure(
      articleFailure,
    );
  }
}

/// @nodoc
const $ArticleWatcherState = _$ArticleWatcherStateTearOff();

/// @nodoc
mixin _$ArticleWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Article> articles) loadSuccess,
    required TResult Function(ArticleFailure articleFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Article> articles)? loadSuccess,
    TResult Function(ArticleFailure articleFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Article> articles)? loadSuccess,
    TResult Function(ArticleFailure articleFailure)? loadFailure,
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
abstract class $ArticleWatcherStateCopyWith<$Res> {
  factory $ArticleWatcherStateCopyWith(
          ArticleWatcherState value, $Res Function(ArticleWatcherState) then) =
      _$ArticleWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ArticleWatcherStateCopyWithImpl<$Res>
    implements $ArticleWatcherStateCopyWith<$Res> {
  _$ArticleWatcherStateCopyWithImpl(this._value, this._then);

  final ArticleWatcherState _value;
  // ignore: unused_field
  final $Res Function(ArticleWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$ArticleWatcherStateCopyWithImpl<$Res>
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
    return 'ArticleWatcherState.initial()';
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
    required TResult Function(KtList<Article> articles) loadSuccess,
    required TResult Function(ArticleFailure articleFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Article> articles)? loadSuccess,
    TResult Function(ArticleFailure articleFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Article> articles)? loadSuccess,
    TResult Function(ArticleFailure articleFailure)? loadFailure,
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

abstract class _Initial implements ArticleWatcherState {
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
    extends _$ArticleWatcherStateCopyWithImpl<$Res>
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
    return 'ArticleWatcherState.loadInProgress()';
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
    required TResult Function(KtList<Article> articles) loadSuccess,
    required TResult Function(ArticleFailure articleFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Article> articles)? loadSuccess,
    TResult Function(ArticleFailure articleFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Article> articles)? loadSuccess,
    TResult Function(ArticleFailure articleFailure)? loadFailure,
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

abstract class _LoadInProgress implements ArticleWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Article> articles});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$ArticleWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? articles = freezed,
  }) {
    return _then(_LoadSuccess(
      articles == freezed
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as KtList<Article>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.articles);

  @override
  final KtList<Article> articles;

  @override
  String toString() {
    return 'ArticleWatcherState.loadSuccess(articles: $articles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadSuccess &&
            (identical(other.articles, articles) ||
                other.articles == articles));
  }

  @override
  int get hashCode => Object.hash(runtimeType, articles);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Article> articles) loadSuccess,
    required TResult Function(ArticleFailure articleFailure) loadFailure,
  }) {
    return loadSuccess(articles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Article> articles)? loadSuccess,
    TResult Function(ArticleFailure articleFailure)? loadFailure,
  }) {
    return loadSuccess?.call(articles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Article> articles)? loadSuccess,
    TResult Function(ArticleFailure articleFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(articles);
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

abstract class _LoadSuccess implements ArticleWatcherState {
  const factory _LoadSuccess(KtList<Article> articles) = _$_LoadSuccess;

  KtList<Article> get articles;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({ArticleFailure articleFailure});

  $ArticleFailureCopyWith<$Res> get articleFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$ArticleWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? articleFailure = freezed,
  }) {
    return _then(_LoadFailure(
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

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.articleFailure);

  @override
  final ArticleFailure articleFailure;

  @override
  String toString() {
    return 'ArticleWatcherState.loadFailure(articleFailure: $articleFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadFailure &&
            (identical(other.articleFailure, articleFailure) ||
                other.articleFailure == articleFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, articleFailure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Article> articles) loadSuccess,
    required TResult Function(ArticleFailure articleFailure) loadFailure,
  }) {
    return loadFailure(articleFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Article> articles)? loadSuccess,
    TResult Function(ArticleFailure articleFailure)? loadFailure,
  }) {
    return loadFailure?.call(articleFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Article> articles)? loadSuccess,
    TResult Function(ArticleFailure articleFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(articleFailure);
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

abstract class _LoadFailure implements ArticleWatcherState {
  const factory _LoadFailure(ArticleFailure articleFailure) = _$_LoadFailure;

  ArticleFailure get articleFailure;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
