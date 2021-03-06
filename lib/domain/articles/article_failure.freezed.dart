// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'article_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ArticleFailureTearOff {
  const _$ArticleFailureTearOff();

  _Unexpected unexpected() {
    return const _Unexpected();
  }

  _InsufficientPermissions insufficientPermissions() {
    return const _InsufficientPermissions();
  }

  _SourceDisabled sourceDisabled(ArticleSource articleSource) {
    return _SourceDisabled(
      articleSource,
    );
  }

  _NoArticles noArticles() {
    return const _NoArticles();
  }

  _NoActiveSource noActiveSource() {
    return const _NoActiveSource();
  }
}

/// @nodoc
const $ArticleFailure = _$ArticleFailureTearOff();

/// @nodoc
mixin _$ArticleFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() insufficientPermissions,
    required TResult Function(ArticleSource articleSource) sourceDisabled,
    required TResult Function() noArticles,
    required TResult Function() noActiveSource,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function(ArticleSource articleSource)? sourceDisabled,
    TResult Function()? noArticles,
    TResult Function()? noActiveSource,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function(ArticleSource articleSource)? sourceDisabled,
    TResult Function()? noArticles,
    TResult Function()? noActiveSource,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InsufficientPermissions value)
        insufficientPermissions,
    required TResult Function(_SourceDisabled value) sourceDisabled,
    required TResult Function(_NoArticles value) noArticles,
    required TResult Function(_NoActiveSource value) noActiveSource,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult Function(_SourceDisabled value)? sourceDisabled,
    TResult Function(_NoArticles value)? noArticles,
    TResult Function(_NoActiveSource value)? noActiveSource,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult Function(_SourceDisabled value)? sourceDisabled,
    TResult Function(_NoArticles value)? noArticles,
    TResult Function(_NoActiveSource value)? noActiveSource,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleFailureCopyWith<$Res> {
  factory $ArticleFailureCopyWith(
          ArticleFailure value, $Res Function(ArticleFailure) then) =
      _$ArticleFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$ArticleFailureCopyWithImpl<$Res>
    implements $ArticleFailureCopyWith<$Res> {
  _$ArticleFailureCopyWithImpl(this._value, this._then);

  final ArticleFailure _value;
  // ignore: unused_field
  final $Res Function(ArticleFailure) _then;
}

/// @nodoc
abstract class _$UnexpectedCopyWith<$Res> {
  factory _$UnexpectedCopyWith(
          _Unexpected value, $Res Function(_Unexpected) then) =
      __$UnexpectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnexpectedCopyWithImpl<$Res> extends _$ArticleFailureCopyWithImpl<$Res>
    implements _$UnexpectedCopyWith<$Res> {
  __$UnexpectedCopyWithImpl(
      _Unexpected _value, $Res Function(_Unexpected) _then)
      : super(_value, (v) => _then(v as _Unexpected));

  @override
  _Unexpected get _value => super._value as _Unexpected;
}

/// @nodoc

class _$_Unexpected implements _Unexpected {
  const _$_Unexpected();

  @override
  String toString() {
    return 'ArticleFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Unexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() insufficientPermissions,
    required TResult Function(ArticleSource articleSource) sourceDisabled,
    required TResult Function() noArticles,
    required TResult Function() noActiveSource,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function(ArticleSource articleSource)? sourceDisabled,
    TResult Function()? noArticles,
    TResult Function()? noActiveSource,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function(ArticleSource articleSource)? sourceDisabled,
    TResult Function()? noArticles,
    TResult Function()? noActiveSource,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InsufficientPermissions value)
        insufficientPermissions,
    required TResult Function(_SourceDisabled value) sourceDisabled,
    required TResult Function(_NoArticles value) noArticles,
    required TResult Function(_NoActiveSource value) noActiveSource,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult Function(_SourceDisabled value)? sourceDisabled,
    TResult Function(_NoArticles value)? noArticles,
    TResult Function(_NoActiveSource value)? noActiveSource,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult Function(_SourceDisabled value)? sourceDisabled,
    TResult Function(_NoArticles value)? noArticles,
    TResult Function(_NoActiveSource value)? noActiveSource,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements ArticleFailure {
  const factory _Unexpected() = _$_Unexpected;
}

/// @nodoc
abstract class _$InsufficientPermissionsCopyWith<$Res> {
  factory _$InsufficientPermissionsCopyWith(_InsufficientPermissions value,
          $Res Function(_InsufficientPermissions) then) =
      __$InsufficientPermissionsCopyWithImpl<$Res>;
}

/// @nodoc
class __$InsufficientPermissionsCopyWithImpl<$Res>
    extends _$ArticleFailureCopyWithImpl<$Res>
    implements _$InsufficientPermissionsCopyWith<$Res> {
  __$InsufficientPermissionsCopyWithImpl(_InsufficientPermissions _value,
      $Res Function(_InsufficientPermissions) _then)
      : super(_value, (v) => _then(v as _InsufficientPermissions));

  @override
  _InsufficientPermissions get _value =>
      super._value as _InsufficientPermissions;
}

/// @nodoc

class _$_InsufficientPermissions implements _InsufficientPermissions {
  const _$_InsufficientPermissions();

  @override
  String toString() {
    return 'ArticleFailure.insufficientPermissions()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _InsufficientPermissions);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() insufficientPermissions,
    required TResult Function(ArticleSource articleSource) sourceDisabled,
    required TResult Function() noArticles,
    required TResult Function() noActiveSource,
  }) {
    return insufficientPermissions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function(ArticleSource articleSource)? sourceDisabled,
    TResult Function()? noArticles,
    TResult Function()? noActiveSource,
  }) {
    return insufficientPermissions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function(ArticleSource articleSource)? sourceDisabled,
    TResult Function()? noArticles,
    TResult Function()? noActiveSource,
    required TResult orElse(),
  }) {
    if (insufficientPermissions != null) {
      return insufficientPermissions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InsufficientPermissions value)
        insufficientPermissions,
    required TResult Function(_SourceDisabled value) sourceDisabled,
    required TResult Function(_NoArticles value) noArticles,
    required TResult Function(_NoActiveSource value) noActiveSource,
  }) {
    return insufficientPermissions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult Function(_SourceDisabled value)? sourceDisabled,
    TResult Function(_NoArticles value)? noArticles,
    TResult Function(_NoActiveSource value)? noActiveSource,
  }) {
    return insufficientPermissions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult Function(_SourceDisabled value)? sourceDisabled,
    TResult Function(_NoArticles value)? noArticles,
    TResult Function(_NoActiveSource value)? noActiveSource,
    required TResult orElse(),
  }) {
    if (insufficientPermissions != null) {
      return insufficientPermissions(this);
    }
    return orElse();
  }
}

abstract class _InsufficientPermissions implements ArticleFailure {
  const factory _InsufficientPermissions() = _$_InsufficientPermissions;
}

/// @nodoc
abstract class _$SourceDisabledCopyWith<$Res> {
  factory _$SourceDisabledCopyWith(
          _SourceDisabled value, $Res Function(_SourceDisabled) then) =
      __$SourceDisabledCopyWithImpl<$Res>;
  $Res call({ArticleSource articleSource});

  $ArticleSourceCopyWith<$Res> get articleSource;
}

/// @nodoc
class __$SourceDisabledCopyWithImpl<$Res>
    extends _$ArticleFailureCopyWithImpl<$Res>
    implements _$SourceDisabledCopyWith<$Res> {
  __$SourceDisabledCopyWithImpl(
      _SourceDisabled _value, $Res Function(_SourceDisabled) _then)
      : super(_value, (v) => _then(v as _SourceDisabled));

  @override
  _SourceDisabled get _value => super._value as _SourceDisabled;

  @override
  $Res call({
    Object? articleSource = freezed,
  }) {
    return _then(_SourceDisabled(
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

class _$_SourceDisabled implements _SourceDisabled {
  const _$_SourceDisabled(this.articleSource);

  @override
  final ArticleSource articleSource;

  @override
  String toString() {
    return 'ArticleFailure.sourceDisabled(articleSource: $articleSource)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SourceDisabled &&
            (identical(other.articleSource, articleSource) ||
                other.articleSource == articleSource));
  }

  @override
  int get hashCode => Object.hash(runtimeType, articleSource);

  @JsonKey(ignore: true)
  @override
  _$SourceDisabledCopyWith<_SourceDisabled> get copyWith =>
      __$SourceDisabledCopyWithImpl<_SourceDisabled>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() insufficientPermissions,
    required TResult Function(ArticleSource articleSource) sourceDisabled,
    required TResult Function() noArticles,
    required TResult Function() noActiveSource,
  }) {
    return sourceDisabled(articleSource);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function(ArticleSource articleSource)? sourceDisabled,
    TResult Function()? noArticles,
    TResult Function()? noActiveSource,
  }) {
    return sourceDisabled?.call(articleSource);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function(ArticleSource articleSource)? sourceDisabled,
    TResult Function()? noArticles,
    TResult Function()? noActiveSource,
    required TResult orElse(),
  }) {
    if (sourceDisabled != null) {
      return sourceDisabled(articleSource);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InsufficientPermissions value)
        insufficientPermissions,
    required TResult Function(_SourceDisabled value) sourceDisabled,
    required TResult Function(_NoArticles value) noArticles,
    required TResult Function(_NoActiveSource value) noActiveSource,
  }) {
    return sourceDisabled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult Function(_SourceDisabled value)? sourceDisabled,
    TResult Function(_NoArticles value)? noArticles,
    TResult Function(_NoActiveSource value)? noActiveSource,
  }) {
    return sourceDisabled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult Function(_SourceDisabled value)? sourceDisabled,
    TResult Function(_NoArticles value)? noArticles,
    TResult Function(_NoActiveSource value)? noActiveSource,
    required TResult orElse(),
  }) {
    if (sourceDisabled != null) {
      return sourceDisabled(this);
    }
    return orElse();
  }
}

abstract class _SourceDisabled implements ArticleFailure {
  const factory _SourceDisabled(ArticleSource articleSource) =
      _$_SourceDisabled;

  ArticleSource get articleSource;
  @JsonKey(ignore: true)
  _$SourceDisabledCopyWith<_SourceDisabled> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NoArticlesCopyWith<$Res> {
  factory _$NoArticlesCopyWith(
          _NoArticles value, $Res Function(_NoArticles) then) =
      __$NoArticlesCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoArticlesCopyWithImpl<$Res> extends _$ArticleFailureCopyWithImpl<$Res>
    implements _$NoArticlesCopyWith<$Res> {
  __$NoArticlesCopyWithImpl(
      _NoArticles _value, $Res Function(_NoArticles) _then)
      : super(_value, (v) => _then(v as _NoArticles));

  @override
  _NoArticles get _value => super._value as _NoArticles;
}

/// @nodoc

class _$_NoArticles implements _NoArticles {
  const _$_NoArticles();

  @override
  String toString() {
    return 'ArticleFailure.noArticles()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NoArticles);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() insufficientPermissions,
    required TResult Function(ArticleSource articleSource) sourceDisabled,
    required TResult Function() noArticles,
    required TResult Function() noActiveSource,
  }) {
    return noArticles();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function(ArticleSource articleSource)? sourceDisabled,
    TResult Function()? noArticles,
    TResult Function()? noActiveSource,
  }) {
    return noArticles?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function(ArticleSource articleSource)? sourceDisabled,
    TResult Function()? noArticles,
    TResult Function()? noActiveSource,
    required TResult orElse(),
  }) {
    if (noArticles != null) {
      return noArticles();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InsufficientPermissions value)
        insufficientPermissions,
    required TResult Function(_SourceDisabled value) sourceDisabled,
    required TResult Function(_NoArticles value) noArticles,
    required TResult Function(_NoActiveSource value) noActiveSource,
  }) {
    return noArticles(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult Function(_SourceDisabled value)? sourceDisabled,
    TResult Function(_NoArticles value)? noArticles,
    TResult Function(_NoActiveSource value)? noActiveSource,
  }) {
    return noArticles?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult Function(_SourceDisabled value)? sourceDisabled,
    TResult Function(_NoArticles value)? noArticles,
    TResult Function(_NoActiveSource value)? noActiveSource,
    required TResult orElse(),
  }) {
    if (noArticles != null) {
      return noArticles(this);
    }
    return orElse();
  }
}

abstract class _NoArticles implements ArticleFailure {
  const factory _NoArticles() = _$_NoArticles;
}

/// @nodoc
abstract class _$NoActiveSourceCopyWith<$Res> {
  factory _$NoActiveSourceCopyWith(
          _NoActiveSource value, $Res Function(_NoActiveSource) then) =
      __$NoActiveSourceCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoActiveSourceCopyWithImpl<$Res>
    extends _$ArticleFailureCopyWithImpl<$Res>
    implements _$NoActiveSourceCopyWith<$Res> {
  __$NoActiveSourceCopyWithImpl(
      _NoActiveSource _value, $Res Function(_NoActiveSource) _then)
      : super(_value, (v) => _then(v as _NoActiveSource));

  @override
  _NoActiveSource get _value => super._value as _NoActiveSource;
}

/// @nodoc

class _$_NoActiveSource implements _NoActiveSource {
  const _$_NoActiveSource();

  @override
  String toString() {
    return 'ArticleFailure.noActiveSource()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NoActiveSource);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() insufficientPermissions,
    required TResult Function(ArticleSource articleSource) sourceDisabled,
    required TResult Function() noArticles,
    required TResult Function() noActiveSource,
  }) {
    return noActiveSource();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function(ArticleSource articleSource)? sourceDisabled,
    TResult Function()? noArticles,
    TResult Function()? noActiveSource,
  }) {
    return noActiveSource?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function(ArticleSource articleSource)? sourceDisabled,
    TResult Function()? noArticles,
    TResult Function()? noActiveSource,
    required TResult orElse(),
  }) {
    if (noActiveSource != null) {
      return noActiveSource();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InsufficientPermissions value)
        insufficientPermissions,
    required TResult Function(_SourceDisabled value) sourceDisabled,
    required TResult Function(_NoArticles value) noArticles,
    required TResult Function(_NoActiveSource value) noActiveSource,
  }) {
    return noActiveSource(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult Function(_SourceDisabled value)? sourceDisabled,
    TResult Function(_NoArticles value)? noArticles,
    TResult Function(_NoActiveSource value)? noActiveSource,
  }) {
    return noActiveSource?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult Function(_SourceDisabled value)? sourceDisabled,
    TResult Function(_NoArticles value)? noArticles,
    TResult Function(_NoActiveSource value)? noActiveSource,
    required TResult orElse(),
  }) {
    if (noActiveSource != null) {
      return noActiveSource(this);
    }
    return orElse();
  }
}

abstract class _NoActiveSource implements ArticleFailure {
  const factory _NoActiveSource() = _$_NoActiveSource;
}
