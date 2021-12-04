// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'article_source_picker_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ArticleSourcePickerEventTearOff {
  const _$ArticleSourcePickerEventTearOff();

  _InitialLoadStarted initialLoadStarted() {
    return const _InitialLoadStarted();
  }

  _ArticleSourcesReceived articleSourcesReceived(
      Either<ArticleSourceFailure, KtList<ArticleSource>>
          failureOrEnabledArticleSources) {
    return _ArticleSourcesReceived(
      failureOrEnabledArticleSources,
    );
  }

  _FilterClicked filterClicked(
      Either<ArticleSourceFailure, KtList<ArticleSource>>
          failureOrEnabledArticleSources,
      int pickedSourceIndex) {
    return _FilterClicked(
      failureOrEnabledArticleSources,
      pickedSourceIndex,
    );
  }

  _ClearFiltersClicked clearFiltersClicked(
      Either<ArticleSourceFailure, KtList<ArticleSource>>
          failureOrEnabledArticleSources) {
    return _ClearFiltersClicked(
      failureOrEnabledArticleSources,
    );
  }
}

/// @nodoc
const $ArticleSourcePickerEvent = _$ArticleSourcePickerEventTearOff();

/// @nodoc
mixin _$ArticleSourcePickerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialLoadStarted,
    required TResult Function(
            Either<ArticleSourceFailure, KtList<ArticleSource>>
                failureOrEnabledArticleSources)
        articleSourcesReceived,
    required TResult Function(
            Either<ArticleSourceFailure, KtList<ArticleSource>>
                failureOrEnabledArticleSources,
            int pickedSourceIndex)
        filterClicked,
    required TResult Function(
            Either<ArticleSourceFailure, KtList<ArticleSource>>
                failureOrEnabledArticleSources)
        clearFiltersClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialLoadStarted,
    TResult Function(
            Either<ArticleSourceFailure, KtList<ArticleSource>>
                failureOrEnabledArticleSources)?
        articleSourcesReceived,
    TResult Function(
            Either<ArticleSourceFailure, KtList<ArticleSource>>
                failureOrEnabledArticleSources,
            int pickedSourceIndex)?
        filterClicked,
    TResult Function(
            Either<ArticleSourceFailure, KtList<ArticleSource>>
                failureOrEnabledArticleSources)?
        clearFiltersClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialLoadStarted,
    TResult Function(
            Either<ArticleSourceFailure, KtList<ArticleSource>>
                failureOrEnabledArticleSources)?
        articleSourcesReceived,
    TResult Function(
            Either<ArticleSourceFailure, KtList<ArticleSource>>
                failureOrEnabledArticleSources,
            int pickedSourceIndex)?
        filterClicked,
    TResult Function(
            Either<ArticleSourceFailure, KtList<ArticleSource>>
                failureOrEnabledArticleSources)?
        clearFiltersClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialLoadStarted value) initialLoadStarted,
    required TResult Function(_ArticleSourcesReceived value)
        articleSourcesReceived,
    required TResult Function(_FilterClicked value) filterClicked,
    required TResult Function(_ClearFiltersClicked value) clearFiltersClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialLoadStarted value)? initialLoadStarted,
    TResult Function(_ArticleSourcesReceived value)? articleSourcesReceived,
    TResult Function(_FilterClicked value)? filterClicked,
    TResult Function(_ClearFiltersClicked value)? clearFiltersClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialLoadStarted value)? initialLoadStarted,
    TResult Function(_ArticleSourcesReceived value)? articleSourcesReceived,
    TResult Function(_FilterClicked value)? filterClicked,
    TResult Function(_ClearFiltersClicked value)? clearFiltersClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleSourcePickerEventCopyWith<$Res> {
  factory $ArticleSourcePickerEventCopyWith(ArticleSourcePickerEvent value,
          $Res Function(ArticleSourcePickerEvent) then) =
      _$ArticleSourcePickerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ArticleSourcePickerEventCopyWithImpl<$Res>
    implements $ArticleSourcePickerEventCopyWith<$Res> {
  _$ArticleSourcePickerEventCopyWithImpl(this._value, this._then);

  final ArticleSourcePickerEvent _value;
  // ignore: unused_field
  final $Res Function(ArticleSourcePickerEvent) _then;
}

/// @nodoc
abstract class _$InitialLoadStartedCopyWith<$Res> {
  factory _$InitialLoadStartedCopyWith(
          _InitialLoadStarted value, $Res Function(_InitialLoadStarted) then) =
      __$InitialLoadStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialLoadStartedCopyWithImpl<$Res>
    extends _$ArticleSourcePickerEventCopyWithImpl<$Res>
    implements _$InitialLoadStartedCopyWith<$Res> {
  __$InitialLoadStartedCopyWithImpl(
      _InitialLoadStarted _value, $Res Function(_InitialLoadStarted) _then)
      : super(_value, (v) => _then(v as _InitialLoadStarted));

  @override
  _InitialLoadStarted get _value => super._value as _InitialLoadStarted;
}

/// @nodoc

class _$_InitialLoadStarted implements _InitialLoadStarted {
  const _$_InitialLoadStarted();

  @override
  String toString() {
    return 'ArticleSourcePickerEvent.initialLoadStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _InitialLoadStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialLoadStarted,
    required TResult Function(
            Either<ArticleSourceFailure, KtList<ArticleSource>>
                failureOrEnabledArticleSources)
        articleSourcesReceived,
    required TResult Function(
            Either<ArticleSourceFailure, KtList<ArticleSource>>
                failureOrEnabledArticleSources,
            int pickedSourceIndex)
        filterClicked,
    required TResult Function(
            Either<ArticleSourceFailure, KtList<ArticleSource>>
                failureOrEnabledArticleSources)
        clearFiltersClicked,
  }) {
    return initialLoadStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialLoadStarted,
    TResult Function(
            Either<ArticleSourceFailure, KtList<ArticleSource>>
                failureOrEnabledArticleSources)?
        articleSourcesReceived,
    TResult Function(
            Either<ArticleSourceFailure, KtList<ArticleSource>>
                failureOrEnabledArticleSources,
            int pickedSourceIndex)?
        filterClicked,
    TResult Function(
            Either<ArticleSourceFailure, KtList<ArticleSource>>
                failureOrEnabledArticleSources)?
        clearFiltersClicked,
  }) {
    return initialLoadStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialLoadStarted,
    TResult Function(
            Either<ArticleSourceFailure, KtList<ArticleSource>>
                failureOrEnabledArticleSources)?
        articleSourcesReceived,
    TResult Function(
            Either<ArticleSourceFailure, KtList<ArticleSource>>
                failureOrEnabledArticleSources,
            int pickedSourceIndex)?
        filterClicked,
    TResult Function(
            Either<ArticleSourceFailure, KtList<ArticleSource>>
                failureOrEnabledArticleSources)?
        clearFiltersClicked,
    required TResult orElse(),
  }) {
    if (initialLoadStarted != null) {
      return initialLoadStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialLoadStarted value) initialLoadStarted,
    required TResult Function(_ArticleSourcesReceived value)
        articleSourcesReceived,
    required TResult Function(_FilterClicked value) filterClicked,
    required TResult Function(_ClearFiltersClicked value) clearFiltersClicked,
  }) {
    return initialLoadStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialLoadStarted value)? initialLoadStarted,
    TResult Function(_ArticleSourcesReceived value)? articleSourcesReceived,
    TResult Function(_FilterClicked value)? filterClicked,
    TResult Function(_ClearFiltersClicked value)? clearFiltersClicked,
  }) {
    return initialLoadStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialLoadStarted value)? initialLoadStarted,
    TResult Function(_ArticleSourcesReceived value)? articleSourcesReceived,
    TResult Function(_FilterClicked value)? filterClicked,
    TResult Function(_ClearFiltersClicked value)? clearFiltersClicked,
    required TResult orElse(),
  }) {
    if (initialLoadStarted != null) {
      return initialLoadStarted(this);
    }
    return orElse();
  }
}

abstract class _InitialLoadStarted implements ArticleSourcePickerEvent {
  const factory _InitialLoadStarted() = _$_InitialLoadStarted;
}

/// @nodoc
abstract class _$ArticleSourcesReceivedCopyWith<$Res> {
  factory _$ArticleSourcesReceivedCopyWith(_ArticleSourcesReceived value,
          $Res Function(_ArticleSourcesReceived) then) =
      __$ArticleSourcesReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<ArticleSourceFailure, KtList<ArticleSource>>
          failureOrEnabledArticleSources});
}

/// @nodoc
class __$ArticleSourcesReceivedCopyWithImpl<$Res>
    extends _$ArticleSourcePickerEventCopyWithImpl<$Res>
    implements _$ArticleSourcesReceivedCopyWith<$Res> {
  __$ArticleSourcesReceivedCopyWithImpl(_ArticleSourcesReceived _value,
      $Res Function(_ArticleSourcesReceived) _then)
      : super(_value, (v) => _then(v as _ArticleSourcesReceived));

  @override
  _ArticleSourcesReceived get _value => super._value as _ArticleSourcesReceived;

  @override
  $Res call({
    Object? failureOrEnabledArticleSources = freezed,
  }) {
    return _then(_ArticleSourcesReceived(
      failureOrEnabledArticleSources == freezed
          ? _value.failureOrEnabledArticleSources
          : failureOrEnabledArticleSources // ignore: cast_nullable_to_non_nullable
              as Either<ArticleSourceFailure, KtList<ArticleSource>>,
    ));
  }
}

/// @nodoc

class _$_ArticleSourcesReceived implements _ArticleSourcesReceived {
  const _$_ArticleSourcesReceived(this.failureOrEnabledArticleSources);

  @override
  final Either<ArticleSourceFailure, KtList<ArticleSource>>
      failureOrEnabledArticleSources;

  @override
  String toString() {
    return 'ArticleSourcePickerEvent.articleSourcesReceived(failureOrEnabledArticleSources: $failureOrEnabledArticleSources)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArticleSourcesReceived &&
            (identical(other.failureOrEnabledArticleSources,
                    failureOrEnabledArticleSources) ||
                other.failureOrEnabledArticleSources ==
                    failureOrEnabledArticleSources));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrEnabledArticleSources);

  @JsonKey(ignore: true)
  @override
  _$ArticleSourcesReceivedCopyWith<_ArticleSourcesReceived> get copyWith =>
      __$ArticleSourcesReceivedCopyWithImpl<_ArticleSourcesReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialLoadStarted,
    required TResult Function(
            Either<ArticleSourceFailure, KtList<ArticleSource>>
                failureOrEnabledArticleSources)
        articleSourcesReceived,
    required TResult Function(
            Either<ArticleSourceFailure, KtList<ArticleSource>>
                failureOrEnabledArticleSources,
            int pickedSourceIndex)
        filterClicked,
    required TResult Function(
            Either<ArticleSourceFailure, KtList<ArticleSource>>
                failureOrEnabledArticleSources)
        clearFiltersClicked,
  }) {
    return articleSourcesReceived(failureOrEnabledArticleSources);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialLoadStarted,
    TResult Function(
            Either<ArticleSourceFailure, KtList<ArticleSource>>
                failureOrEnabledArticleSources)?
        articleSourcesReceived,
    TResult Function(
            Either<ArticleSourceFailure, KtList<ArticleSource>>
                failureOrEnabledArticleSources,
            int pickedSourceIndex)?
        filterClicked,
    TResult Function(
            Either<ArticleSourceFailure, KtList<ArticleSource>>
                failureOrEnabledArticleSources)?
        clearFiltersClicked,
  }) {
    return articleSourcesReceived?.call(failureOrEnabledArticleSources);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialLoadStarted,
    TResult Function(
            Either<ArticleSourceFailure, KtList<ArticleSource>>
                failureOrEnabledArticleSources)?
        articleSourcesReceived,
    TResult Function(
            Either<ArticleSourceFailure, KtList<ArticleSource>>
                failureOrEnabledArticleSources,
            int pickedSourceIndex)?
        filterClicked,
    TResult Function(
            Either<ArticleSourceFailure, KtList<ArticleSource>>
                failureOrEnabledArticleSources)?
        clearFiltersClicked,
    required TResult orElse(),
  }) {
    if (articleSourcesReceived != null) {
      return articleSourcesReceived(failureOrEnabledArticleSources);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialLoadStarted value) initialLoadStarted,
    required TResult Function(_ArticleSourcesReceived value)
        articleSourcesReceived,
    required TResult Function(_FilterClicked value) filterClicked,
    required TResult Function(_ClearFiltersClicked value) clearFiltersClicked,
  }) {
    return articleSourcesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialLoadStarted value)? initialLoadStarted,
    TResult Function(_ArticleSourcesReceived value)? articleSourcesReceived,
    TResult Function(_FilterClicked value)? filterClicked,
    TResult Function(_ClearFiltersClicked value)? clearFiltersClicked,
  }) {
    return articleSourcesReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialLoadStarted value)? initialLoadStarted,
    TResult Function(_ArticleSourcesReceived value)? articleSourcesReceived,
    TResult Function(_FilterClicked value)? filterClicked,
    TResult Function(_ClearFiltersClicked value)? clearFiltersClicked,
    required TResult orElse(),
  }) {
    if (articleSourcesReceived != null) {
      return articleSourcesReceived(this);
    }
    return orElse();
  }
}

abstract class _ArticleSourcesReceived implements ArticleSourcePickerEvent {
  const factory _ArticleSourcesReceived(
      Either<ArticleSourceFailure, KtList<ArticleSource>>
          failureOrEnabledArticleSources) = _$_ArticleSourcesReceived;

  Either<ArticleSourceFailure, KtList<ArticleSource>>
      get failureOrEnabledArticleSources;
  @JsonKey(ignore: true)
  _$ArticleSourcesReceivedCopyWith<_ArticleSourcesReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FilterClickedCopyWith<$Res> {
  factory _$FilterClickedCopyWith(
          _FilterClicked value, $Res Function(_FilterClicked) then) =
      __$FilterClickedCopyWithImpl<$Res>;
  $Res call(
      {Either<ArticleSourceFailure, KtList<ArticleSource>>
          failureOrEnabledArticleSources,
      int pickedSourceIndex});
}

/// @nodoc
class __$FilterClickedCopyWithImpl<$Res>
    extends _$ArticleSourcePickerEventCopyWithImpl<$Res>
    implements _$FilterClickedCopyWith<$Res> {
  __$FilterClickedCopyWithImpl(
      _FilterClicked _value, $Res Function(_FilterClicked) _then)
      : super(_value, (v) => _then(v as _FilterClicked));

  @override
  _FilterClicked get _value => super._value as _FilterClicked;

  @override
  $Res call({
    Object? failureOrEnabledArticleSources = freezed,
    Object? pickedSourceIndex = freezed,
  }) {
    return _then(_FilterClicked(
      failureOrEnabledArticleSources == freezed
          ? _value.failureOrEnabledArticleSources
          : failureOrEnabledArticleSources // ignore: cast_nullable_to_non_nullable
              as Either<ArticleSourceFailure, KtList<ArticleSource>>,
      pickedSourceIndex == freezed
          ? _value.pickedSourceIndex
          : pickedSourceIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_FilterClicked implements _FilterClicked {
  const _$_FilterClicked(
      this.failureOrEnabledArticleSources, this.pickedSourceIndex);

  @override
  final Either<ArticleSourceFailure, KtList<ArticleSource>>
      failureOrEnabledArticleSources;
  @override
  final int pickedSourceIndex;

  @override
  String toString() {
    return 'ArticleSourcePickerEvent.filterClicked(failureOrEnabledArticleSources: $failureOrEnabledArticleSources, pickedSourceIndex: $pickedSourceIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FilterClicked &&
            (identical(other.failureOrEnabledArticleSources,
                    failureOrEnabledArticleSources) ||
                other.failureOrEnabledArticleSources ==
                    failureOrEnabledArticleSources) &&
            (identical(other.pickedSourceIndex, pickedSourceIndex) ||
                other.pickedSourceIndex == pickedSourceIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, failureOrEnabledArticleSources, pickedSourceIndex);

  @JsonKey(ignore: true)
  @override
  _$FilterClickedCopyWith<_FilterClicked> get copyWith =>
      __$FilterClickedCopyWithImpl<_FilterClicked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialLoadStarted,
    required TResult Function(
            Either<ArticleSourceFailure, KtList<ArticleSource>>
                failureOrEnabledArticleSources)
        articleSourcesReceived,
    required TResult Function(
            Either<ArticleSourceFailure, KtList<ArticleSource>>
                failureOrEnabledArticleSources,
            int pickedSourceIndex)
        filterClicked,
    required TResult Function(
            Either<ArticleSourceFailure, KtList<ArticleSource>>
                failureOrEnabledArticleSources)
        clearFiltersClicked,
  }) {
    return filterClicked(failureOrEnabledArticleSources, pickedSourceIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialLoadStarted,
    TResult Function(
            Either<ArticleSourceFailure, KtList<ArticleSource>>
                failureOrEnabledArticleSources)?
        articleSourcesReceived,
    TResult Function(
            Either<ArticleSourceFailure, KtList<ArticleSource>>
                failureOrEnabledArticleSources,
            int pickedSourceIndex)?
        filterClicked,
    TResult Function(
            Either<ArticleSourceFailure, KtList<ArticleSource>>
                failureOrEnabledArticleSources)?
        clearFiltersClicked,
  }) {
    return filterClicked?.call(
        failureOrEnabledArticleSources, pickedSourceIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialLoadStarted,
    TResult Function(
            Either<ArticleSourceFailure, KtList<ArticleSource>>
                failureOrEnabledArticleSources)?
        articleSourcesReceived,
    TResult Function(
            Either<ArticleSourceFailure, KtList<ArticleSource>>
                failureOrEnabledArticleSources,
            int pickedSourceIndex)?
        filterClicked,
    TResult Function(
            Either<ArticleSourceFailure, KtList<ArticleSource>>
                failureOrEnabledArticleSources)?
        clearFiltersClicked,
    required TResult orElse(),
  }) {
    if (filterClicked != null) {
      return filterClicked(failureOrEnabledArticleSources, pickedSourceIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialLoadStarted value) initialLoadStarted,
    required TResult Function(_ArticleSourcesReceived value)
        articleSourcesReceived,
    required TResult Function(_FilterClicked value) filterClicked,
    required TResult Function(_ClearFiltersClicked value) clearFiltersClicked,
  }) {
    return filterClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialLoadStarted value)? initialLoadStarted,
    TResult Function(_ArticleSourcesReceived value)? articleSourcesReceived,
    TResult Function(_FilterClicked value)? filterClicked,
    TResult Function(_ClearFiltersClicked value)? clearFiltersClicked,
  }) {
    return filterClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialLoadStarted value)? initialLoadStarted,
    TResult Function(_ArticleSourcesReceived value)? articleSourcesReceived,
    TResult Function(_FilterClicked value)? filterClicked,
    TResult Function(_ClearFiltersClicked value)? clearFiltersClicked,
    required TResult orElse(),
  }) {
    if (filterClicked != null) {
      return filterClicked(this);
    }
    return orElse();
  }
}

abstract class _FilterClicked implements ArticleSourcePickerEvent {
  const factory _FilterClicked(
      Either<ArticleSourceFailure, KtList<ArticleSource>>
          failureOrEnabledArticleSources,
      int pickedSourceIndex) = _$_FilterClicked;

  Either<ArticleSourceFailure, KtList<ArticleSource>>
      get failureOrEnabledArticleSources;
  int get pickedSourceIndex;
  @JsonKey(ignore: true)
  _$FilterClickedCopyWith<_FilterClicked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ClearFiltersClickedCopyWith<$Res> {
  factory _$ClearFiltersClickedCopyWith(_ClearFiltersClicked value,
          $Res Function(_ClearFiltersClicked) then) =
      __$ClearFiltersClickedCopyWithImpl<$Res>;
  $Res call(
      {Either<ArticleSourceFailure, KtList<ArticleSource>>
          failureOrEnabledArticleSources});
}

/// @nodoc
class __$ClearFiltersClickedCopyWithImpl<$Res>
    extends _$ArticleSourcePickerEventCopyWithImpl<$Res>
    implements _$ClearFiltersClickedCopyWith<$Res> {
  __$ClearFiltersClickedCopyWithImpl(
      _ClearFiltersClicked _value, $Res Function(_ClearFiltersClicked) _then)
      : super(_value, (v) => _then(v as _ClearFiltersClicked));

  @override
  _ClearFiltersClicked get _value => super._value as _ClearFiltersClicked;

  @override
  $Res call({
    Object? failureOrEnabledArticleSources = freezed,
  }) {
    return _then(_ClearFiltersClicked(
      failureOrEnabledArticleSources == freezed
          ? _value.failureOrEnabledArticleSources
          : failureOrEnabledArticleSources // ignore: cast_nullable_to_non_nullable
              as Either<ArticleSourceFailure, KtList<ArticleSource>>,
    ));
  }
}

/// @nodoc

class _$_ClearFiltersClicked implements _ClearFiltersClicked {
  const _$_ClearFiltersClicked(this.failureOrEnabledArticleSources);

  @override
  final Either<ArticleSourceFailure, KtList<ArticleSource>>
      failureOrEnabledArticleSources;

  @override
  String toString() {
    return 'ArticleSourcePickerEvent.clearFiltersClicked(failureOrEnabledArticleSources: $failureOrEnabledArticleSources)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ClearFiltersClicked &&
            (identical(other.failureOrEnabledArticleSources,
                    failureOrEnabledArticleSources) ||
                other.failureOrEnabledArticleSources ==
                    failureOrEnabledArticleSources));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrEnabledArticleSources);

  @JsonKey(ignore: true)
  @override
  _$ClearFiltersClickedCopyWith<_ClearFiltersClicked> get copyWith =>
      __$ClearFiltersClickedCopyWithImpl<_ClearFiltersClicked>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialLoadStarted,
    required TResult Function(
            Either<ArticleSourceFailure, KtList<ArticleSource>>
                failureOrEnabledArticleSources)
        articleSourcesReceived,
    required TResult Function(
            Either<ArticleSourceFailure, KtList<ArticleSource>>
                failureOrEnabledArticleSources,
            int pickedSourceIndex)
        filterClicked,
    required TResult Function(
            Either<ArticleSourceFailure, KtList<ArticleSource>>
                failureOrEnabledArticleSources)
        clearFiltersClicked,
  }) {
    return clearFiltersClicked(failureOrEnabledArticleSources);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialLoadStarted,
    TResult Function(
            Either<ArticleSourceFailure, KtList<ArticleSource>>
                failureOrEnabledArticleSources)?
        articleSourcesReceived,
    TResult Function(
            Either<ArticleSourceFailure, KtList<ArticleSource>>
                failureOrEnabledArticleSources,
            int pickedSourceIndex)?
        filterClicked,
    TResult Function(
            Either<ArticleSourceFailure, KtList<ArticleSource>>
                failureOrEnabledArticleSources)?
        clearFiltersClicked,
  }) {
    return clearFiltersClicked?.call(failureOrEnabledArticleSources);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialLoadStarted,
    TResult Function(
            Either<ArticleSourceFailure, KtList<ArticleSource>>
                failureOrEnabledArticleSources)?
        articleSourcesReceived,
    TResult Function(
            Either<ArticleSourceFailure, KtList<ArticleSource>>
                failureOrEnabledArticleSources,
            int pickedSourceIndex)?
        filterClicked,
    TResult Function(
            Either<ArticleSourceFailure, KtList<ArticleSource>>
                failureOrEnabledArticleSources)?
        clearFiltersClicked,
    required TResult orElse(),
  }) {
    if (clearFiltersClicked != null) {
      return clearFiltersClicked(failureOrEnabledArticleSources);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialLoadStarted value) initialLoadStarted,
    required TResult Function(_ArticleSourcesReceived value)
        articleSourcesReceived,
    required TResult Function(_FilterClicked value) filterClicked,
    required TResult Function(_ClearFiltersClicked value) clearFiltersClicked,
  }) {
    return clearFiltersClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialLoadStarted value)? initialLoadStarted,
    TResult Function(_ArticleSourcesReceived value)? articleSourcesReceived,
    TResult Function(_FilterClicked value)? filterClicked,
    TResult Function(_ClearFiltersClicked value)? clearFiltersClicked,
  }) {
    return clearFiltersClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialLoadStarted value)? initialLoadStarted,
    TResult Function(_ArticleSourcesReceived value)? articleSourcesReceived,
    TResult Function(_FilterClicked value)? filterClicked,
    TResult Function(_ClearFiltersClicked value)? clearFiltersClicked,
    required TResult orElse(),
  }) {
    if (clearFiltersClicked != null) {
      return clearFiltersClicked(this);
    }
    return orElse();
  }
}

abstract class _ClearFiltersClicked implements ArticleSourcePickerEvent {
  const factory _ClearFiltersClicked(
      Either<ArticleSourceFailure, KtList<ArticleSource>>
          failureOrEnabledArticleSources) = _$_ClearFiltersClicked;

  Either<ArticleSourceFailure, KtList<ArticleSource>>
      get failureOrEnabledArticleSources;
  @JsonKey(ignore: true)
  _$ClearFiltersClickedCopyWith<_ClearFiltersClicked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ArticleSourcePickerStateTearOff {
  const _$ArticleSourcePickerStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(KtList<ArticleSource> articleSources) {
    return _LoadSuccess(
      articleSources,
    );
  }

  _LoadFailure loadFailure(ArticleSourceFailure articleSourceFailure) {
    return _LoadFailure(
      articleSourceFailure,
    );
  }

  _FilterInProgress filterInProgress() {
    return const _FilterInProgress();
  }

  _Filtered filterSuccess(
      KtList<ArticleSource> articleSources, int pickedSourceIndex) {
    return _Filtered(
      articleSources,
      pickedSourceIndex,
    );
  }

  _FilterFailure filterFailure(ArticleSourceFailure articleSourceFailure) {
    return _FilterFailure(
      articleSourceFailure,
    );
  }
}

/// @nodoc
const $ArticleSourcePickerState = _$ArticleSourcePickerStateTearOff();

/// @nodoc
mixin _$ArticleSourcePickerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<ArticleSource> articleSources) loadSuccess,
    required TResult Function(ArticleSourceFailure articleSourceFailure)
        loadFailure,
    required TResult Function() filterInProgress,
    required TResult Function(
            KtList<ArticleSource> articleSources, int pickedSourceIndex)
        filterSuccess,
    required TResult Function(ArticleSourceFailure articleSourceFailure)
        filterFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<ArticleSource> articleSources)? loadSuccess,
    TResult Function(ArticleSourceFailure articleSourceFailure)? loadFailure,
    TResult Function()? filterInProgress,
    TResult Function(
            KtList<ArticleSource> articleSources, int pickedSourceIndex)?
        filterSuccess,
    TResult Function(ArticleSourceFailure articleSourceFailure)? filterFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<ArticleSource> articleSources)? loadSuccess,
    TResult Function(ArticleSourceFailure articleSourceFailure)? loadFailure,
    TResult Function()? filterInProgress,
    TResult Function(
            KtList<ArticleSource> articleSources, int pickedSourceIndex)?
        filterSuccess,
    TResult Function(ArticleSourceFailure articleSourceFailure)? filterFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_FilterInProgress value) filterInProgress,
    required TResult Function(_Filtered value) filterSuccess,
    required TResult Function(_FilterFailure value) filterFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_FilterInProgress value)? filterInProgress,
    TResult Function(_Filtered value)? filterSuccess,
    TResult Function(_FilterFailure value)? filterFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_FilterInProgress value)? filterInProgress,
    TResult Function(_Filtered value)? filterSuccess,
    TResult Function(_FilterFailure value)? filterFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleSourcePickerStateCopyWith<$Res> {
  factory $ArticleSourcePickerStateCopyWith(ArticleSourcePickerState value,
          $Res Function(ArticleSourcePickerState) then) =
      _$ArticleSourcePickerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ArticleSourcePickerStateCopyWithImpl<$Res>
    implements $ArticleSourcePickerStateCopyWith<$Res> {
  _$ArticleSourcePickerStateCopyWithImpl(this._value, this._then);

  final ArticleSourcePickerState _value;
  // ignore: unused_field
  final $Res Function(ArticleSourcePickerState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$ArticleSourcePickerStateCopyWithImpl<$Res>
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
    return 'ArticleSourcePickerState.initial()';
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
    required TResult Function(KtList<ArticleSource> articleSources) loadSuccess,
    required TResult Function(ArticleSourceFailure articleSourceFailure)
        loadFailure,
    required TResult Function() filterInProgress,
    required TResult Function(
            KtList<ArticleSource> articleSources, int pickedSourceIndex)
        filterSuccess,
    required TResult Function(ArticleSourceFailure articleSourceFailure)
        filterFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<ArticleSource> articleSources)? loadSuccess,
    TResult Function(ArticleSourceFailure articleSourceFailure)? loadFailure,
    TResult Function()? filterInProgress,
    TResult Function(
            KtList<ArticleSource> articleSources, int pickedSourceIndex)?
        filterSuccess,
    TResult Function(ArticleSourceFailure articleSourceFailure)? filterFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<ArticleSource> articleSources)? loadSuccess,
    TResult Function(ArticleSourceFailure articleSourceFailure)? loadFailure,
    TResult Function()? filterInProgress,
    TResult Function(
            KtList<ArticleSource> articleSources, int pickedSourceIndex)?
        filterSuccess,
    TResult Function(ArticleSourceFailure articleSourceFailure)? filterFailure,
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
    required TResult Function(_FilterInProgress value) filterInProgress,
    required TResult Function(_Filtered value) filterSuccess,
    required TResult Function(_FilterFailure value) filterFailure,
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
    TResult Function(_FilterInProgress value)? filterInProgress,
    TResult Function(_Filtered value)? filterSuccess,
    TResult Function(_FilterFailure value)? filterFailure,
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
    TResult Function(_FilterInProgress value)? filterInProgress,
    TResult Function(_Filtered value)? filterSuccess,
    TResult Function(_FilterFailure value)? filterFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ArticleSourcePickerState {
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
    extends _$ArticleSourcePickerStateCopyWithImpl<$Res>
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
    return 'ArticleSourcePickerState.loadInProgress()';
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
    required TResult Function(KtList<ArticleSource> articleSources) loadSuccess,
    required TResult Function(ArticleSourceFailure articleSourceFailure)
        loadFailure,
    required TResult Function() filterInProgress,
    required TResult Function(
            KtList<ArticleSource> articleSources, int pickedSourceIndex)
        filterSuccess,
    required TResult Function(ArticleSourceFailure articleSourceFailure)
        filterFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<ArticleSource> articleSources)? loadSuccess,
    TResult Function(ArticleSourceFailure articleSourceFailure)? loadFailure,
    TResult Function()? filterInProgress,
    TResult Function(
            KtList<ArticleSource> articleSources, int pickedSourceIndex)?
        filterSuccess,
    TResult Function(ArticleSourceFailure articleSourceFailure)? filterFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<ArticleSource> articleSources)? loadSuccess,
    TResult Function(ArticleSourceFailure articleSourceFailure)? loadFailure,
    TResult Function()? filterInProgress,
    TResult Function(
            KtList<ArticleSource> articleSources, int pickedSourceIndex)?
        filterSuccess,
    TResult Function(ArticleSourceFailure articleSourceFailure)? filterFailure,
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
    required TResult Function(_FilterInProgress value) filterInProgress,
    required TResult Function(_Filtered value) filterSuccess,
    required TResult Function(_FilterFailure value) filterFailure,
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
    TResult Function(_FilterInProgress value)? filterInProgress,
    TResult Function(_Filtered value)? filterSuccess,
    TResult Function(_FilterFailure value)? filterFailure,
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
    TResult Function(_FilterInProgress value)? filterInProgress,
    TResult Function(_Filtered value)? filterSuccess,
    TResult Function(_FilterFailure value)? filterFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements ArticleSourcePickerState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<ArticleSource> articleSources});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$ArticleSourcePickerStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? articleSources = freezed,
  }) {
    return _then(_LoadSuccess(
      articleSources == freezed
          ? _value.articleSources
          : articleSources // ignore: cast_nullable_to_non_nullable
              as KtList<ArticleSource>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.articleSources);

  @override
  final KtList<ArticleSource> articleSources;

  @override
  String toString() {
    return 'ArticleSourcePickerState.loadSuccess(articleSources: $articleSources)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadSuccess &&
            (identical(other.articleSources, articleSources) ||
                other.articleSources == articleSources));
  }

  @override
  int get hashCode => Object.hash(runtimeType, articleSources);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<ArticleSource> articleSources) loadSuccess,
    required TResult Function(ArticleSourceFailure articleSourceFailure)
        loadFailure,
    required TResult Function() filterInProgress,
    required TResult Function(
            KtList<ArticleSource> articleSources, int pickedSourceIndex)
        filterSuccess,
    required TResult Function(ArticleSourceFailure articleSourceFailure)
        filterFailure,
  }) {
    return loadSuccess(articleSources);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<ArticleSource> articleSources)? loadSuccess,
    TResult Function(ArticleSourceFailure articleSourceFailure)? loadFailure,
    TResult Function()? filterInProgress,
    TResult Function(
            KtList<ArticleSource> articleSources, int pickedSourceIndex)?
        filterSuccess,
    TResult Function(ArticleSourceFailure articleSourceFailure)? filterFailure,
  }) {
    return loadSuccess?.call(articleSources);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<ArticleSource> articleSources)? loadSuccess,
    TResult Function(ArticleSourceFailure articleSourceFailure)? loadFailure,
    TResult Function()? filterInProgress,
    TResult Function(
            KtList<ArticleSource> articleSources, int pickedSourceIndex)?
        filterSuccess,
    TResult Function(ArticleSourceFailure articleSourceFailure)? filterFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(articleSources);
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
    required TResult Function(_FilterInProgress value) filterInProgress,
    required TResult Function(_Filtered value) filterSuccess,
    required TResult Function(_FilterFailure value) filterFailure,
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
    TResult Function(_FilterInProgress value)? filterInProgress,
    TResult Function(_Filtered value)? filterSuccess,
    TResult Function(_FilterFailure value)? filterFailure,
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
    TResult Function(_FilterInProgress value)? filterInProgress,
    TResult Function(_Filtered value)? filterSuccess,
    TResult Function(_FilterFailure value)? filterFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements ArticleSourcePickerState {
  const factory _LoadSuccess(KtList<ArticleSource> articleSources) =
      _$_LoadSuccess;

  KtList<ArticleSource> get articleSources;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({ArticleSourceFailure articleSourceFailure});

  $ArticleSourceFailureCopyWith<$Res> get articleSourceFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$ArticleSourcePickerStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? articleSourceFailure = freezed,
  }) {
    return _then(_LoadFailure(
      articleSourceFailure == freezed
          ? _value.articleSourceFailure
          : articleSourceFailure // ignore: cast_nullable_to_non_nullable
              as ArticleSourceFailure,
    ));
  }

  @override
  $ArticleSourceFailureCopyWith<$Res> get articleSourceFailure {
    return $ArticleSourceFailureCopyWith<$Res>(_value.articleSourceFailure,
        (value) {
      return _then(_value.copyWith(articleSourceFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.articleSourceFailure);

  @override
  final ArticleSourceFailure articleSourceFailure;

  @override
  String toString() {
    return 'ArticleSourcePickerState.loadFailure(articleSourceFailure: $articleSourceFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadFailure &&
            (identical(other.articleSourceFailure, articleSourceFailure) ||
                other.articleSourceFailure == articleSourceFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, articleSourceFailure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<ArticleSource> articleSources) loadSuccess,
    required TResult Function(ArticleSourceFailure articleSourceFailure)
        loadFailure,
    required TResult Function() filterInProgress,
    required TResult Function(
            KtList<ArticleSource> articleSources, int pickedSourceIndex)
        filterSuccess,
    required TResult Function(ArticleSourceFailure articleSourceFailure)
        filterFailure,
  }) {
    return loadFailure(articleSourceFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<ArticleSource> articleSources)? loadSuccess,
    TResult Function(ArticleSourceFailure articleSourceFailure)? loadFailure,
    TResult Function()? filterInProgress,
    TResult Function(
            KtList<ArticleSource> articleSources, int pickedSourceIndex)?
        filterSuccess,
    TResult Function(ArticleSourceFailure articleSourceFailure)? filterFailure,
  }) {
    return loadFailure?.call(articleSourceFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<ArticleSource> articleSources)? loadSuccess,
    TResult Function(ArticleSourceFailure articleSourceFailure)? loadFailure,
    TResult Function()? filterInProgress,
    TResult Function(
            KtList<ArticleSource> articleSources, int pickedSourceIndex)?
        filterSuccess,
    TResult Function(ArticleSourceFailure articleSourceFailure)? filterFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(articleSourceFailure);
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
    required TResult Function(_FilterInProgress value) filterInProgress,
    required TResult Function(_Filtered value) filterSuccess,
    required TResult Function(_FilterFailure value) filterFailure,
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
    TResult Function(_FilterInProgress value)? filterInProgress,
    TResult Function(_Filtered value)? filterSuccess,
    TResult Function(_FilterFailure value)? filterFailure,
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
    TResult Function(_FilterInProgress value)? filterInProgress,
    TResult Function(_Filtered value)? filterSuccess,
    TResult Function(_FilterFailure value)? filterFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements ArticleSourcePickerState {
  const factory _LoadFailure(ArticleSourceFailure articleSourceFailure) =
      _$_LoadFailure;

  ArticleSourceFailure get articleSourceFailure;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FilterInProgressCopyWith<$Res> {
  factory _$FilterInProgressCopyWith(
          _FilterInProgress value, $Res Function(_FilterInProgress) then) =
      __$FilterInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$FilterInProgressCopyWithImpl<$Res>
    extends _$ArticleSourcePickerStateCopyWithImpl<$Res>
    implements _$FilterInProgressCopyWith<$Res> {
  __$FilterInProgressCopyWithImpl(
      _FilterInProgress _value, $Res Function(_FilterInProgress) _then)
      : super(_value, (v) => _then(v as _FilterInProgress));

  @override
  _FilterInProgress get _value => super._value as _FilterInProgress;
}

/// @nodoc

class _$_FilterInProgress implements _FilterInProgress {
  const _$_FilterInProgress();

  @override
  String toString() {
    return 'ArticleSourcePickerState.filterInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FilterInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<ArticleSource> articleSources) loadSuccess,
    required TResult Function(ArticleSourceFailure articleSourceFailure)
        loadFailure,
    required TResult Function() filterInProgress,
    required TResult Function(
            KtList<ArticleSource> articleSources, int pickedSourceIndex)
        filterSuccess,
    required TResult Function(ArticleSourceFailure articleSourceFailure)
        filterFailure,
  }) {
    return filterInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<ArticleSource> articleSources)? loadSuccess,
    TResult Function(ArticleSourceFailure articleSourceFailure)? loadFailure,
    TResult Function()? filterInProgress,
    TResult Function(
            KtList<ArticleSource> articleSources, int pickedSourceIndex)?
        filterSuccess,
    TResult Function(ArticleSourceFailure articleSourceFailure)? filterFailure,
  }) {
    return filterInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<ArticleSource> articleSources)? loadSuccess,
    TResult Function(ArticleSourceFailure articleSourceFailure)? loadFailure,
    TResult Function()? filterInProgress,
    TResult Function(
            KtList<ArticleSource> articleSources, int pickedSourceIndex)?
        filterSuccess,
    TResult Function(ArticleSourceFailure articleSourceFailure)? filterFailure,
    required TResult orElse(),
  }) {
    if (filterInProgress != null) {
      return filterInProgress();
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
    required TResult Function(_FilterInProgress value) filterInProgress,
    required TResult Function(_Filtered value) filterSuccess,
    required TResult Function(_FilterFailure value) filterFailure,
  }) {
    return filterInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_FilterInProgress value)? filterInProgress,
    TResult Function(_Filtered value)? filterSuccess,
    TResult Function(_FilterFailure value)? filterFailure,
  }) {
    return filterInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_FilterInProgress value)? filterInProgress,
    TResult Function(_Filtered value)? filterSuccess,
    TResult Function(_FilterFailure value)? filterFailure,
    required TResult orElse(),
  }) {
    if (filterInProgress != null) {
      return filterInProgress(this);
    }
    return orElse();
  }
}

abstract class _FilterInProgress implements ArticleSourcePickerState {
  const factory _FilterInProgress() = _$_FilterInProgress;
}

/// @nodoc
abstract class _$FilteredCopyWith<$Res> {
  factory _$FilteredCopyWith(_Filtered value, $Res Function(_Filtered) then) =
      __$FilteredCopyWithImpl<$Res>;
  $Res call({KtList<ArticleSource> articleSources, int pickedSourceIndex});
}

/// @nodoc
class __$FilteredCopyWithImpl<$Res>
    extends _$ArticleSourcePickerStateCopyWithImpl<$Res>
    implements _$FilteredCopyWith<$Res> {
  __$FilteredCopyWithImpl(_Filtered _value, $Res Function(_Filtered) _then)
      : super(_value, (v) => _then(v as _Filtered));

  @override
  _Filtered get _value => super._value as _Filtered;

  @override
  $Res call({
    Object? articleSources = freezed,
    Object? pickedSourceIndex = freezed,
  }) {
    return _then(_Filtered(
      articleSources == freezed
          ? _value.articleSources
          : articleSources // ignore: cast_nullable_to_non_nullable
              as KtList<ArticleSource>,
      pickedSourceIndex == freezed
          ? _value.pickedSourceIndex
          : pickedSourceIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Filtered implements _Filtered {
  const _$_Filtered(this.articleSources, this.pickedSourceIndex);

  @override
  final KtList<ArticleSource> articleSources;
  @override
  final int pickedSourceIndex;

  @override
  String toString() {
    return 'ArticleSourcePickerState.filterSuccess(articleSources: $articleSources, pickedSourceIndex: $pickedSourceIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Filtered &&
            (identical(other.articleSources, articleSources) ||
                other.articleSources == articleSources) &&
            (identical(other.pickedSourceIndex, pickedSourceIndex) ||
                other.pickedSourceIndex == pickedSourceIndex));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, articleSources, pickedSourceIndex);

  @JsonKey(ignore: true)
  @override
  _$FilteredCopyWith<_Filtered> get copyWith =>
      __$FilteredCopyWithImpl<_Filtered>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<ArticleSource> articleSources) loadSuccess,
    required TResult Function(ArticleSourceFailure articleSourceFailure)
        loadFailure,
    required TResult Function() filterInProgress,
    required TResult Function(
            KtList<ArticleSource> articleSources, int pickedSourceIndex)
        filterSuccess,
    required TResult Function(ArticleSourceFailure articleSourceFailure)
        filterFailure,
  }) {
    return filterSuccess(articleSources, pickedSourceIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<ArticleSource> articleSources)? loadSuccess,
    TResult Function(ArticleSourceFailure articleSourceFailure)? loadFailure,
    TResult Function()? filterInProgress,
    TResult Function(
            KtList<ArticleSource> articleSources, int pickedSourceIndex)?
        filterSuccess,
    TResult Function(ArticleSourceFailure articleSourceFailure)? filterFailure,
  }) {
    return filterSuccess?.call(articleSources, pickedSourceIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<ArticleSource> articleSources)? loadSuccess,
    TResult Function(ArticleSourceFailure articleSourceFailure)? loadFailure,
    TResult Function()? filterInProgress,
    TResult Function(
            KtList<ArticleSource> articleSources, int pickedSourceIndex)?
        filterSuccess,
    TResult Function(ArticleSourceFailure articleSourceFailure)? filterFailure,
    required TResult orElse(),
  }) {
    if (filterSuccess != null) {
      return filterSuccess(articleSources, pickedSourceIndex);
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
    required TResult Function(_FilterInProgress value) filterInProgress,
    required TResult Function(_Filtered value) filterSuccess,
    required TResult Function(_FilterFailure value) filterFailure,
  }) {
    return filterSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_FilterInProgress value)? filterInProgress,
    TResult Function(_Filtered value)? filterSuccess,
    TResult Function(_FilterFailure value)? filterFailure,
  }) {
    return filterSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_FilterInProgress value)? filterInProgress,
    TResult Function(_Filtered value)? filterSuccess,
    TResult Function(_FilterFailure value)? filterFailure,
    required TResult orElse(),
  }) {
    if (filterSuccess != null) {
      return filterSuccess(this);
    }
    return orElse();
  }
}

abstract class _Filtered implements ArticleSourcePickerState {
  const factory _Filtered(
          KtList<ArticleSource> articleSources, int pickedSourceIndex) =
      _$_Filtered;

  KtList<ArticleSource> get articleSources;
  int get pickedSourceIndex;
  @JsonKey(ignore: true)
  _$FilteredCopyWith<_Filtered> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FilterFailureCopyWith<$Res> {
  factory _$FilterFailureCopyWith(
          _FilterFailure value, $Res Function(_FilterFailure) then) =
      __$FilterFailureCopyWithImpl<$Res>;
  $Res call({ArticleSourceFailure articleSourceFailure});

  $ArticleSourceFailureCopyWith<$Res> get articleSourceFailure;
}

/// @nodoc
class __$FilterFailureCopyWithImpl<$Res>
    extends _$ArticleSourcePickerStateCopyWithImpl<$Res>
    implements _$FilterFailureCopyWith<$Res> {
  __$FilterFailureCopyWithImpl(
      _FilterFailure _value, $Res Function(_FilterFailure) _then)
      : super(_value, (v) => _then(v as _FilterFailure));

  @override
  _FilterFailure get _value => super._value as _FilterFailure;

  @override
  $Res call({
    Object? articleSourceFailure = freezed,
  }) {
    return _then(_FilterFailure(
      articleSourceFailure == freezed
          ? _value.articleSourceFailure
          : articleSourceFailure // ignore: cast_nullable_to_non_nullable
              as ArticleSourceFailure,
    ));
  }

  @override
  $ArticleSourceFailureCopyWith<$Res> get articleSourceFailure {
    return $ArticleSourceFailureCopyWith<$Res>(_value.articleSourceFailure,
        (value) {
      return _then(_value.copyWith(articleSourceFailure: value));
    });
  }
}

/// @nodoc

class _$_FilterFailure implements _FilterFailure {
  const _$_FilterFailure(this.articleSourceFailure);

  @override
  final ArticleSourceFailure articleSourceFailure;

  @override
  String toString() {
    return 'ArticleSourcePickerState.filterFailure(articleSourceFailure: $articleSourceFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FilterFailure &&
            (identical(other.articleSourceFailure, articleSourceFailure) ||
                other.articleSourceFailure == articleSourceFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, articleSourceFailure);

  @JsonKey(ignore: true)
  @override
  _$FilterFailureCopyWith<_FilterFailure> get copyWith =>
      __$FilterFailureCopyWithImpl<_FilterFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<ArticleSource> articleSources) loadSuccess,
    required TResult Function(ArticleSourceFailure articleSourceFailure)
        loadFailure,
    required TResult Function() filterInProgress,
    required TResult Function(
            KtList<ArticleSource> articleSources, int pickedSourceIndex)
        filterSuccess,
    required TResult Function(ArticleSourceFailure articleSourceFailure)
        filterFailure,
  }) {
    return filterFailure(articleSourceFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<ArticleSource> articleSources)? loadSuccess,
    TResult Function(ArticleSourceFailure articleSourceFailure)? loadFailure,
    TResult Function()? filterInProgress,
    TResult Function(
            KtList<ArticleSource> articleSources, int pickedSourceIndex)?
        filterSuccess,
    TResult Function(ArticleSourceFailure articleSourceFailure)? filterFailure,
  }) {
    return filterFailure?.call(articleSourceFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<ArticleSource> articleSources)? loadSuccess,
    TResult Function(ArticleSourceFailure articleSourceFailure)? loadFailure,
    TResult Function()? filterInProgress,
    TResult Function(
            KtList<ArticleSource> articleSources, int pickedSourceIndex)?
        filterSuccess,
    TResult Function(ArticleSourceFailure articleSourceFailure)? filterFailure,
    required TResult orElse(),
  }) {
    if (filterFailure != null) {
      return filterFailure(articleSourceFailure);
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
    required TResult Function(_FilterInProgress value) filterInProgress,
    required TResult Function(_Filtered value) filterSuccess,
    required TResult Function(_FilterFailure value) filterFailure,
  }) {
    return filterFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_FilterInProgress value)? filterInProgress,
    TResult Function(_Filtered value)? filterSuccess,
    TResult Function(_FilterFailure value)? filterFailure,
  }) {
    return filterFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_FilterInProgress value)? filterInProgress,
    TResult Function(_Filtered value)? filterSuccess,
    TResult Function(_FilterFailure value)? filterFailure,
    required TResult orElse(),
  }) {
    if (filterFailure != null) {
      return filterFailure(this);
    }
    return orElse();
  }
}

abstract class _FilterFailure implements ArticleSourcePickerState {
  const factory _FilterFailure(ArticleSourceFailure articleSourceFailure) =
      _$_FilterFailure;

  ArticleSourceFailure get articleSourceFailure;
  @JsonKey(ignore: true)
  _$FilterFailureCopyWith<_FilterFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
