// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'term.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TermTearOff {
  const _$TermTearOff();

  _Term call(
      {required String idAndValue, required int containingDocumentsCount}) {
    return _Term(
      idAndValue: idAndValue,
      containingDocumentsCount: containingDocumentsCount,
    );
  }
}

/// @nodoc
const $Term = _$TermTearOff();

/// @nodoc
mixin _$Term {
  String get idAndValue => throw _privateConstructorUsedError;
  int get containingDocumentsCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TermCopyWith<Term> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TermCopyWith<$Res> {
  factory $TermCopyWith(Term value, $Res Function(Term) then) =
      _$TermCopyWithImpl<$Res>;
  $Res call({String idAndValue, int containingDocumentsCount});
}

/// @nodoc
class _$TermCopyWithImpl<$Res> implements $TermCopyWith<$Res> {
  _$TermCopyWithImpl(this._value, this._then);

  final Term _value;
  // ignore: unused_field
  final $Res Function(Term) _then;

  @override
  $Res call({
    Object? idAndValue = freezed,
    Object? containingDocumentsCount = freezed,
  }) {
    return _then(_value.copyWith(
      idAndValue: idAndValue == freezed
          ? _value.idAndValue
          : idAndValue // ignore: cast_nullable_to_non_nullable
              as String,
      containingDocumentsCount: containingDocumentsCount == freezed
          ? _value.containingDocumentsCount
          : containingDocumentsCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$TermCopyWith<$Res> implements $TermCopyWith<$Res> {
  factory _$TermCopyWith(_Term value, $Res Function(_Term) then) =
      __$TermCopyWithImpl<$Res>;
  @override
  $Res call({String idAndValue, int containingDocumentsCount});
}

/// @nodoc
class __$TermCopyWithImpl<$Res> extends _$TermCopyWithImpl<$Res>
    implements _$TermCopyWith<$Res> {
  __$TermCopyWithImpl(_Term _value, $Res Function(_Term) _then)
      : super(_value, (v) => _then(v as _Term));

  @override
  _Term get _value => super._value as _Term;

  @override
  $Res call({
    Object? idAndValue = freezed,
    Object? containingDocumentsCount = freezed,
  }) {
    return _then(_Term(
      idAndValue: idAndValue == freezed
          ? _value.idAndValue
          : idAndValue // ignore: cast_nullable_to_non_nullable
              as String,
      containingDocumentsCount: containingDocumentsCount == freezed
          ? _value.containingDocumentsCount
          : containingDocumentsCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Term extends _Term {
  const _$_Term(
      {required this.idAndValue, required this.containingDocumentsCount})
      : super._();

  @override
  final String idAndValue;
  @override
  final int containingDocumentsCount;

  @override
  String toString() {
    return 'Term(idAndValue: $idAndValue, containingDocumentsCount: $containingDocumentsCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Term &&
            (identical(other.idAndValue, idAndValue) ||
                other.idAndValue == idAndValue) &&
            (identical(
                    other.containingDocumentsCount, containingDocumentsCount) ||
                other.containingDocumentsCount == containingDocumentsCount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, idAndValue, containingDocumentsCount);

  @JsonKey(ignore: true)
  @override
  _$TermCopyWith<_Term> get copyWith =>
      __$TermCopyWithImpl<_Term>(this, _$identity);
}

abstract class _Term extends Term {
  const factory _Term(
      {required String idAndValue,
      required int containingDocumentsCount}) = _$_Term;
  const _Term._() : super._();

  @override
  String get idAndValue;
  @override
  int get containingDocumentsCount;
  @override
  @JsonKey(ignore: true)
  _$TermCopyWith<_Term> get copyWith => throw _privateConstructorUsedError;
}
