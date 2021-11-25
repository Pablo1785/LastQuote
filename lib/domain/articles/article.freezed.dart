// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'article.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ArticleTearOff {
  const _$ArticleTearOff();

  _Article call(
      {required UniqueId id,
      required UniqueId sourceId,
      required ArticleTitle title,
      required ArticleUrl url,
      required ArticleMediaType mediaType}) {
    return _Article(
      id: id,
      sourceId: sourceId,
      title: title,
      url: url,
      mediaType: mediaType,
    );
  }
}

/// @nodoc
const $Article = _$ArticleTearOff();

/// @nodoc
mixin _$Article {
  UniqueId get id => throw _privateConstructorUsedError;
  UniqueId get sourceId => throw _privateConstructorUsedError;
  ArticleTitle get title => throw _privateConstructorUsedError;
  ArticleUrl get url => throw _privateConstructorUsedError;
  ArticleMediaType get mediaType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticleCopyWith<Article> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleCopyWith<$Res> {
  factory $ArticleCopyWith(Article value, $Res Function(Article) then) =
      _$ArticleCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      UniqueId sourceId,
      ArticleTitle title,
      ArticleUrl url,
      ArticleMediaType mediaType});
}

/// @nodoc
class _$ArticleCopyWithImpl<$Res> implements $ArticleCopyWith<$Res> {
  _$ArticleCopyWithImpl(this._value, this._then);

  final Article _value;
  // ignore: unused_field
  final $Res Function(Article) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? sourceId = freezed,
    Object? title = freezed,
    Object? url = freezed,
    Object? mediaType = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      sourceId: sourceId == freezed
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as ArticleTitle,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as ArticleUrl,
      mediaType: mediaType == freezed
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as ArticleMediaType,
    ));
  }
}

/// @nodoc
abstract class _$ArticleCopyWith<$Res> implements $ArticleCopyWith<$Res> {
  factory _$ArticleCopyWith(_Article value, $Res Function(_Article) then) =
      __$ArticleCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      UniqueId sourceId,
      ArticleTitle title,
      ArticleUrl url,
      ArticleMediaType mediaType});
}

/// @nodoc
class __$ArticleCopyWithImpl<$Res> extends _$ArticleCopyWithImpl<$Res>
    implements _$ArticleCopyWith<$Res> {
  __$ArticleCopyWithImpl(_Article _value, $Res Function(_Article) _then)
      : super(_value, (v) => _then(v as _Article));

  @override
  _Article get _value => super._value as _Article;

  @override
  $Res call({
    Object? id = freezed,
    Object? sourceId = freezed,
    Object? title = freezed,
    Object? url = freezed,
    Object? mediaType = freezed,
  }) {
    return _then(_Article(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      sourceId: sourceId == freezed
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as ArticleTitle,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as ArticleUrl,
      mediaType: mediaType == freezed
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as ArticleMediaType,
    ));
  }
}

/// @nodoc

class _$_Article extends _Article {
  const _$_Article(
      {required this.id,
      required this.sourceId,
      required this.title,
      required this.url,
      required this.mediaType})
      : super._();

  @override
  final UniqueId id;
  @override
  final UniqueId sourceId;
  @override
  final ArticleTitle title;
  @override
  final ArticleUrl url;
  @override
  final ArticleMediaType mediaType;

  @override
  String toString() {
    return 'Article(id: $id, sourceId: $sourceId, title: $title, url: $url, mediaType: $mediaType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Article &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sourceId, sourceId) ||
                other.sourceId == sourceId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, sourceId, title, url, mediaType);

  @JsonKey(ignore: true)
  @override
  _$ArticleCopyWith<_Article> get copyWith =>
      __$ArticleCopyWithImpl<_Article>(this, _$identity);
}

abstract class _Article extends Article {
  const factory _Article(
      {required UniqueId id,
      required UniqueId sourceId,
      required ArticleTitle title,
      required ArticleUrl url,
      required ArticleMediaType mediaType}) = _$_Article;
  const _Article._() : super._();

  @override
  UniqueId get id;
  @override
  UniqueId get sourceId;
  @override
  ArticleTitle get title;
  @override
  ArticleUrl get url;
  @override
  ArticleMediaType get mediaType;
  @override
  @JsonKey(ignore: true)
  _$ArticleCopyWith<_Article> get copyWith =>
      throw _privateConstructorUsedError;
}
