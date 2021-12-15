// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'article_term_count.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ArticleTermCountTearOff {
  const _$ArticleTermCountTearOff();

  _ArticleTermCount call(
      {required JunctionUniqueId id,
      required UniqueId articleId,
      required String termId,
      required int count}) {
    return _ArticleTermCount(
      id: id,
      articleId: articleId,
      termId: termId,
      count: count,
    );
  }
}

/// @nodoc
const $ArticleTermCount = _$ArticleTermCountTearOff();

/// @nodoc
mixin _$ArticleTermCount {
  JunctionUniqueId get id => throw _privateConstructorUsedError;
  UniqueId get articleId => throw _privateConstructorUsedError;
  String get termId => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticleTermCountCopyWith<ArticleTermCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleTermCountCopyWith<$Res> {
  factory $ArticleTermCountCopyWith(
          ArticleTermCount value, $Res Function(ArticleTermCount) then) =
      _$ArticleTermCountCopyWithImpl<$Res>;
  $Res call(
      {JunctionUniqueId id, UniqueId articleId, String termId, int count});
}

/// @nodoc
class _$ArticleTermCountCopyWithImpl<$Res>
    implements $ArticleTermCountCopyWith<$Res> {
  _$ArticleTermCountCopyWithImpl(this._value, this._then);

  final ArticleTermCount _value;
  // ignore: unused_field
  final $Res Function(ArticleTermCount) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? articleId = freezed,
    Object? termId = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as JunctionUniqueId,
      articleId: articleId == freezed
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      termId: termId == freezed
          ? _value.termId
          : termId // ignore: cast_nullable_to_non_nullable
              as String,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ArticleTermCountCopyWith<$Res>
    implements $ArticleTermCountCopyWith<$Res> {
  factory _$ArticleTermCountCopyWith(
          _ArticleTermCount value, $Res Function(_ArticleTermCount) then) =
      __$ArticleTermCountCopyWithImpl<$Res>;
  @override
  $Res call(
      {JunctionUniqueId id, UniqueId articleId, String termId, int count});
}

/// @nodoc
class __$ArticleTermCountCopyWithImpl<$Res>
    extends _$ArticleTermCountCopyWithImpl<$Res>
    implements _$ArticleTermCountCopyWith<$Res> {
  __$ArticleTermCountCopyWithImpl(
      _ArticleTermCount _value, $Res Function(_ArticleTermCount) _then)
      : super(_value, (v) => _then(v as _ArticleTermCount));

  @override
  _ArticleTermCount get _value => super._value as _ArticleTermCount;

  @override
  $Res call({
    Object? id = freezed,
    Object? articleId = freezed,
    Object? termId = freezed,
    Object? count = freezed,
  }) {
    return _then(_ArticleTermCount(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as JunctionUniqueId,
      articleId: articleId == freezed
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      termId: termId == freezed
          ? _value.termId
          : termId // ignore: cast_nullable_to_non_nullable
              as String,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ArticleTermCount extends _ArticleTermCount {
  const _$_ArticleTermCount(
      {required this.id,
      required this.articleId,
      required this.termId,
      required this.count})
      : super._();

  @override
  final JunctionUniqueId id;
  @override
  final UniqueId articleId;
  @override
  final String termId;
  @override
  final int count;

  @override
  String toString() {
    return 'ArticleTermCount(id: $id, articleId: $articleId, termId: $termId, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArticleTermCount &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.articleId, articleId) ||
                other.articleId == articleId) &&
            (identical(other.termId, termId) || other.termId == termId) &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, articleId, termId, count);

  @JsonKey(ignore: true)
  @override
  _$ArticleTermCountCopyWith<_ArticleTermCount> get copyWith =>
      __$ArticleTermCountCopyWithImpl<_ArticleTermCount>(this, _$identity);
}

abstract class _ArticleTermCount extends ArticleTermCount {
  const factory _ArticleTermCount(
      {required JunctionUniqueId id,
      required UniqueId articleId,
      required String termId,
      required int count}) = _$_ArticleTermCount;
  const _ArticleTermCount._() : super._();

  @override
  JunctionUniqueId get id;
  @override
  UniqueId get articleId;
  @override
  String get termId;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$ArticleTermCountCopyWith<_ArticleTermCount> get copyWith =>
      throw _privateConstructorUsedError;
}
