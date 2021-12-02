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

ArticleSourceStatusDto _$ArticleSourceStatusDtoFromJson(
    Map<String, dynamic> json) {
  return _ArticleSourceStatusDto.fromJson(json);
}

/// @nodoc
class _$ArticleSourceStatusDtoTearOff {
  const _$ArticleSourceStatusDtoTearOff();

  _ArticleSourceStatusDto call(
      {required String? id,
      @JsonKey(name: 'article_source_id')
      @ReferenceConverter()
          required String articleSourceId,
      @JsonKey(name: 'user_id')
      @ReferenceConverter()
          required String userId,
      @JsonKey(name: 'is_enabled')
          required bool isEnabled}) {
    return _ArticleSourceStatusDto(
      id: id,
      articleSourceId: articleSourceId,
      userId: userId,
      isEnabled: isEnabled,
    );
  }

  ArticleSourceStatusDto fromJson(Map<String, Object?> json) {
    return ArticleSourceStatusDto.fromJson(json);
  }
}

/// @nodoc
const $ArticleSourceStatusDto = _$ArticleSourceStatusDtoTearOff();

/// @nodoc
mixin _$ArticleSourceStatusDto {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'article_source_id')
  @ReferenceConverter()
  String get articleSourceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  @ReferenceConverter()
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_enabled')
  bool get isEnabled => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleSourceStatusDtoCopyWith<ArticleSourceStatusDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleSourceStatusDtoCopyWith<$Res> {
  factory $ArticleSourceStatusDtoCopyWith(ArticleSourceStatusDto value,
          $Res Function(ArticleSourceStatusDto) then) =
      _$ArticleSourceStatusDtoCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      @JsonKey(name: 'article_source_id')
      @ReferenceConverter()
          String articleSourceId,
      @JsonKey(name: 'user_id')
      @ReferenceConverter()
          String userId,
      @JsonKey(name: 'is_enabled')
          bool isEnabled});
}

/// @nodoc
class _$ArticleSourceStatusDtoCopyWithImpl<$Res>
    implements $ArticleSourceStatusDtoCopyWith<$Res> {
  _$ArticleSourceStatusDtoCopyWithImpl(this._value, this._then);

  final ArticleSourceStatusDto _value;
  // ignore: unused_field
  final $Res Function(ArticleSourceStatusDto) _then;

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
              as String?,
      articleSourceId: articleSourceId == freezed
          ? _value.articleSourceId
          : articleSourceId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      isEnabled: isEnabled == freezed
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ArticleSourceStatusDtoCopyWith<$Res>
    implements $ArticleSourceStatusDtoCopyWith<$Res> {
  factory _$ArticleSourceStatusDtoCopyWith(_ArticleSourceStatusDto value,
          $Res Function(_ArticleSourceStatusDto) then) =
      __$ArticleSourceStatusDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      @JsonKey(name: 'article_source_id')
      @ReferenceConverter()
          String articleSourceId,
      @JsonKey(name: 'user_id')
      @ReferenceConverter()
          String userId,
      @JsonKey(name: 'is_enabled')
          bool isEnabled});
}

/// @nodoc
class __$ArticleSourceStatusDtoCopyWithImpl<$Res>
    extends _$ArticleSourceStatusDtoCopyWithImpl<$Res>
    implements _$ArticleSourceStatusDtoCopyWith<$Res> {
  __$ArticleSourceStatusDtoCopyWithImpl(_ArticleSourceStatusDto _value,
      $Res Function(_ArticleSourceStatusDto) _then)
      : super(_value, (v) => _then(v as _ArticleSourceStatusDto));

  @override
  _ArticleSourceStatusDto get _value => super._value as _ArticleSourceStatusDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? articleSourceId = freezed,
    Object? userId = freezed,
    Object? isEnabled = freezed,
  }) {
    return _then(_ArticleSourceStatusDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      articleSourceId: articleSourceId == freezed
          ? _value.articleSourceId
          : articleSourceId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      isEnabled: isEnabled == freezed
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArticleSourceStatusDto extends _ArticleSourceStatusDto {
  const _$_ArticleSourceStatusDto(
      {required this.id,
      @JsonKey(name: 'article_source_id')
      @ReferenceConverter()
          required this.articleSourceId,
      @JsonKey(name: 'user_id')
      @ReferenceConverter()
          required this.userId,
      @JsonKey(name: 'is_enabled')
          required this.isEnabled})
      : super._();

  factory _$_ArticleSourceStatusDto.fromJson(Map<String, dynamic> json) =>
      _$$_ArticleSourceStatusDtoFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'article_source_id')
  @ReferenceConverter()
  final String articleSourceId;
  @override
  @JsonKey(name: 'user_id')
  @ReferenceConverter()
  final String userId;
  @override
  @JsonKey(name: 'is_enabled')
  final bool isEnabled;

  @override
  String toString() {
    return 'ArticleSourceStatusDto(id: $id, articleSourceId: $articleSourceId, userId: $userId, isEnabled: $isEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArticleSourceStatusDto &&
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
  _$ArticleSourceStatusDtoCopyWith<_ArticleSourceStatusDto> get copyWith =>
      __$ArticleSourceStatusDtoCopyWithImpl<_ArticleSourceStatusDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticleSourceStatusDtoToJson(this);
  }
}

abstract class _ArticleSourceStatusDto extends ArticleSourceStatusDto {
  const factory _ArticleSourceStatusDto(
      {required String? id,
      @JsonKey(name: 'article_source_id')
      @ReferenceConverter()
          required String articleSourceId,
      @JsonKey(name: 'user_id')
      @ReferenceConverter()
          required String userId,
      @JsonKey(name: 'is_enabled')
          required bool isEnabled}) = _$_ArticleSourceStatusDto;
  const _ArticleSourceStatusDto._() : super._();

  factory _ArticleSourceStatusDto.fromJson(Map<String, dynamic> json) =
      _$_ArticleSourceStatusDto.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'article_source_id')
  @ReferenceConverter()
  String get articleSourceId;
  @override
  @JsonKey(name: 'user_id')
  @ReferenceConverter()
  String get userId;
  @override
  @JsonKey(name: 'is_enabled')
  bool get isEnabled;
  @override
  @JsonKey(ignore: true)
  _$ArticleSourceStatusDtoCopyWith<_ArticleSourceStatusDto> get copyWith =>
      throw _privateConstructorUsedError;
}

ArticleSourceDto _$ArticleSourceDtoFromJson(Map<String, dynamic> json) {
  return _ArticleSourceDto.fromJson(json);
}

/// @nodoc
class _$ArticleSourceDtoTearOff {
  const _$ArticleSourceDtoTearOff();

  _ArticleSourceDto call(
      {required String? id,
      @JsonKey(name: 'name') required String articleSourceName,
      required String url,
      @ServerTimestampConverter() required FieldValue? serverTimestamp}) {
    return _ArticleSourceDto(
      id: id,
      articleSourceName: articleSourceName,
      url: url,
      serverTimestamp: serverTimestamp,
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
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get articleSourceName => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  FieldValue? get serverTimestamp => throw _privateConstructorUsedError;

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
      {String? id,
      @JsonKey(name: 'name') String articleSourceName,
      String url,
      @ServerTimestampConverter() FieldValue? serverTimestamp});
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
    Object? serverTimestamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      articleSourceName: articleSourceName == freezed
          ? _value.articleSourceName
          : articleSourceName // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      serverTimestamp: serverTimestamp == freezed
          ? _value.serverTimestamp
          : serverTimestamp // ignore: cast_nullable_to_non_nullable
              as FieldValue?,
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
      {String? id,
      @JsonKey(name: 'name') String articleSourceName,
      String url,
      @ServerTimestampConverter() FieldValue? serverTimestamp});
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
    Object? serverTimestamp = freezed,
  }) {
    return _then(_ArticleSourceDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      articleSourceName: articleSourceName == freezed
          ? _value.articleSourceName
          : articleSourceName // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
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
class _$_ArticleSourceDto extends _ArticleSourceDto {
  const _$_ArticleSourceDto(
      {required this.id,
      @JsonKey(name: 'name') required this.articleSourceName,
      required this.url,
      @ServerTimestampConverter() required this.serverTimestamp})
      : super._();

  factory _$_ArticleSourceDto.fromJson(Map<String, dynamic> json) =>
      _$$_ArticleSourceDtoFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'name')
  final String articleSourceName;
  @override
  final String url;
  @override
  @ServerTimestampConverter()
  final FieldValue? serverTimestamp;

  @override
  String toString() {
    return 'ArticleSourceDto(id: $id, articleSourceName: $articleSourceName, url: $url, serverTimestamp: $serverTimestamp)';
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
            (identical(other.serverTimestamp, serverTimestamp) ||
                other.serverTimestamp == serverTimestamp));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, articleSourceName, url, serverTimestamp);

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
          {required String? id,
          @JsonKey(name: 'name') required String articleSourceName,
          required String url,
          @ServerTimestampConverter() required FieldValue? serverTimestamp}) =
      _$_ArticleSourceDto;
  const _ArticleSourceDto._() : super._();

  factory _ArticleSourceDto.fromJson(Map<String, dynamic> json) =
      _$_ArticleSourceDto.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'name')
  String get articleSourceName;
  @override
  String get url;
  @override
  @ServerTimestampConverter()
  FieldValue? get serverTimestamp;
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
      {required String? id,
      @JsonKey(name: 'source_id')
      @ReferenceConverter()
          required String sourceId,
      required String title,
      required String url,
      @JsonKey(name: 'media_type')
          required String mediaType,
      @ServerTimestampConverter()
          required FieldValue? serverTimestamp}) {
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
  @ReferenceConverter()
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
      @JsonKey(name: 'source_id') @ReferenceConverter() String sourceId,
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
      @JsonKey(name: 'source_id') @ReferenceConverter() String sourceId,
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
      @JsonKey(name: 'source_id') @ReferenceConverter() required this.sourceId,
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
  @ReferenceConverter()
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
      @JsonKey(name: 'source_id')
      @ReferenceConverter()
          required String sourceId,
      required String title,
      required String url,
      @JsonKey(name: 'media_type')
          required String mediaType,
      @ServerTimestampConverter()
          required FieldValue? serverTimestamp}) = _$_ArticleDto;
  const _ArticleDto._() : super._();

  factory _ArticleDto.fromJson(Map<String, dynamic> json) =
      _$_ArticleDto.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'source_id')
  @ReferenceConverter()
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
