// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data_source_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataSourceStatusDto _$DataSourceStatusDtoFromJson(Map<String, dynamic> json) {
  return _DataSourceStatusDto.fromJson(json);
}

/// @nodoc
class _$DataSourceStatusDtoTearOff {
  const _$DataSourceStatusDtoTearOff();

  _DataSourceStatusDto call(
      {required String? id,
      @JsonKey(name: 'data_source_id') required String dataSourceId,
      @JsonKey(name: 'user_id') required String userId,
      @JsonKey(name: 'is_enabled') required bool isEnabled}) {
    return _DataSourceStatusDto(
      id: id,
      dataSourceId: dataSourceId,
      userId: userId,
      isEnabled: isEnabled,
    );
  }

  DataSourceStatusDto fromJson(Map<String, Object?> json) {
    return DataSourceStatusDto.fromJson(json);
  }
}

/// @nodoc
const $DataSourceStatusDto = _$DataSourceStatusDtoTearOff();

/// @nodoc
mixin _$DataSourceStatusDto {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'data_source_id')
  String get dataSourceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_enabled')
  bool get isEnabled => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataSourceStatusDtoCopyWith<DataSourceStatusDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataSourceStatusDtoCopyWith<$Res> {
  factory $DataSourceStatusDtoCopyWith(
          DataSourceStatusDto value, $Res Function(DataSourceStatusDto) then) =
      _$DataSourceStatusDtoCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      @JsonKey(name: 'data_source_id') String dataSourceId,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'is_enabled') bool isEnabled});
}

/// @nodoc
class _$DataSourceStatusDtoCopyWithImpl<$Res>
    implements $DataSourceStatusDtoCopyWith<$Res> {
  _$DataSourceStatusDtoCopyWithImpl(this._value, this._then);

  final DataSourceStatusDto _value;
  // ignore: unused_field
  final $Res Function(DataSourceStatusDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? dataSourceId = freezed,
    Object? userId = freezed,
    Object? isEnabled = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      dataSourceId: dataSourceId == freezed
          ? _value.dataSourceId
          : dataSourceId // ignore: cast_nullable_to_non_nullable
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
abstract class _$DataSourceStatusDtoCopyWith<$Res>
    implements $DataSourceStatusDtoCopyWith<$Res> {
  factory _$DataSourceStatusDtoCopyWith(_DataSourceStatusDto value,
          $Res Function(_DataSourceStatusDto) then) =
      __$DataSourceStatusDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      @JsonKey(name: 'data_source_id') String dataSourceId,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'is_enabled') bool isEnabled});
}

/// @nodoc
class __$DataSourceStatusDtoCopyWithImpl<$Res>
    extends _$DataSourceStatusDtoCopyWithImpl<$Res>
    implements _$DataSourceStatusDtoCopyWith<$Res> {
  __$DataSourceStatusDtoCopyWithImpl(
      _DataSourceStatusDto _value, $Res Function(_DataSourceStatusDto) _then)
      : super(_value, (v) => _then(v as _DataSourceStatusDto));

  @override
  _DataSourceStatusDto get _value => super._value as _DataSourceStatusDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? dataSourceId = freezed,
    Object? userId = freezed,
    Object? isEnabled = freezed,
  }) {
    return _then(_DataSourceStatusDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      dataSourceId: dataSourceId == freezed
          ? _value.dataSourceId
          : dataSourceId // ignore: cast_nullable_to_non_nullable
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
class _$_DataSourceStatusDto extends _DataSourceStatusDto {
  const _$_DataSourceStatusDto(
      {required this.id,
      @JsonKey(name: 'data_source_id') required this.dataSourceId,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'is_enabled') required this.isEnabled})
      : super._();

  factory _$_DataSourceStatusDto.fromJson(Map<String, dynamic> json) =>
      _$$_DataSourceStatusDtoFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'data_source_id')
  final String dataSourceId;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'is_enabled')
  final bool isEnabled;

  @override
  String toString() {
    return 'DataSourceStatusDto(id: $id, dataSourceId: $dataSourceId, userId: $userId, isEnabled: $isEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DataSourceStatusDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dataSourceId, dataSourceId) ||
                other.dataSourceId == dataSourceId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, dataSourceId, userId, isEnabled);

  @JsonKey(ignore: true)
  @override
  _$DataSourceStatusDtoCopyWith<_DataSourceStatusDto> get copyWith =>
      __$DataSourceStatusDtoCopyWithImpl<_DataSourceStatusDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataSourceStatusDtoToJson(this);
  }
}

abstract class _DataSourceStatusDto extends DataSourceStatusDto {
  const factory _DataSourceStatusDto(
          {required String? id,
          @JsonKey(name: 'data_source_id') required String dataSourceId,
          @JsonKey(name: 'user_id') required String userId,
          @JsonKey(name: 'is_enabled') required bool isEnabled}) =
      _$_DataSourceStatusDto;
  const _DataSourceStatusDto._() : super._();

  factory _DataSourceStatusDto.fromJson(Map<String, dynamic> json) =
      _$_DataSourceStatusDto.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'data_source_id')
  String get dataSourceId;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'is_enabled')
  bool get isEnabled;
  @override
  @JsonKey(ignore: true)
  _$DataSourceStatusDtoCopyWith<_DataSourceStatusDto> get copyWith =>
      throw _privateConstructorUsedError;
}

DataSourceDto _$DataSourceDtoFromJson(Map<String, dynamic> json) {
  return _DataSourceDto.fromJson(json);
}

/// @nodoc
class _$DataSourceDtoTearOff {
  const _$DataSourceDtoTearOff();

  _DataSourceDto call(
      {required String? id,
      @JsonKey(name: 'name') required String dataSourceName,
      required String url,
      @ServerTimestampConverter() required FieldValue? serverTimestamp}) {
    return _DataSourceDto(
      id: id,
      dataSourceName: dataSourceName,
      url: url,
      serverTimestamp: serverTimestamp,
    );
  }

  DataSourceDto fromJson(Map<String, Object?> json) {
    return DataSourceDto.fromJson(json);
  }
}

/// @nodoc
const $DataSourceDto = _$DataSourceDtoTearOff();

/// @nodoc
mixin _$DataSourceDto {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get dataSourceName => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  FieldValue? get serverTimestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataSourceDtoCopyWith<DataSourceDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataSourceDtoCopyWith<$Res> {
  factory $DataSourceDtoCopyWith(
          DataSourceDto value, $Res Function(DataSourceDto) then) =
      _$DataSourceDtoCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      @JsonKey(name: 'name') String dataSourceName,
      String url,
      @ServerTimestampConverter() FieldValue? serverTimestamp});
}

/// @nodoc
class _$DataSourceDtoCopyWithImpl<$Res>
    implements $DataSourceDtoCopyWith<$Res> {
  _$DataSourceDtoCopyWithImpl(this._value, this._then);

  final DataSourceDto _value;
  // ignore: unused_field
  final $Res Function(DataSourceDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? dataSourceName = freezed,
    Object? url = freezed,
    Object? serverTimestamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      dataSourceName: dataSourceName == freezed
          ? _value.dataSourceName
          : dataSourceName // ignore: cast_nullable_to_non_nullable
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
abstract class _$DataSourceDtoCopyWith<$Res>
    implements $DataSourceDtoCopyWith<$Res> {
  factory _$DataSourceDtoCopyWith(
          _DataSourceDto value, $Res Function(_DataSourceDto) then) =
      __$DataSourceDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      @JsonKey(name: 'name') String dataSourceName,
      String url,
      @ServerTimestampConverter() FieldValue? serverTimestamp});
}

/// @nodoc
class __$DataSourceDtoCopyWithImpl<$Res>
    extends _$DataSourceDtoCopyWithImpl<$Res>
    implements _$DataSourceDtoCopyWith<$Res> {
  __$DataSourceDtoCopyWithImpl(
      _DataSourceDto _value, $Res Function(_DataSourceDto) _then)
      : super(_value, (v) => _then(v as _DataSourceDto));

  @override
  _DataSourceDto get _value => super._value as _DataSourceDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? dataSourceName = freezed,
    Object? url = freezed,
    Object? serverTimestamp = freezed,
  }) {
    return _then(_DataSourceDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      dataSourceName: dataSourceName == freezed
          ? _value.dataSourceName
          : dataSourceName // ignore: cast_nullable_to_non_nullable
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
class _$_DataSourceDto extends _DataSourceDto {
  const _$_DataSourceDto(
      {required this.id,
      @JsonKey(name: 'name') required this.dataSourceName,
      required this.url,
      @ServerTimestampConverter() required this.serverTimestamp})
      : super._();

  factory _$_DataSourceDto.fromJson(Map<String, dynamic> json) =>
      _$$_DataSourceDtoFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'name')
  final String dataSourceName;
  @override
  final String url;
  @override
  @ServerTimestampConverter()
  final FieldValue? serverTimestamp;

  @override
  String toString() {
    return 'DataSourceDto(id: $id, dataSourceName: $dataSourceName, url: $url, serverTimestamp: $serverTimestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DataSourceDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dataSourceName, dataSourceName) ||
                other.dataSourceName == dataSourceName) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.serverTimestamp, serverTimestamp) ||
                other.serverTimestamp == serverTimestamp));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, dataSourceName, url, serverTimestamp);

  @JsonKey(ignore: true)
  @override
  _$DataSourceDtoCopyWith<_DataSourceDto> get copyWith =>
      __$DataSourceDtoCopyWithImpl<_DataSourceDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataSourceDtoToJson(this);
  }
}

abstract class _DataSourceDto extends DataSourceDto {
  const factory _DataSourceDto(
          {required String? id,
          @JsonKey(name: 'name') required String dataSourceName,
          required String url,
          @ServerTimestampConverter() required FieldValue? serverTimestamp}) =
      _$_DataSourceDto;
  const _DataSourceDto._() : super._();

  factory _DataSourceDto.fromJson(Map<String, dynamic> json) =
      _$_DataSourceDto.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'name')
  String get dataSourceName;
  @override
  String get url;
  @override
  @ServerTimestampConverter()
  FieldValue? get serverTimestamp;
  @override
  @JsonKey(ignore: true)
  _$DataSourceDtoCopyWith<_DataSourceDto> get copyWith =>
      throw _privateConstructorUsedError;
}
