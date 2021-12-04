// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'article_source_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ArticleSourceStatusTearOff {
  const _$ArticleSourceStatusTearOff();

  _ArticleSourceStatus call(
      {required UniqueId id,
      required UniqueId articleSourceId,
      required UniqueId userId,
      required bool isEnabled}) {
    return _ArticleSourceStatus(
      id: id,
      articleSourceId: articleSourceId,
      userId: userId,
      isEnabled: isEnabled,
    );
  }
}

/// @nodoc
const $ArticleSourceStatus = _$ArticleSourceStatusTearOff();

/// @nodoc
mixin _$ArticleSourceStatus {
  UniqueId get id => throw _privateConstructorUsedError;
  UniqueId get articleSourceId => throw _privateConstructorUsedError;
  UniqueId get userId => throw _privateConstructorUsedError;
  bool get isEnabled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticleSourceStatusCopyWith<ArticleSourceStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleSourceStatusCopyWith<$Res> {
  factory $ArticleSourceStatusCopyWith(
          ArticleSourceStatus value, $Res Function(ArticleSourceStatus) then) =
      _$ArticleSourceStatusCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id, UniqueId articleSourceId, UniqueId userId, bool isEnabled});
}

/// @nodoc
class _$ArticleSourceStatusCopyWithImpl<$Res>
    implements $ArticleSourceStatusCopyWith<$Res> {
  _$ArticleSourceStatusCopyWithImpl(this._value, this._then);

  final ArticleSourceStatus _value;
  // ignore: unused_field
  final $Res Function(ArticleSourceStatus) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? articleSourceId = freezed,
    Object? userId = freezed,
    Object? isEnabled = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      articleSourceId: articleSourceId == freezed
          ? _value.articleSourceId
          : articleSourceId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      isEnabled: isEnabled == freezed
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ArticleSourceStatusCopyWith<$Res>
    implements $ArticleSourceStatusCopyWith<$Res> {
  factory _$ArticleSourceStatusCopyWith(_ArticleSourceStatus value,
          $Res Function(_ArticleSourceStatus) then) =
      __$ArticleSourceStatusCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id, UniqueId articleSourceId, UniqueId userId, bool isEnabled});
}

/// @nodoc
class __$ArticleSourceStatusCopyWithImpl<$Res>
    extends _$ArticleSourceStatusCopyWithImpl<$Res>
    implements _$ArticleSourceStatusCopyWith<$Res> {
  __$ArticleSourceStatusCopyWithImpl(
      _ArticleSourceStatus _value, $Res Function(_ArticleSourceStatus) _then)
      : super(_value, (v) => _then(v as _ArticleSourceStatus));

  @override
  _ArticleSourceStatus get _value => super._value as _ArticleSourceStatus;

  @override
  $Res call({
    Object? id = freezed,
    Object? articleSourceId = freezed,
    Object? userId = freezed,
    Object? isEnabled = freezed,
  }) {
    return _then(_ArticleSourceStatus(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      articleSourceId: articleSourceId == freezed
          ? _value.articleSourceId
          : articleSourceId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      isEnabled: isEnabled == freezed
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ArticleSourceStatus implements _ArticleSourceStatus {
  const _$_ArticleSourceStatus(
      {required this.id,
      required this.articleSourceId,
      required this.userId,
      required this.isEnabled});

  @override
  final UniqueId id;
  @override
  final UniqueId articleSourceId;
  @override
  final UniqueId userId;
  @override
  final bool isEnabled;

  @override
  String toString() {
    return 'ArticleSourceStatus(id: $id, articleSourceId: $articleSourceId, userId: $userId, isEnabled: $isEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArticleSourceStatus &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.articleSourceId, articleSourceId) ||
                other.articleSourceId == articleSourceId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, articleSourceId, userId, isEnabled);

  @JsonKey(ignore: true)
  @override
  _$ArticleSourceStatusCopyWith<_ArticleSourceStatus> get copyWith =>
      __$ArticleSourceStatusCopyWithImpl<_ArticleSourceStatus>(
          this, _$identity);
}

abstract class _ArticleSourceStatus implements ArticleSourceStatus {
  const factory _ArticleSourceStatus(
      {required UniqueId id,
      required UniqueId articleSourceId,
      required UniqueId userId,
      required bool isEnabled}) = _$_ArticleSourceStatus;

  @override
  UniqueId get id;
  @override
  UniqueId get articleSourceId;
  @override
  UniqueId get userId;
  @override
  bool get isEnabled;
  @override
  @JsonKey(ignore: true)
  _$ArticleSourceStatusCopyWith<_ArticleSourceStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
