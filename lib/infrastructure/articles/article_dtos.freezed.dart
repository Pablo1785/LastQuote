// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'article_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticleSourceDto _$ArticleSourceDtoFromJson(Map<String, dynamic> json) {
  return _ArticleSourceDto.fromJson(json);
}

/// @nodoc
class _$ArticleSourceDtoTearOff {
  const _$ArticleSourceDtoTearOff();

  _ArticleSourceDto call(
      {required String id,
      required String articleSourceName,
      required String url,
      required List<ArticleDto> articles}) {
    return _ArticleSourceDto(
      id: id,
      articleSourceName: articleSourceName,
      url: url,
      articles: articles,
    );
  }

  ArticleSourceDto fromJson(Map<String, Object?> json) {
    return ArticleSourceDto.fromJson(json);
  }
}

/// @nodoc
const $ArticleSourceDto = _$ArticleSourceDtoTearOff();

/// @nodoc
mixin _$ArticleSourceDto {
  String get id => throw _privateConstructorUsedError;
  String get articleSourceName => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  List<ArticleDto> get articles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleSourceDtoCopyWith<ArticleSourceDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleSourceDtoCopyWith<$Res> {
  factory $ArticleSourceDtoCopyWith(
          ArticleSourceDto value, $Res Function(ArticleSourceDto) then) =
      _$ArticleSourceDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String articleSourceName,
      String url,
      List<ArticleDto> articles});
}

/// @nodoc
class _$ArticleSourceDtoCopyWithImpl<$Res>
    implements $ArticleSourceDtoCopyWith<$Res> {
  _$ArticleSourceDtoCopyWithImpl(this._value, this._then);

  final ArticleSourceDto _value;
  // ignore: unused_field
  final $Res Function(ArticleSourceDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? articleSourceName = freezed,
    Object? url = freezed,
    Object? articles = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      articleSourceName: articleSourceName == freezed
          ? _value.articleSourceName
          : articleSourceName // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      articles: articles == freezed
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<ArticleDto>,
    ));
  }
}

/// @nodoc
abstract class _$ArticleSourceDtoCopyWith<$Res>
    implements $ArticleSourceDtoCopyWith<$Res> {
  factory _$ArticleSourceDtoCopyWith(
          _ArticleSourceDto value, $Res Function(_ArticleSourceDto) then) =
      __$ArticleSourceDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String articleSourceName,
      String url,
      List<ArticleDto> articles});
}

/// @nodoc
class __$ArticleSourceDtoCopyWithImpl<$Res>
    extends _$ArticleSourceDtoCopyWithImpl<$Res>
    implements _$ArticleSourceDtoCopyWith<$Res> {
  __$ArticleSourceDtoCopyWithImpl(
      _ArticleSourceDto _value, $Res Function(_ArticleSourceDto) _then)
      : super(_value, (v) => _then(v as _ArticleSourceDto));

  @override
  _ArticleSourceDto get _value => super._value as _ArticleSourceDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? articleSourceName = freezed,
    Object? url = freezed,
    Object? articles = freezed,
  }) {
    return _then(_ArticleSourceDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      articleSourceName: articleSourceName == freezed
          ? _value.articleSourceName
          : articleSourceName // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      articles: articles == freezed
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<ArticleDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArticleSourceDto extends _ArticleSourceDto {
  const _$_ArticleSourceDto(
      {required this.id,
      required this.articleSourceName,
      required this.url,
      required this.articles})
      : super._();

  factory _$_ArticleSourceDto.fromJson(Map<String, dynamic> json) =>
      _$$_ArticleSourceDtoFromJson(json);

  @override
  final String id;
  @override
  final String articleSourceName;
  @override
  final String url;
  @override
  final List<ArticleDto> articles;

  @override
  String toString() {
    return 'ArticleSourceDto(id: $id, articleSourceName: $articleSourceName, url: $url, articles: $articles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArticleSourceDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.articleSourceName, articleSourceName) ||
                other.articleSourceName == articleSourceName) &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality().equals(other.articles, articles));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, articleSourceName, url,
      const DeepCollectionEquality().hash(articles));

  @JsonKey(ignore: true)
  @override
  _$ArticleSourceDtoCopyWith<_ArticleSourceDto> get copyWith =>
      __$ArticleSourceDtoCopyWithImpl<_ArticleSourceDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticleSourceDtoToJson(this);
  }
}

abstract class _ArticleSourceDto extends ArticleSourceDto {
  const factory _ArticleSourceDto(
      {required String id,
      required String articleSourceName,
      required String url,
      required List<ArticleDto> articles}) = _$_ArticleSourceDto;
  const _ArticleSourceDto._() : super._();

  factory _ArticleSourceDto.fromJson(Map<String, dynamic> json) =
      _$_ArticleSourceDto.fromJson;

  @override
  String get id;
  @override
  String get articleSourceName;
  @override
  String get url;
  @override
  List<ArticleDto> get articles;
  @override
  @JsonKey(ignore: true)
  _$ArticleSourceDtoCopyWith<_ArticleSourceDto> get copyWith =>
      throw _privateConstructorUsedError;
}

ArticleDto _$ArticleDtoFromJson(Map<String, dynamic> json) {
  return _ArticleDto.fromJson(json);
}

/// @nodoc
class _$ArticleDtoTearOff {
  const _$ArticleDtoTearOff();

  _ArticleDto call(
      {required String id,
      required String sourceId,
      required String title,
      required String url,
      required String mediaType}) {
    return _ArticleDto(
      id: id,
      sourceId: sourceId,
      title: title,
      url: url,
      mediaType: mediaType,
    );
  }

  ArticleDto fromJson(Map<String, Object?> json) {
    return ArticleDto.fromJson(json);
  }
}

/// @nodoc
const $ArticleDto = _$ArticleDtoTearOff();

/// @nodoc
mixin _$ArticleDto {
  String get id => throw _privateConstructorUsedError;
  String get sourceId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get mediaType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleDtoCopyWith<ArticleDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleDtoCopyWith<$Res> {
  factory $ArticleDtoCopyWith(
          ArticleDto value, $Res Function(ArticleDto) then) =
      _$ArticleDtoCopyWithImpl<$Res>;
  $Res call(
      {String id, String sourceId, String title, String url, String mediaType});
}

/// @nodoc
class _$ArticleDtoCopyWithImpl<$Res> implements $ArticleDtoCopyWith<$Res> {
  _$ArticleDtoCopyWithImpl(this._value, this._then);

  final ArticleDto _value;
  // ignore: unused_field
  final $Res Function(ArticleDto) _then;

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
              as String,
      sourceId: sourceId == freezed
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      mediaType: mediaType == freezed
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ArticleDtoCopyWith<$Res> implements $ArticleDtoCopyWith<$Res> {
  factory _$ArticleDtoCopyWith(
          _ArticleDto value, $Res Function(_ArticleDto) then) =
      __$ArticleDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id, String sourceId, String title, String url, String mediaType});
}

/// @nodoc
class __$ArticleDtoCopyWithImpl<$Res> extends _$ArticleDtoCopyWithImpl<$Res>
    implements _$ArticleDtoCopyWith<$Res> {
  __$ArticleDtoCopyWithImpl(
      _ArticleDto _value, $Res Function(_ArticleDto) _then)
      : super(_value, (v) => _then(v as _ArticleDto));

  @override
  _ArticleDto get _value => super._value as _ArticleDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? sourceId = freezed,
    Object? title = freezed,
    Object? url = freezed,
    Object? mediaType = freezed,
  }) {
    return _then(_ArticleDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sourceId: sourceId == freezed
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      mediaType: mediaType == freezed
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArticleDto extends _ArticleDto {
  const _$_ArticleDto(
      {required this.id,
      required this.sourceId,
      required this.title,
      required this.url,
      required this.mediaType})
      : super._();

  factory _$_ArticleDto.fromJson(Map<String, dynamic> json) =>
      _$$_ArticleDtoFromJson(json);

  @override
  final String id;
  @override
  final String sourceId;
  @override
  final String title;
  @override
  final String url;
  @override
  final String mediaType;

  @override
  String toString() {
    return 'ArticleDto(id: $id, sourceId: $sourceId, title: $title, url: $url, mediaType: $mediaType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArticleDto &&
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
  _$ArticleDtoCopyWith<_ArticleDto> get copyWith =>
      __$ArticleDtoCopyWithImpl<_ArticleDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticleDtoToJson(this);
  }
}

abstract class _ArticleDto extends ArticleDto {
  const factory _ArticleDto(
      {required String id,
      required String sourceId,
      required String title,
      required String url,
      required String mediaType}) = _$_ArticleDto;
  const _ArticleDto._() : super._();

  factory _ArticleDto.fromJson(Map<String, dynamic> json) =
      _$_ArticleDto.fromJson;

  @override
  String get id;
  @override
  String get sourceId;
  @override
  String get title;
  @override
  String get url;
  @override
  String get mediaType;
  @override
  @JsonKey(ignore: true)
  _$ArticleDtoCopyWith<_ArticleDto> get copyWith =>
      throw _privateConstructorUsedError;
}
