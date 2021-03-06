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

ArticleDto _$ArticleDtoFromJson(Map<String, dynamic> json) {
  return _ArticleDto.fromJson(json);
}

/// @nodoc
class _$ArticleDtoTearOff {
  const _$ArticleDtoTearOff();

  _ArticleDto call(
      {required String? id,
      @JsonKey(name: 'source_id') required String sourceId,
      required String title,
      required String url,
      @JsonKey(name: 'media_type') required String mediaType,
      @ServerTimestampConverter() required FieldValue? serverTimestamp}) {
    return _ArticleDto(
      id: id,
      sourceId: sourceId,
      title: title,
      url: url,
      mediaType: mediaType,
      serverTimestamp: serverTimestamp,
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
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'source_id')
  String get sourceId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'media_type')
  String get mediaType => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  FieldValue? get serverTimestamp => throw _privateConstructorUsedError;

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
      {String? id,
      @JsonKey(name: 'source_id') String sourceId,
      String title,
      String url,
      @JsonKey(name: 'media_type') String mediaType,
      @ServerTimestampConverter() FieldValue? serverTimestamp});
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
    Object? serverTimestamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
      serverTimestamp: serverTimestamp == freezed
          ? _value.serverTimestamp
          : serverTimestamp // ignore: cast_nullable_to_non_nullable
              as FieldValue?,
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
      {String? id,
      @JsonKey(name: 'source_id') String sourceId,
      String title,
      String url,
      @JsonKey(name: 'media_type') String mediaType,
      @ServerTimestampConverter() FieldValue? serverTimestamp});
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
    Object? serverTimestamp = freezed,
  }) {
    return _then(_ArticleDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
      serverTimestamp: serverTimestamp == freezed
          ? _value.serverTimestamp
          : serverTimestamp // ignore: cast_nullable_to_non_nullable
              as FieldValue?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArticleDto extends _ArticleDto {
  const _$_ArticleDto(
      {required this.id,
      @JsonKey(name: 'source_id') required this.sourceId,
      required this.title,
      required this.url,
      @JsonKey(name: 'media_type') required this.mediaType,
      @ServerTimestampConverter() required this.serverTimestamp})
      : super._();

  factory _$_ArticleDto.fromJson(Map<String, dynamic> json) =>
      _$$_ArticleDtoFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'source_id')
  final String sourceId;
  @override
  final String title;
  @override
  final String url;
  @override
  @JsonKey(name: 'media_type')
  final String mediaType;
  @override
  @ServerTimestampConverter()
  final FieldValue? serverTimestamp;

  @override
  String toString() {
    return 'ArticleDto(id: $id, sourceId: $sourceId, title: $title, url: $url, mediaType: $mediaType, serverTimestamp: $serverTimestamp)';
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
                other.mediaType == mediaType) &&
            (identical(other.serverTimestamp, serverTimestamp) ||
                other.serverTimestamp == serverTimestamp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, sourceId, title, url, mediaType, serverTimestamp);

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
          {required String? id,
          @JsonKey(name: 'source_id') required String sourceId,
          required String title,
          required String url,
          @JsonKey(name: 'media_type') required String mediaType,
          @ServerTimestampConverter() required FieldValue? serverTimestamp}) =
      _$_ArticleDto;
  const _ArticleDto._() : super._();

  factory _ArticleDto.fromJson(Map<String, dynamic> json) =
      _$_ArticleDto.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'source_id')
  String get sourceId;
  @override
  String get title;
  @override
  String get url;
  @override
  @JsonKey(name: 'media_type')
  String get mediaType;
  @override
  @ServerTimestampConverter()
  FieldValue? get serverTimestamp;
  @override
  @JsonKey(ignore: true)
  _$ArticleDtoCopyWith<_ArticleDto> get copyWith =>
      throw _privateConstructorUsedError;
}
