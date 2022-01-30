// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'article_term_count_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ArticleTermCountWatcherEventTearOff {
  const _$ArticleTermCountWatcherEventTearOff();

  _WatchingCancelled watchingCancelled() {
    return const _WatchingCancelled();
  }

  _GetForEachArticleStarted getForEachArticleStarted(
      KtList<Article> articles, bool descending, int limitPerArticle) {
    return _GetForEachArticleStarted(
      articles,
      descending,
      limitPerArticle,
    );
  }

  _WatchForArticlesStarted watchForArticlesStarted(KtList<Article> articles) {
    return _WatchForArticlesStarted(
      articles,
    );
  }

  _ArticleTermCountsReceived articleTermCountsReceived(
      Either<ArticleTermCountFailure, KtList<ArticleTermCount>>
          failureOrArticleTermCounts) {
    return _ArticleTermCountsReceived(
      failureOrArticleTermCounts,
    );
  }
}

/// @nodoc
const $ArticleTermCountWatcherEvent = _$ArticleTermCountWatcherEventTearOff();

/// @nodoc
mixin _$ArticleTermCountWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchingCancelled,
    required TResult Function(
            KtList<Article> articles, bool descending, int limitPerArticle)
        getForEachArticleStarted,
    required TResult Function(KtList<Article> articles) watchForArticlesStarted,
    required TResult Function(
            Either<ArticleTermCountFailure, KtList<ArticleTermCount>>
                failureOrArticleTermCounts)
        articleTermCountsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchingCancelled,
    TResult Function(
            KtList<Article> articles, bool descending, int limitPerArticle)?
        getForEachArticleStarted,
    TResult Function(KtList<Article> articles)? watchForArticlesStarted,
    TResult Function(
            Either<ArticleTermCountFailure, KtList<ArticleTermCount>>
                failureOrArticleTermCounts)?
        articleTermCountsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchingCancelled,
    TResult Function(
            KtList<Article> articles, bool descending, int limitPerArticle)?
        getForEachArticleStarted,
    TResult Function(KtList<Article> articles)? watchForArticlesStarted,
    TResult Function(
            Either<ArticleTermCountFailure, KtList<ArticleTermCount>>
                failureOrArticleTermCounts)?
        articleTermCountsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchingCancelled value) watchingCancelled,
    required TResult Function(_GetForEachArticleStarted value)
        getForEachArticleStarted,
    required TResult Function(_WatchForArticlesStarted value)
        watchForArticlesStarted,
    required TResult Function(_ArticleTermCountsReceived value)
        articleTermCountsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchingCancelled value)? watchingCancelled,
    TResult Function(_GetForEachArticleStarted value)? getForEachArticleStarted,
    TResult Function(_WatchForArticlesStarted value)? watchForArticlesStarted,
    TResult Function(_ArticleTermCountsReceived value)?
        articleTermCountsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchingCancelled value)? watchingCancelled,
    TResult Function(_GetForEachArticleStarted value)? getForEachArticleStarted,
    TResult Function(_WatchForArticlesStarted value)? watchForArticlesStarted,
    TResult Function(_ArticleTermCountsReceived value)?
        articleTermCountsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleTermCountWatcherEventCopyWith<$Res> {
  factory $ArticleTermCountWatcherEventCopyWith(
          ArticleTermCountWatcherEvent value,
          $Res Function(ArticleTermCountWatcherEvent) then) =
      _$ArticleTermCountWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ArticleTermCountWatcherEventCopyWithImpl<$Res>
    implements $ArticleTermCountWatcherEventCopyWith<$Res> {
  _$ArticleTermCountWatcherEventCopyWithImpl(this._value, this._then);

  final ArticleTermCountWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(ArticleTermCountWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchingCancelledCopyWith<$Res> {
  factory _$WatchingCancelledCopyWith(
          _WatchingCancelled value, $Res Function(_WatchingCancelled) then) =
      __$WatchingCancelledCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchingCancelledCopyWithImpl<$Res>
    extends _$ArticleTermCountWatcherEventCopyWithImpl<$Res>
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
    return 'ArticleTermCountWatcherEvent.watchingCancelled()';
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
    required TResult Function(
            KtList<Article> articles, bool descending, int limitPerArticle)
        getForEachArticleStarted,
    required TResult Function(KtList<Article> articles) watchForArticlesStarted,
    required TResult Function(
            Either<ArticleTermCountFailure, KtList<ArticleTermCount>>
                failureOrArticleTermCounts)
        articleTermCountsReceived,
  }) {
    return watchingCancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchingCancelled,
    TResult Function(
            KtList<Article> articles, bool descending, int limitPerArticle)?
        getForEachArticleStarted,
    TResult Function(KtList<Article> articles)? watchForArticlesStarted,
    TResult Function(
            Either<ArticleTermCountFailure, KtList<ArticleTermCount>>
                failureOrArticleTermCounts)?
        articleTermCountsReceived,
  }) {
    return watchingCancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchingCancelled,
    TResult Function(
            KtList<Article> articles, bool descending, int limitPerArticle)?
        getForEachArticleStarted,
    TResult Function(KtList<Article> articles)? watchForArticlesStarted,
    TResult Function(
            Either<ArticleTermCountFailure, KtList<ArticleTermCount>>
                failureOrArticleTermCounts)?
        articleTermCountsReceived,
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
    required TResult Function(_GetForEachArticleStarted value)
        getForEachArticleStarted,
    required TResult Function(_WatchForArticlesStarted value)
        watchForArticlesStarted,
    required TResult Function(_ArticleTermCountsReceived value)
        articleTermCountsReceived,
  }) {
    return watchingCancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchingCancelled value)? watchingCancelled,
    TResult Function(_GetForEachArticleStarted value)? getForEachArticleStarted,
    TResult Function(_WatchForArticlesStarted value)? watchForArticlesStarted,
    TResult Function(_ArticleTermCountsReceived value)?
        articleTermCountsReceived,
  }) {
    return watchingCancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchingCancelled value)? watchingCancelled,
    TResult Function(_GetForEachArticleStarted value)? getForEachArticleStarted,
    TResult Function(_WatchForArticlesStarted value)? watchForArticlesStarted,
    TResult Function(_ArticleTermCountsReceived value)?
        articleTermCountsReceived,
    required TResult orElse(),
  }) {
    if (watchingCancelled != null) {
      return watchingCancelled(this);
    }
    return orElse();
  }
}

abstract class _WatchingCancelled implements ArticleTermCountWatcherEvent {
  const factory _WatchingCancelled() = _$_WatchingCancelled;
}

/// @nodoc
abstract class _$GetForEachArticleStartedCopyWith<$Res> {
  factory _$GetForEachArticleStartedCopyWith(_GetForEachArticleStarted value,
          $Res Function(_GetForEachArticleStarted) then) =
      __$GetForEachArticleStartedCopyWithImpl<$Res>;
  $Res call({KtList<Article> articles, bool descending, int limitPerArticle});
}

/// @nodoc
class __$GetForEachArticleStartedCopyWithImpl<$Res>
    extends _$ArticleTermCountWatcherEventCopyWithImpl<$Res>
    implements _$GetForEachArticleStartedCopyWith<$Res> {
  __$GetForEachArticleStartedCopyWithImpl(_GetForEachArticleStarted _value,
      $Res Function(_GetForEachArticleStarted) _then)
      : super(_value, (v) => _then(v as _GetForEachArticleStarted));

  @override
  _GetForEachArticleStarted get _value =>
      super._value as _GetForEachArticleStarted;

  @override
  $Res call({
    Object? articles = freezed,
    Object? descending = freezed,
    Object? limitPerArticle = freezed,
  }) {
    return _then(_GetForEachArticleStarted(
      articles == freezed
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as KtList<Article>,
      descending == freezed
          ? _value.descending
          : descending // ignore: cast_nullable_to_non_nullable
              as bool,
      limitPerArticle == freezed
          ? _value.limitPerArticle
          : limitPerArticle // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetForEachArticleStarted implements _GetForEachArticleStarted {
  const _$_GetForEachArticleStarted(
      this.articles, this.descending, this.limitPerArticle);

  @override
  final KtList<Article> articles;
  @override
  final bool descending;
  @override
  final int limitPerArticle;

  @override
  String toString() {
    return 'ArticleTermCountWatcherEvent.getForEachArticleStarted(articles: $articles, descending: $descending, limitPerArticle: $limitPerArticle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetForEachArticleStarted &&
            (identical(other.articles, articles) ||
                other.articles == articles) &&
            (identical(other.descending, descending) ||
                other.descending == descending) &&
            (identical(other.limitPerArticle, limitPerArticle) ||
                other.limitPerArticle == limitPerArticle));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, articles, descending, limitPerArticle);

  @JsonKey(ignore: true)
  @override
  _$GetForEachArticleStartedCopyWith<_GetForEachArticleStarted> get copyWith =>
      __$GetForEachArticleStartedCopyWithImpl<_GetForEachArticleStarted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchingCancelled,
    required TResult Function(
            KtList<Article> articles, bool descending, int limitPerArticle)
        getForEachArticleStarted,
    required TResult Function(KtList<Article> articles) watchForArticlesStarted,
    required TResult Function(
            Either<ArticleTermCountFailure, KtList<ArticleTermCount>>
                failureOrArticleTermCounts)
        articleTermCountsReceived,
  }) {
    return getForEachArticleStarted(articles, descending, limitPerArticle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchingCancelled,
    TResult Function(
            KtList<Article> articles, bool descending, int limitPerArticle)?
        getForEachArticleStarted,
    TResult Function(KtList<Article> articles)? watchForArticlesStarted,
    TResult Function(
            Either<ArticleTermCountFailure, KtList<ArticleTermCount>>
                failureOrArticleTermCounts)?
        articleTermCountsReceived,
  }) {
    return getForEachArticleStarted?.call(
        articles, descending, limitPerArticle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchingCancelled,
    TResult Function(
            KtList<Article> articles, bool descending, int limitPerArticle)?
        getForEachArticleStarted,
    TResult Function(KtList<Article> articles)? watchForArticlesStarted,
    TResult Function(
            Either<ArticleTermCountFailure, KtList<ArticleTermCount>>
                failureOrArticleTermCounts)?
        articleTermCountsReceived,
    required TResult orElse(),
  }) {
    if (getForEachArticleStarted != null) {
      return getForEachArticleStarted(articles, descending, limitPerArticle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchingCancelled value) watchingCancelled,
    required TResult Function(_GetForEachArticleStarted value)
        getForEachArticleStarted,
    required TResult Function(_WatchForArticlesStarted value)
        watchForArticlesStarted,
    required TResult Function(_ArticleTermCountsReceived value)
        articleTermCountsReceived,
  }) {
    return getForEachArticleStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchingCancelled value)? watchingCancelled,
    TResult Function(_GetForEachArticleStarted value)? getForEachArticleStarted,
    TResult Function(_WatchForArticlesStarted value)? watchForArticlesStarted,
    TResult Function(_ArticleTermCountsReceived value)?
        articleTermCountsReceived,
  }) {
    return getForEachArticleStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchingCancelled value)? watchingCancelled,
    TResult Function(_GetForEachArticleStarted value)? getForEachArticleStarted,
    TResult Function(_WatchForArticlesStarted value)? watchForArticlesStarted,
    TResult Function(_ArticleTermCountsReceived value)?
        articleTermCountsReceived,
    required TResult orElse(),
  }) {
    if (getForEachArticleStarted != null) {
      return getForEachArticleStarted(this);
    }
    return orElse();
  }
}

abstract class _GetForEachArticleStarted
    implements ArticleTermCountWatcherEvent {
  const factory _GetForEachArticleStarted(
          KtList<Article> articles, bool descending, int limitPerArticle) =
      _$_GetForEachArticleStarted;

  KtList<Article> get articles;
  bool get descending;
  int get limitPerArticle;
  @JsonKey(ignore: true)
  _$GetForEachArticleStartedCopyWith<_GetForEachArticleStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$WatchForArticlesStartedCopyWith<$Res> {
  factory _$WatchForArticlesStartedCopyWith(_WatchForArticlesStarted value,
          $Res Function(_WatchForArticlesStarted) then) =
      __$WatchForArticlesStartedCopyWithImpl<$Res>;
  $Res call({KtList<Article> articles});
}

/// @nodoc
class __$WatchForArticlesStartedCopyWithImpl<$Res>
    extends _$ArticleTermCountWatcherEventCopyWithImpl<$Res>
    implements _$WatchForArticlesStartedCopyWith<$Res> {
  __$WatchForArticlesStartedCopyWithImpl(_WatchForArticlesStarted _value,
      $Res Function(_WatchForArticlesStarted) _then)
      : super(_value, (v) => _then(v as _WatchForArticlesStarted));

  @override
  _WatchForArticlesStarted get _value =>
      super._value as _WatchForArticlesStarted;

  @override
  $Res call({
    Object? articles = freezed,
  }) {
    return _then(_WatchForArticlesStarted(
      articles == freezed
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as KtList<Article>,
    ));
  }
}

/// @nodoc

class _$_WatchForArticlesStarted implements _WatchForArticlesStarted {
  const _$_WatchForArticlesStarted(this.articles);

  @override
  final KtList<Article> articles;

  @override
  String toString() {
    return 'ArticleTermCountWatcherEvent.watchForArticlesStarted(articles: $articles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WatchForArticlesStarted &&
            (identical(other.articles, articles) ||
                other.articles == articles));
  }

  @override
  int get hashCode => Object.hash(runtimeType, articles);

  @JsonKey(ignore: true)
  @override
  _$WatchForArticlesStartedCopyWith<_WatchForArticlesStarted> get copyWith =>
      __$WatchForArticlesStartedCopyWithImpl<_WatchForArticlesStarted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchingCancelled,
    required TResult Function(
            KtList<Article> articles, bool descending, int limitPerArticle)
        getForEachArticleStarted,
    required TResult Function(KtList<Article> articles) watchForArticlesStarted,
    required TResult Function(
            Either<ArticleTermCountFailure, KtList<ArticleTermCount>>
                failureOrArticleTermCounts)
        articleTermCountsReceived,
  }) {
    return watchForArticlesStarted(articles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchingCancelled,
    TResult Function(
            KtList<Article> articles, bool descending, int limitPerArticle)?
        getForEachArticleStarted,
    TResult Function(KtList<Article> articles)? watchForArticlesStarted,
    TResult Function(
            Either<ArticleTermCountFailure, KtList<ArticleTermCount>>
                failureOrArticleTermCounts)?
        articleTermCountsReceived,
  }) {
    return watchForArticlesStarted?.call(articles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchingCancelled,
    TResult Function(
            KtList<Article> articles, bool descending, int limitPerArticle)?
        getForEachArticleStarted,
    TResult Function(KtList<Article> articles)? watchForArticlesStarted,
    TResult Function(
            Either<ArticleTermCountFailure, KtList<ArticleTermCount>>
                failureOrArticleTermCounts)?
        articleTermCountsReceived,
    required TResult orElse(),
  }) {
    if (watchForArticlesStarted != null) {
      return watchForArticlesStarted(articles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchingCancelled value) watchingCancelled,
    required TResult Function(_GetForEachArticleStarted value)
        getForEachArticleStarted,
    required TResult Function(_WatchForArticlesStarted value)
        watchForArticlesStarted,
    required TResult Function(_ArticleTermCountsReceived value)
        articleTermCountsReceived,
  }) {
    return watchForArticlesStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchingCancelled value)? watchingCancelled,
    TResult Function(_GetForEachArticleStarted value)? getForEachArticleStarted,
    TResult Function(_WatchForArticlesStarted value)? watchForArticlesStarted,
    TResult Function(_ArticleTermCountsReceived value)?
        articleTermCountsReceived,
  }) {
    return watchForArticlesStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchingCancelled value)? watchingCancelled,
    TResult Function(_GetForEachArticleStarted value)? getForEachArticleStarted,
    TResult Function(_WatchForArticlesStarted value)? watchForArticlesStarted,
    TResult Function(_ArticleTermCountsReceived value)?
        articleTermCountsReceived,
    required TResult orElse(),
  }) {
    if (watchForArticlesStarted != null) {
      return watchForArticlesStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchForArticlesStarted
    implements ArticleTermCountWatcherEvent {
  const factory _WatchForArticlesStarted(KtList<Article> articles) =
      _$_WatchForArticlesStarted;

  KtList<Article> get articles;
  @JsonKey(ignore: true)
  _$WatchForArticlesStartedCopyWith<_WatchForArticlesStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ArticleTermCountsReceivedCopyWith<$Res> {
  factory _$ArticleTermCountsReceivedCopyWith(_ArticleTermCountsReceived value,
          $Res Function(_ArticleTermCountsReceived) then) =
      __$ArticleTermCountsReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<ArticleTermCountFailure, KtList<ArticleTermCount>>
          failureOrArticleTermCounts});
}

/// @nodoc
class __$ArticleTermCountsReceivedCopyWithImpl<$Res>
    extends _$ArticleTermCountWatcherEventCopyWithImpl<$Res>
    implements _$ArticleTermCountsReceivedCopyWith<$Res> {
  __$ArticleTermCountsReceivedCopyWithImpl(_ArticleTermCountsReceived _value,
      $Res Function(_ArticleTermCountsReceived) _then)
      : super(_value, (v) => _then(v as _ArticleTermCountsReceived));

  @override
  _ArticleTermCountsReceived get _value =>
      super._value as _ArticleTermCountsReceived;

  @override
  $Res call({
    Object? failureOrArticleTermCounts = freezed,
  }) {
    return _then(_ArticleTermCountsReceived(
      failureOrArticleTermCounts == freezed
          ? _value.failureOrArticleTermCounts
          : failureOrArticleTermCounts // ignore: cast_nullable_to_non_nullable
              as Either<ArticleTermCountFailure, KtList<ArticleTermCount>>,
    ));
  }
}

/// @nodoc

class _$_ArticleTermCountsReceived implements _ArticleTermCountsReceived {
  const _$_ArticleTermCountsReceived(this.failureOrArticleTermCounts);

  @override
  final Either<ArticleTermCountFailure, KtList<ArticleTermCount>>
      failureOrArticleTermCounts;

  @override
  String toString() {
    return 'ArticleTermCountWatcherEvent.articleTermCountsReceived(failureOrArticleTermCounts: $failureOrArticleTermCounts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArticleTermCountsReceived &&
            (identical(other.failureOrArticleTermCounts,
                    failureOrArticleTermCounts) ||
                other.failureOrArticleTermCounts ==
                    failureOrArticleTermCounts));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrArticleTermCounts);

  @JsonKey(ignore: true)
  @override
  _$ArticleTermCountsReceivedCopyWith<_ArticleTermCountsReceived>
      get copyWith =>
          __$ArticleTermCountsReceivedCopyWithImpl<_ArticleTermCountsReceived>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchingCancelled,
    required TResult Function(
            KtList<Article> articles, bool descending, int limitPerArticle)
        getForEachArticleStarted,
    required TResult Function(KtList<Article> articles) watchForArticlesStarted,
    required TResult Function(
            Either<ArticleTermCountFailure, KtList<ArticleTermCount>>
                failureOrArticleTermCounts)
        articleTermCountsReceived,
  }) {
    return articleTermCountsReceived(failureOrArticleTermCounts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchingCancelled,
    TResult Function(
            KtList<Article> articles, bool descending, int limitPerArticle)?
        getForEachArticleStarted,
    TResult Function(KtList<Article> articles)? watchForArticlesStarted,
    TResult Function(
            Either<ArticleTermCountFailure, KtList<ArticleTermCount>>
                failureOrArticleTermCounts)?
        articleTermCountsReceived,
  }) {
    return articleTermCountsReceived?.call(failureOrArticleTermCounts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchingCancelled,
    TResult Function(
            KtList<Article> articles, bool descending, int limitPerArticle)?
        getForEachArticleStarted,
    TResult Function(KtList<Article> articles)? watchForArticlesStarted,
    TResult Function(
            Either<ArticleTermCountFailure, KtList<ArticleTermCount>>
                failureOrArticleTermCounts)?
        articleTermCountsReceived,
    required TResult orElse(),
  }) {
    if (articleTermCountsReceived != null) {
      return articleTermCountsReceived(failureOrArticleTermCounts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchingCancelled value) watchingCancelled,
    required TResult Function(_GetForEachArticleStarted value)
        getForEachArticleStarted,
    required TResult Function(_WatchForArticlesStarted value)
        watchForArticlesStarted,
    required TResult Function(_ArticleTermCountsReceived value)
        articleTermCountsReceived,
  }) {
    return articleTermCountsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchingCancelled value)? watchingCancelled,
    TResult Function(_GetForEachArticleStarted value)? getForEachArticleStarted,
    TResult Function(_WatchForArticlesStarted value)? watchForArticlesStarted,
    TResult Function(_ArticleTermCountsReceived value)?
        articleTermCountsReceived,
  }) {
    return articleTermCountsReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchingCancelled value)? watchingCancelled,
    TResult Function(_GetForEachArticleStarted value)? getForEachArticleStarted,
    TResult Function(_WatchForArticlesStarted value)? watchForArticlesStarted,
    TResult Function(_ArticleTermCountsReceived value)?
        articleTermCountsReceived,
    required TResult orElse(),
  }) {
    if (articleTermCountsReceived != null) {
      return articleTermCountsReceived(this);
    }
    return orElse();
  }
}

abstract class _ArticleTermCountsReceived
    implements ArticleTermCountWatcherEvent {
  const factory _ArticleTermCountsReceived(
      Either<ArticleTermCountFailure, KtList<ArticleTermCount>>
          failureOrArticleTermCounts) = _$_ArticleTermCountsReceived;

  Either<ArticleTermCountFailure, KtList<ArticleTermCount>>
      get failureOrArticleTermCounts;
  @JsonKey(ignore: true)
  _$ArticleTermCountsReceivedCopyWith<_ArticleTermCountsReceived>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$ArticleTermCountWatcherStateTearOff {
  const _$ArticleTermCountWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(KtList<ArticleTermCount> articleTermCounts) {
    return _LoadSuccess(
      articleTermCounts,
    );
  }

  _LoadFailure loadFailure(ArticleTermCountFailure articleTermCountFailure) {
    return _LoadFailure(
      articleTermCountFailure,
    );
  }
}

/// @nodoc
const $ArticleTermCountWatcherState = _$ArticleTermCountWatcherStateTearOff();

/// @nodoc
mixin _$ArticleTermCountWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<ArticleTermCount> articleTermCounts)
        loadSuccess,
    required TResult Function(ArticleTermCountFailure articleTermCountFailure)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<ArticleTermCount> articleTermCounts)? loadSuccess,
    TResult Function(ArticleTermCountFailure articleTermCountFailure)?
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<ArticleTermCount> articleTermCounts)? loadSuccess,
    TResult Function(ArticleTermCountFailure articleTermCountFailure)?
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
abstract class $ArticleTermCountWatcherStateCopyWith<$Res> {
  factory $ArticleTermCountWatcherStateCopyWith(
          ArticleTermCountWatcherState value,
          $Res Function(ArticleTermCountWatcherState) then) =
      _$ArticleTermCountWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ArticleTermCountWatcherStateCopyWithImpl<$Res>
    implements $ArticleTermCountWatcherStateCopyWith<$Res> {
  _$ArticleTermCountWatcherStateCopyWithImpl(this._value, this._then);

  final ArticleTermCountWatcherState _value;
  // ignore: unused_field
  final $Res Function(ArticleTermCountWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$ArticleTermCountWatcherStateCopyWithImpl<$Res>
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
    return 'ArticleTermCountWatcherState.initial()';
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
    required TResult Function(KtList<ArticleTermCount> articleTermCounts)
        loadSuccess,
    required TResult Function(ArticleTermCountFailure articleTermCountFailure)
        loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<ArticleTermCount> articleTermCounts)? loadSuccess,
    TResult Function(ArticleTermCountFailure articleTermCountFailure)?
        loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<ArticleTermCount> articleTermCounts)? loadSuccess,
    TResult Function(ArticleTermCountFailure articleTermCountFailure)?
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

abstract class _Initial implements ArticleTermCountWatcherState {
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
    extends _$ArticleTermCountWatcherStateCopyWithImpl<$Res>
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
    return 'ArticleTermCountWatcherState.loadInProgress()';
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
    required TResult Function(KtList<ArticleTermCount> articleTermCounts)
        loadSuccess,
    required TResult Function(ArticleTermCountFailure articleTermCountFailure)
        loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<ArticleTermCount> articleTermCounts)? loadSuccess,
    TResult Function(ArticleTermCountFailure articleTermCountFailure)?
        loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<ArticleTermCount> articleTermCounts)? loadSuccess,
    TResult Function(ArticleTermCountFailure articleTermCountFailure)?
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

abstract class _LoadInProgress implements ArticleTermCountWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<ArticleTermCount> articleTermCounts});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$ArticleTermCountWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? articleTermCounts = freezed,
  }) {
    return _then(_LoadSuccess(
      articleTermCounts == freezed
          ? _value.articleTermCounts
          : articleTermCounts // ignore: cast_nullable_to_non_nullable
              as KtList<ArticleTermCount>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.articleTermCounts);

  @override
  final KtList<ArticleTermCount> articleTermCounts;

  @override
  String toString() {
    return 'ArticleTermCountWatcherState.loadSuccess(articleTermCounts: $articleTermCounts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadSuccess &&
            (identical(other.articleTermCounts, articleTermCounts) ||
                other.articleTermCounts == articleTermCounts));
  }

  @override
  int get hashCode => Object.hash(runtimeType, articleTermCounts);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<ArticleTermCount> articleTermCounts)
        loadSuccess,
    required TResult Function(ArticleTermCountFailure articleTermCountFailure)
        loadFailure,
  }) {
    return loadSuccess(articleTermCounts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<ArticleTermCount> articleTermCounts)? loadSuccess,
    TResult Function(ArticleTermCountFailure articleTermCountFailure)?
        loadFailure,
  }) {
    return loadSuccess?.call(articleTermCounts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<ArticleTermCount> articleTermCounts)? loadSuccess,
    TResult Function(ArticleTermCountFailure articleTermCountFailure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(articleTermCounts);
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

abstract class _LoadSuccess implements ArticleTermCountWatcherState {
  const factory _LoadSuccess(KtList<ArticleTermCount> articleTermCounts) =
      _$_LoadSuccess;

  KtList<ArticleTermCount> get articleTermCounts;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({ArticleTermCountFailure articleTermCountFailure});

  $ArticleTermCountFailureCopyWith<$Res> get articleTermCountFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$ArticleTermCountWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? articleTermCountFailure = freezed,
  }) {
    return _then(_LoadFailure(
      articleTermCountFailure == freezed
          ? _value.articleTermCountFailure
          : articleTermCountFailure // ignore: cast_nullable_to_non_nullable
              as ArticleTermCountFailure,
    ));
  }

  @override
  $ArticleTermCountFailureCopyWith<$Res> get articleTermCountFailure {
    return $ArticleTermCountFailureCopyWith<$Res>(
        _value.articleTermCountFailure, (value) {
      return _then(_value.copyWith(articleTermCountFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.articleTermCountFailure);

  @override
  final ArticleTermCountFailure articleTermCountFailure;

  @override
  String toString() {
    return 'ArticleTermCountWatcherState.loadFailure(articleTermCountFailure: $articleTermCountFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadFailure &&
            (identical(
                    other.articleTermCountFailure, articleTermCountFailure) ||
                other.articleTermCountFailure == articleTermCountFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, articleTermCountFailure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<ArticleTermCount> articleTermCounts)
        loadSuccess,
    required TResult Function(ArticleTermCountFailure articleTermCountFailure)
        loadFailure,
  }) {
    return loadFailure(articleTermCountFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<ArticleTermCount> articleTermCounts)? loadSuccess,
    TResult Function(ArticleTermCountFailure articleTermCountFailure)?
        loadFailure,
  }) {
    return loadFailure?.call(articleTermCountFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<ArticleTermCount> articleTermCounts)? loadSuccess,
    TResult Function(ArticleTermCountFailure articleTermCountFailure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(articleTermCountFailure);
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

abstract class _LoadFailure implements ArticleTermCountWatcherState {
  const factory _LoadFailure(ArticleTermCountFailure articleTermCountFailure) =
      _$_LoadFailure;

  ArticleTermCountFailure get articleTermCountFailure;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
