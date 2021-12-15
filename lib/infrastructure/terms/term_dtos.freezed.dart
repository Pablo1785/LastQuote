// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'term_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TermDto _$TermDtoFromJson(Map<String, dynamic> json) {
  return _TermDto.fromJson(json);
}

/// @nodoc
class _$TermDtoTearOff {
  const _$TermDtoTearOff();

  _TermDto call(
      {required String? id,
      @JsonKey(name: 'containing_documents_count')
          required num containingDocumentsCount}) {
    return _TermDto(
      id: id,
      containingDocumentsCount: containingDocumentsCount,
    );
  }

  TermDto fromJson(Map<String, Object?> json) {
    return TermDto.fromJson(json);
  }
}

/// @nodoc
const $TermDto = _$TermDtoTearOff();

/// @nodoc
mixin _$TermDto {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'containing_documents_count')
  num get containingDocumentsCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TermDtoCopyWith<TermDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TermDtoCopyWith<$Res> {
  factory $TermDtoCopyWith(TermDto value, $Res Function(TermDto) then) =
      _$TermDtoCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      @JsonKey(name: 'containing_documents_count')
          num containingDocumentsCount});
}

/// @nodoc
class _$TermDtoCopyWithImpl<$Res> implements $TermDtoCopyWith<$Res> {
  _$TermDtoCopyWithImpl(this._value, this._then);

  final TermDto _value;
  // ignore: unused_field
  final $Res Function(TermDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? containingDocumentsCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      containingDocumentsCount: containingDocumentsCount == freezed
          ? _value.containingDocumentsCount
          : containingDocumentsCount // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
abstract class _$TermDtoCopyWith<$Res> implements $TermDtoCopyWith<$Res> {
  factory _$TermDtoCopyWith(_TermDto value, $Res Function(_TermDto) then) =
      __$TermDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      @JsonKey(name: 'containing_documents_count')
          num containingDocumentsCount});
}

/// @nodoc
class __$TermDtoCopyWithImpl<$Res> extends _$TermDtoCopyWithImpl<$Res>
    implements _$TermDtoCopyWith<$Res> {
  __$TermDtoCopyWithImpl(_TermDto _value, $Res Function(_TermDto) _then)
      : super(_value, (v) => _then(v as _TermDto));

  @override
  _TermDto get _value => super._value as _TermDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? containingDocumentsCount = freezed,
  }) {
    return _then(_TermDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      containingDocumentsCount: containingDocumentsCount == freezed
          ? _value.containingDocumentsCount
          : containingDocumentsCount // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TermDto extends _TermDto {
  const _$_TermDto(
      {required this.id,
      @JsonKey(name: 'containing_documents_count')
          required this.containingDocumentsCount})
      : super._();

  factory _$_TermDto.fromJson(Map<String, dynamic> json) =>
      _$$_TermDtoFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'containing_documents_count')
  final num containingDocumentsCount;

  @override
  String toString() {
    return 'TermDto(id: $id, containingDocumentsCount: $containingDocumentsCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TermDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(
                    other.containingDocumentsCount, containingDocumentsCount) ||
                other.containingDocumentsCount == containingDocumentsCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, containingDocumentsCount);

  @JsonKey(ignore: true)
  @override
  _$TermDtoCopyWith<_TermDto> get copyWith =>
      __$TermDtoCopyWithImpl<_TermDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TermDtoToJson(this);
  }
}

abstract class _TermDto extends TermDto {
  const factory _TermDto(
      {required String? id,
      @JsonKey(name: 'containing_documents_count')
          required num containingDocumentsCount}) = _$_TermDto;
  const _TermDto._() : super._();

  factory _TermDto.fromJson(Map<String, dynamic> json) = _$_TermDto.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'containing_documents_count')
  num get containingDocumentsCount;
  @override
  @JsonKey(ignore: true)
  _$TermDtoCopyWith<_TermDto> get copyWith =>
      throw _privateConstructorUsedError;
}
