// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data_source_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DataSourceStatusTearOff {
  const _$DataSourceStatusTearOff();

  _DataSourceStatus call(
      {required JunctionUniqueId id,
      required UniqueId dataSourceId,
      required UniqueId userId,
      required bool isEnabled}) {
    return _DataSourceStatus(
      id: id,
      dataSourceId: dataSourceId,
      userId: userId,
      isEnabled: isEnabled,
    );
  }
}

/// @nodoc
const $DataSourceStatus = _$DataSourceStatusTearOff();

/// @nodoc
mixin _$DataSourceStatus {
  JunctionUniqueId get id => throw _privateConstructorUsedError;
  UniqueId get dataSourceId => throw _privateConstructorUsedError;
  UniqueId get userId => throw _privateConstructorUsedError;
  bool get isEnabled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DataSourceStatusCopyWith<DataSourceStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataSourceStatusCopyWith<$Res> {
  factory $DataSourceStatusCopyWith(
          DataSourceStatus value, $Res Function(DataSourceStatus) then) =
      _$DataSourceStatusCopyWithImpl<$Res>;
  $Res call(
      {JunctionUniqueId id,
      UniqueId dataSourceId,
      UniqueId userId,
      bool isEnabled});
}

/// @nodoc
class _$DataSourceStatusCopyWithImpl<$Res>
    implements $DataSourceStatusCopyWith<$Res> {
  _$DataSourceStatusCopyWithImpl(this._value, this._then);

  final DataSourceStatus _value;
  // ignore: unused_field
  final $Res Function(DataSourceStatus) _then;

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
              as JunctionUniqueId,
      dataSourceId: dataSourceId == freezed
          ? _value.dataSourceId
          : dataSourceId // ignore: cast_nullable_to_non_nullable
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
abstract class _$DataSourceStatusCopyWith<$Res>
    implements $DataSourceStatusCopyWith<$Res> {
  factory _$DataSourceStatusCopyWith(
          _DataSourceStatus value, $Res Function(_DataSourceStatus) then) =
      __$DataSourceStatusCopyWithImpl<$Res>;
  @override
  $Res call(
      {JunctionUniqueId id,
      UniqueId dataSourceId,
      UniqueId userId,
      bool isEnabled});
}

/// @nodoc
class __$DataSourceStatusCopyWithImpl<$Res>
    extends _$DataSourceStatusCopyWithImpl<$Res>
    implements _$DataSourceStatusCopyWith<$Res> {
  __$DataSourceStatusCopyWithImpl(
      _DataSourceStatus _value, $Res Function(_DataSourceStatus) _then)
      : super(_value, (v) => _then(v as _DataSourceStatus));

  @override
  _DataSourceStatus get _value => super._value as _DataSourceStatus;

  @override
  $Res call({
    Object? id = freezed,
    Object? dataSourceId = freezed,
    Object? userId = freezed,
    Object? isEnabled = freezed,
  }) {
    return _then(_DataSourceStatus(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as JunctionUniqueId,
      dataSourceId: dataSourceId == freezed
          ? _value.dataSourceId
          : dataSourceId // ignore: cast_nullable_to_non_nullable
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

class _$_DataSourceStatus extends _DataSourceStatus {
  const _$_DataSourceStatus(
      {required this.id,
      required this.dataSourceId,
      required this.userId,
      required this.isEnabled})
      : super._();

  @override
  final JunctionUniqueId id;
  @override
  final UniqueId dataSourceId;
  @override
  final UniqueId userId;
  @override
  final bool isEnabled;

  @override
  String toString() {
    return 'DataSourceStatus(id: $id, dataSourceId: $dataSourceId, userId: $userId, isEnabled: $isEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DataSourceStatus &&
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
  _$DataSourceStatusCopyWith<_DataSourceStatus> get copyWith =>
      __$DataSourceStatusCopyWithImpl<_DataSourceStatus>(this, _$identity);
}

abstract class _DataSourceStatus extends DataSourceStatus {
  const factory _DataSourceStatus(
      {required JunctionUniqueId id,
      required UniqueId dataSourceId,
      required UniqueId userId,
      required bool isEnabled}) = _$_DataSourceStatus;
  const _DataSourceStatus._() : super._();

  @override
  JunctionUniqueId get id;
  @override
  UniqueId get dataSourceId;
  @override
  UniqueId get userId;
  @override
  bool get isEnabled;
  @override
  @JsonKey(ignore: true)
  _$DataSourceStatusCopyWith<_DataSourceStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
