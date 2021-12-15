// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data_source.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DataSourceTearOff {
  const _$DataSourceTearOff();

  _DataSource call(
      {required UniqueId id,
      required DataSourceName name,
      required DataSourceUrl url}) {
    return _DataSource(
      id: id,
      name: name,
      url: url,
    );
  }
}

/// @nodoc
const $DataSource = _$DataSourceTearOff();

/// @nodoc
mixin _$DataSource {
  UniqueId get id => throw _privateConstructorUsedError;
  DataSourceName get name => throw _privateConstructorUsedError;
  DataSourceUrl get url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DataSourceCopyWith<DataSource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataSourceCopyWith<$Res> {
  factory $DataSourceCopyWith(
          DataSource value, $Res Function(DataSource) then) =
      _$DataSourceCopyWithImpl<$Res>;
  $Res call({UniqueId id, DataSourceName name, DataSourceUrl url});
}

/// @nodoc
class _$DataSourceCopyWithImpl<$Res> implements $DataSourceCopyWith<$Res> {
  _$DataSourceCopyWithImpl(this._value, this._then);

  final DataSource _value;
  // ignore: unused_field
  final $Res Function(DataSource) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as DataSourceName,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as DataSourceUrl,
    ));
  }
}

/// @nodoc
abstract class _$DataSourceCopyWith<$Res> implements $DataSourceCopyWith<$Res> {
  factory _$DataSourceCopyWith(
          _DataSource value, $Res Function(_DataSource) then) =
      __$DataSourceCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, DataSourceName name, DataSourceUrl url});
}

/// @nodoc
class __$DataSourceCopyWithImpl<$Res> extends _$DataSourceCopyWithImpl<$Res>
    implements _$DataSourceCopyWith<$Res> {
  __$DataSourceCopyWithImpl(
      _DataSource _value, $Res Function(_DataSource) _then)
      : super(_value, (v) => _then(v as _DataSource));

  @override
  _DataSource get _value => super._value as _DataSource;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_DataSource(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as DataSourceName,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as DataSourceUrl,
    ));
  }
}

/// @nodoc

class _$_DataSource extends _DataSource {
  const _$_DataSource({required this.id, required this.name, required this.url})
      : super._();

  @override
  final UniqueId id;
  @override
  final DataSourceName name;
  @override
  final DataSourceUrl url;

  @override
  String toString() {
    return 'DataSource(id: $id, name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DataSource &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, url);

  @JsonKey(ignore: true)
  @override
  _$DataSourceCopyWith<_DataSource> get copyWith =>
      __$DataSourceCopyWithImpl<_DataSource>(this, _$identity);
}

abstract class _DataSource extends DataSource {
  const factory _DataSource(
      {required UniqueId id,
      required DataSourceName name,
      required DataSourceUrl url}) = _$_DataSource;
  const _DataSource._() : super._();

  @override
  UniqueId get id;
  @override
  DataSourceName get name;
  @override
  DataSourceUrl get url;
  @override
  @JsonKey(ignore: true)
  _$DataSourceCopyWith<_DataSource> get copyWith =>
      throw _privateConstructorUsedError;
}
