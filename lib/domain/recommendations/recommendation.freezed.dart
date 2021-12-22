// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recommendation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RecommendationTearOff {
  const _$RecommendationTearOff();

  _Recommendation call(
      {required String idAndValue, required int relevanceScore}) {
    return _Recommendation(
      idAndValue: idAndValue,
      relevanceScore: relevanceScore,
    );
  }
}

/// @nodoc
const $Recommendation = _$RecommendationTearOff();

/// @nodoc
mixin _$Recommendation {
  String get idAndValue => throw _privateConstructorUsedError;
  int get relevanceScore => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecommendationCopyWith<Recommendation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendationCopyWith<$Res> {
  factory $RecommendationCopyWith(
          Recommendation value, $Res Function(Recommendation) then) =
      _$RecommendationCopyWithImpl<$Res>;
  $Res call({String idAndValue, int relevanceScore});
}

/// @nodoc
class _$RecommendationCopyWithImpl<$Res>
    implements $RecommendationCopyWith<$Res> {
  _$RecommendationCopyWithImpl(this._value, this._then);

  final Recommendation _value;
  // ignore: unused_field
  final $Res Function(Recommendation) _then;

  @override
  $Res call({
    Object? idAndValue = freezed,
    Object? relevanceScore = freezed,
  }) {
    return _then(_value.copyWith(
      idAndValue: idAndValue == freezed
          ? _value.idAndValue
          : idAndValue // ignore: cast_nullable_to_non_nullable
              as String,
      relevanceScore: relevanceScore == freezed
          ? _value.relevanceScore
          : relevanceScore // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$RecommendationCopyWith<$Res>
    implements $RecommendationCopyWith<$Res> {
  factory _$RecommendationCopyWith(
          _Recommendation value, $Res Function(_Recommendation) then) =
      __$RecommendationCopyWithImpl<$Res>;
  @override
  $Res call({String idAndValue, int relevanceScore});
}

/// @nodoc
class __$RecommendationCopyWithImpl<$Res>
    extends _$RecommendationCopyWithImpl<$Res>
    implements _$RecommendationCopyWith<$Res> {
  __$RecommendationCopyWithImpl(
      _Recommendation _value, $Res Function(_Recommendation) _then)
      : super(_value, (v) => _then(v as _Recommendation));

  @override
  _Recommendation get _value => super._value as _Recommendation;

  @override
  $Res call({
    Object? idAndValue = freezed,
    Object? relevanceScore = freezed,
  }) {
    return _then(_Recommendation(
      idAndValue: idAndValue == freezed
          ? _value.idAndValue
          : idAndValue // ignore: cast_nullable_to_non_nullable
              as String,
      relevanceScore: relevanceScore == freezed
          ? _value.relevanceScore
          : relevanceScore // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Recommendation extends _Recommendation {
  const _$_Recommendation(
      {required this.idAndValue, required this.relevanceScore})
      : super._();

  @override
  final String idAndValue;
  @override
  final int relevanceScore;

  @override
  String toString() {
    return 'Recommendation(idAndValue: $idAndValue, relevanceScore: $relevanceScore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Recommendation &&
            (identical(other.idAndValue, idAndValue) ||
                other.idAndValue == idAndValue) &&
            (identical(other.relevanceScore, relevanceScore) ||
                other.relevanceScore == relevanceScore));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idAndValue, relevanceScore);

  @JsonKey(ignore: true)
  @override
  _$RecommendationCopyWith<_Recommendation> get copyWith =>
      __$RecommendationCopyWithImpl<_Recommendation>(this, _$identity);
}

abstract class _Recommendation extends Recommendation {
  const factory _Recommendation(
      {required String idAndValue,
      required int relevanceScore}) = _$_Recommendation;
  const _Recommendation._() : super._();

  @override
  String get idAndValue;
  @override
  int get relevanceScore;
  @override
  @JsonKey(ignore: true)
  _$RecommendationCopyWith<_Recommendation> get copyWith =>
      throw _privateConstructorUsedError;
}
