// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'topic_recommendations_dropdown_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TopicRecommendationsDropdownEventTearOff {
  const _$TopicRecommendationsDropdownEventTearOff();

  _ShowRecommendationsPressed showRecommendationsPressed(
      int index, String termId) {
    return _ShowRecommendationsPressed(
      index,
      termId,
    );
  }
}

/// @nodoc
const $TopicRecommendationsDropdownEvent =
    _$TopicRecommendationsDropdownEventTearOff();

/// @nodoc
mixin _$TopicRecommendationsDropdownEvent {
  int get index => throw _privateConstructorUsedError;
  String get termId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index, String termId)
        showRecommendationsPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index, String termId)? showRecommendationsPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, String termId)? showRecommendationsPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowRecommendationsPressed value)
        showRecommendationsPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ShowRecommendationsPressed value)?
        showRecommendationsPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowRecommendationsPressed value)?
        showRecommendationsPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TopicRecommendationsDropdownEventCopyWith<TopicRecommendationsDropdownEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicRecommendationsDropdownEventCopyWith<$Res> {
  factory $TopicRecommendationsDropdownEventCopyWith(
          TopicRecommendationsDropdownEvent value,
          $Res Function(TopicRecommendationsDropdownEvent) then) =
      _$TopicRecommendationsDropdownEventCopyWithImpl<$Res>;
  $Res call({int index, String termId});
}

/// @nodoc
class _$TopicRecommendationsDropdownEventCopyWithImpl<$Res>
    implements $TopicRecommendationsDropdownEventCopyWith<$Res> {
  _$TopicRecommendationsDropdownEventCopyWithImpl(this._value, this._then);

  final TopicRecommendationsDropdownEvent _value;
  // ignore: unused_field
  final $Res Function(TopicRecommendationsDropdownEvent) _then;

  @override
  $Res call({
    Object? index = freezed,
    Object? termId = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      termId: termId == freezed
          ? _value.termId
          : termId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ShowRecommendationsPressedCopyWith<$Res>
    implements $TopicRecommendationsDropdownEventCopyWith<$Res> {
  factory _$ShowRecommendationsPressedCopyWith(
          _ShowRecommendationsPressed value,
          $Res Function(_ShowRecommendationsPressed) then) =
      __$ShowRecommendationsPressedCopyWithImpl<$Res>;
  @override
  $Res call({int index, String termId});
}

/// @nodoc
class __$ShowRecommendationsPressedCopyWithImpl<$Res>
    extends _$TopicRecommendationsDropdownEventCopyWithImpl<$Res>
    implements _$ShowRecommendationsPressedCopyWith<$Res> {
  __$ShowRecommendationsPressedCopyWithImpl(_ShowRecommendationsPressed _value,
      $Res Function(_ShowRecommendationsPressed) _then)
      : super(_value, (v) => _then(v as _ShowRecommendationsPressed));

  @override
  _ShowRecommendationsPressed get _value =>
      super._value as _ShowRecommendationsPressed;

  @override
  $Res call({
    Object? index = freezed,
    Object? termId = freezed,
  }) {
    return _then(_ShowRecommendationsPressed(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      termId == freezed
          ? _value.termId
          : termId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ShowRecommendationsPressed implements _ShowRecommendationsPressed {
  const _$_ShowRecommendationsPressed(this.index, this.termId);

  @override
  final int index;
  @override
  final String termId;

  @override
  String toString() {
    return 'TopicRecommendationsDropdownEvent.showRecommendationsPressed(index: $index, termId: $termId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShowRecommendationsPressed &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.termId, termId) || other.termId == termId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, termId);

  @JsonKey(ignore: true)
  @override
  _$ShowRecommendationsPressedCopyWith<_ShowRecommendationsPressed>
      get copyWith => __$ShowRecommendationsPressedCopyWithImpl<
          _ShowRecommendationsPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index, String termId)
        showRecommendationsPressed,
  }) {
    return showRecommendationsPressed(index, termId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index, String termId)? showRecommendationsPressed,
  }) {
    return showRecommendationsPressed?.call(index, termId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, String termId)? showRecommendationsPressed,
    required TResult orElse(),
  }) {
    if (showRecommendationsPressed != null) {
      return showRecommendationsPressed(index, termId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowRecommendationsPressed value)
        showRecommendationsPressed,
  }) {
    return showRecommendationsPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ShowRecommendationsPressed value)?
        showRecommendationsPressed,
  }) {
    return showRecommendationsPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowRecommendationsPressed value)?
        showRecommendationsPressed,
    required TResult orElse(),
  }) {
    if (showRecommendationsPressed != null) {
      return showRecommendationsPressed(this);
    }
    return orElse();
  }
}

abstract class _ShowRecommendationsPressed
    implements TopicRecommendationsDropdownEvent {
  const factory _ShowRecommendationsPressed(int index, String termId) =
      _$_ShowRecommendationsPressed;

  @override
  int get index;
  @override
  String get termId;
  @override
  @JsonKey(ignore: true)
  _$ShowRecommendationsPressedCopyWith<_ShowRecommendationsPressed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$TopicRecommendationsDropdownStateTearOff {
  const _$TopicRecommendationsDropdownStateTearOff();

  _TopicRecommendationsDropdownState call(
      {required bool isShowingRecommendations,
      required bool isLoadingRecommendations,
      required Option<ArticleFailure> articleFailureOption,
      required Option<ArticleTermCountFailure> articleTermCountFailureOption,
      KtList<Article>? currentRecommendations,
      int? currentPos}) {
    return _TopicRecommendationsDropdownState(
      isShowingRecommendations: isShowingRecommendations,
      isLoadingRecommendations: isLoadingRecommendations,
      articleFailureOption: articleFailureOption,
      articleTermCountFailureOption: articleTermCountFailureOption,
      currentRecommendations: currentRecommendations,
      currentPos: currentPos,
    );
  }
}

/// @nodoc
const $TopicRecommendationsDropdownState =
    _$TopicRecommendationsDropdownStateTearOff();

/// @nodoc
mixin _$TopicRecommendationsDropdownState {
  bool get isShowingRecommendations => throw _privateConstructorUsedError;
  bool get isLoadingRecommendations => throw _privateConstructorUsedError;
  Option<ArticleFailure> get articleFailureOption =>
      throw _privateConstructorUsedError;
  Option<ArticleTermCountFailure> get articleTermCountFailureOption =>
      throw _privateConstructorUsedError;
  KtList<Article>? get currentRecommendations =>
      throw _privateConstructorUsedError;
  int? get currentPos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TopicRecommendationsDropdownStateCopyWith<TopicRecommendationsDropdownState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicRecommendationsDropdownStateCopyWith<$Res> {
  factory $TopicRecommendationsDropdownStateCopyWith(
          TopicRecommendationsDropdownState value,
          $Res Function(TopicRecommendationsDropdownState) then) =
      _$TopicRecommendationsDropdownStateCopyWithImpl<$Res>;
  $Res call(
      {bool isShowingRecommendations,
      bool isLoadingRecommendations,
      Option<ArticleFailure> articleFailureOption,
      Option<ArticleTermCountFailure> articleTermCountFailureOption,
      KtList<Article>? currentRecommendations,
      int? currentPos});
}

/// @nodoc
class _$TopicRecommendationsDropdownStateCopyWithImpl<$Res>
    implements $TopicRecommendationsDropdownStateCopyWith<$Res> {
  _$TopicRecommendationsDropdownStateCopyWithImpl(this._value, this._then);

  final TopicRecommendationsDropdownState _value;
  // ignore: unused_field
  final $Res Function(TopicRecommendationsDropdownState) _then;

  @override
  $Res call({
    Object? isShowingRecommendations = freezed,
    Object? isLoadingRecommendations = freezed,
    Object? articleFailureOption = freezed,
    Object? articleTermCountFailureOption = freezed,
    Object? currentRecommendations = freezed,
    Object? currentPos = freezed,
  }) {
    return _then(_value.copyWith(
      isShowingRecommendations: isShowingRecommendations == freezed
          ? _value.isShowingRecommendations
          : isShowingRecommendations // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingRecommendations: isLoadingRecommendations == freezed
          ? _value.isLoadingRecommendations
          : isLoadingRecommendations // ignore: cast_nullable_to_non_nullable
              as bool,
      articleFailureOption: articleFailureOption == freezed
          ? _value.articleFailureOption
          : articleFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<ArticleFailure>,
      articleTermCountFailureOption: articleTermCountFailureOption == freezed
          ? _value.articleTermCountFailureOption
          : articleTermCountFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<ArticleTermCountFailure>,
      currentRecommendations: currentRecommendations == freezed
          ? _value.currentRecommendations
          : currentRecommendations // ignore: cast_nullable_to_non_nullable
              as KtList<Article>?,
      currentPos: currentPos == freezed
          ? _value.currentPos
          : currentPos // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$TopicRecommendationsDropdownStateCopyWith<$Res>
    implements $TopicRecommendationsDropdownStateCopyWith<$Res> {
  factory _$TopicRecommendationsDropdownStateCopyWith(
          _TopicRecommendationsDropdownState value,
          $Res Function(_TopicRecommendationsDropdownState) then) =
      __$TopicRecommendationsDropdownStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isShowingRecommendations,
      bool isLoadingRecommendations,
      Option<ArticleFailure> articleFailureOption,
      Option<ArticleTermCountFailure> articleTermCountFailureOption,
      KtList<Article>? currentRecommendations,
      int? currentPos});
}

/// @nodoc
class __$TopicRecommendationsDropdownStateCopyWithImpl<$Res>
    extends _$TopicRecommendationsDropdownStateCopyWithImpl<$Res>
    implements _$TopicRecommendationsDropdownStateCopyWith<$Res> {
  __$TopicRecommendationsDropdownStateCopyWithImpl(
      _TopicRecommendationsDropdownState _value,
      $Res Function(_TopicRecommendationsDropdownState) _then)
      : super(_value, (v) => _then(v as _TopicRecommendationsDropdownState));

  @override
  _TopicRecommendationsDropdownState get _value =>
      super._value as _TopicRecommendationsDropdownState;

  @override
  $Res call({
    Object? isShowingRecommendations = freezed,
    Object? isLoadingRecommendations = freezed,
    Object? articleFailureOption = freezed,
    Object? articleTermCountFailureOption = freezed,
    Object? currentRecommendations = freezed,
    Object? currentPos = freezed,
  }) {
    return _then(_TopicRecommendationsDropdownState(
      isShowingRecommendations: isShowingRecommendations == freezed
          ? _value.isShowingRecommendations
          : isShowingRecommendations // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingRecommendations: isLoadingRecommendations == freezed
          ? _value.isLoadingRecommendations
          : isLoadingRecommendations // ignore: cast_nullable_to_non_nullable
              as bool,
      articleFailureOption: articleFailureOption == freezed
          ? _value.articleFailureOption
          : articleFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<ArticleFailure>,
      articleTermCountFailureOption: articleTermCountFailureOption == freezed
          ? _value.articleTermCountFailureOption
          : articleTermCountFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<ArticleTermCountFailure>,
      currentRecommendations: currentRecommendations == freezed
          ? _value.currentRecommendations
          : currentRecommendations // ignore: cast_nullable_to_non_nullable
              as KtList<Article>?,
      currentPos: currentPos == freezed
          ? _value.currentPos
          : currentPos // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_TopicRecommendationsDropdownState
    implements _TopicRecommendationsDropdownState {
  const _$_TopicRecommendationsDropdownState(
      {required this.isShowingRecommendations,
      required this.isLoadingRecommendations,
      required this.articleFailureOption,
      required this.articleTermCountFailureOption,
      this.currentRecommendations,
      this.currentPos});

  @override
  final bool isShowingRecommendations;
  @override
  final bool isLoadingRecommendations;
  @override
  final Option<ArticleFailure> articleFailureOption;
  @override
  final Option<ArticleTermCountFailure> articleTermCountFailureOption;
  @override
  final KtList<Article>? currentRecommendations;
  @override
  final int? currentPos;

  @override
  String toString() {
    return 'TopicRecommendationsDropdownState(isShowingRecommendations: $isShowingRecommendations, isLoadingRecommendations: $isLoadingRecommendations, articleFailureOption: $articleFailureOption, articleTermCountFailureOption: $articleTermCountFailureOption, currentRecommendations: $currentRecommendations, currentPos: $currentPos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TopicRecommendationsDropdownState &&
            (identical(
                    other.isShowingRecommendations, isShowingRecommendations) ||
                other.isShowingRecommendations == isShowingRecommendations) &&
            (identical(
                    other.isLoadingRecommendations, isLoadingRecommendations) ||
                other.isLoadingRecommendations == isLoadingRecommendations) &&
            (identical(other.articleFailureOption, articleFailureOption) ||
                other.articleFailureOption == articleFailureOption) &&
            (identical(other.articleTermCountFailureOption,
                    articleTermCountFailureOption) ||
                other.articleTermCountFailureOption ==
                    articleTermCountFailureOption) &&
            (identical(other.currentRecommendations, currentRecommendations) ||
                other.currentRecommendations == currentRecommendations) &&
            (identical(other.currentPos, currentPos) ||
                other.currentPos == currentPos));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isShowingRecommendations,
      isLoadingRecommendations,
      articleFailureOption,
      articleTermCountFailureOption,
      currentRecommendations,
      currentPos);

  @JsonKey(ignore: true)
  @override
  _$TopicRecommendationsDropdownStateCopyWith<
          _TopicRecommendationsDropdownState>
      get copyWith => __$TopicRecommendationsDropdownStateCopyWithImpl<
          _TopicRecommendationsDropdownState>(this, _$identity);
}

abstract class _TopicRecommendationsDropdownState
    implements TopicRecommendationsDropdownState {
  const factory _TopicRecommendationsDropdownState(
      {required bool isShowingRecommendations,
      required bool isLoadingRecommendations,
      required Option<ArticleFailure> articleFailureOption,
      required Option<ArticleTermCountFailure> articleTermCountFailureOption,
      KtList<Article>? currentRecommendations,
      int? currentPos}) = _$_TopicRecommendationsDropdownState;

  @override
  bool get isShowingRecommendations;
  @override
  bool get isLoadingRecommendations;
  @override
  Option<ArticleFailure> get articleFailureOption;
  @override
  Option<ArticleTermCountFailure> get articleTermCountFailureOption;
  @override
  KtList<Article>? get currentRecommendations;
  @override
  int? get currentPos;
  @override
  @JsonKey(ignore: true)
  _$TopicRecommendationsDropdownStateCopyWith<
          _TopicRecommendationsDropdownState>
      get copyWith => throw _privateConstructorUsedError;
}
