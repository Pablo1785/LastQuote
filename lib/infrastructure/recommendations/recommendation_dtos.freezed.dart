// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recommendation_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecommendationDto _$RecommendationDtoFromJson(Map<String, dynamic> json) {
  return _RecommendationDto.fromJson(json);
}

/// @nodoc
class _$RecommendationDtoTearOff {
  const _$RecommendationDtoTearOff();

  _RecommendationDto call(
      {required String? id,
      @JsonKey(name: 'relevance_score') required num relevanceScore}) {
    return _RecommendationDto(
      id: id,
      relevanceScore: relevanceScore,
    );
  }

  RecommendationDto fromJson(Map<String, Object?> json) {
    return RecommendationDto.fromJson(json);
  }
}

/// @nodoc
const $RecommendationDto = _$RecommendationDtoTearOff();

/// @nodoc
mixin _$RecommendationDto {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'relevance_score')
  num get relevanceScore => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecommendationDtoCopyWith<RecommendationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendationDtoCopyWith<$Res> {
  factory $RecommendationDtoCopyWith(
          RecommendationDto value, $Res Function(RecommendationDto) then) =
      _$RecommendationDtoCopyWithImpl<$Res>;
  $Res call({String? id, @JsonKey(name: 'relevance_score') num relevanceScore});
}

/// @nodoc
class _$RecommendationDtoCopyWithImpl<$Res>
    implements $RecommendationDtoCopyWith<$Res> {
  _$RecommendationDtoCopyWithImpl(this._value, this._then);

  final RecommendationDto _value;
  // ignore: unused_field
  final $Res Function(RecommendationDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? relevanceScore = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      relevanceScore: relevanceScore == freezed
          ? _value.relevanceScore
          : relevanceScore // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
abstract class _$RecommendationDtoCopyWith<$Res>
    implements $RecommendationDtoCopyWith<$Res> {
  factory _$RecommendationDtoCopyWith(
          _RecommendationDto value, $Res Function(_RecommendationDto) then) =
      __$RecommendationDtoCopyWithImpl<$Res>;
  @override
  $Res call({String? id, @JsonKey(name: 'relevance_score') num relevanceScore});
}

/// @nodoc
class __$RecommendationDtoCopyWithImpl<$Res>
    extends _$RecommendationDtoCopyWithImpl<$Res>
    implements _$RecommendationDtoCopyWith<$Res> {
  __$RecommendationDtoCopyWithImpl(
      _RecommendationDto _value, $Res Function(_RecommendationDto) _then)
      : super(_value, (v) => _then(v as _RecommendationDto));

  @override
  _RecommendationDto get _value => super._value as _RecommendationDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? relevanceScore = freezed,
  }) {
    return _then(_RecommendationDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      relevanceScore: relevanceScore == freezed
          ? _value.relevanceScore
          : relevanceScore // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecommendationDto extends _RecommendationDto {
  const _$_RecommendationDto(
      {required this.id,
      @JsonKey(name: 'relevance_score') required this.relevanceScore})
      : super._();

  factory _$_RecommendationDto.fromJson(Map<String, dynamic> json) =>
      _$$_RecommendationDtoFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'relevance_score')
  final num relevanceScore;

  @override
  String toString() {
    return 'RecommendationDto(id: $id, relevanceScore: $relevanceScore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RecommendationDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.relevanceScore, relevanceScore) ||
                other.relevanceScore == relevanceScore));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, relevanceScore);

  @JsonKey(ignore: true)
  @override
  _$RecommendationDtoCopyWith<_RecommendationDto> get copyWith =>
      __$RecommendationDtoCopyWithImpl<_RecommendationDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecommendationDtoToJson(this);
  }
}

abstract class _RecommendationDto extends RecommendationDto {
  const factory _RecommendationDto(
          {required String? id,
          @JsonKey(name: 'relevance_score') required num relevanceScore}) =
      _$_RecommendationDto;
  const _RecommendationDto._() : super._();

  factory _RecommendationDto.fromJson(Map<String, dynamic> json) =
      _$_RecommendationDto.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'relevance_score')
  num get relevanceScore;
  @override
  @JsonKey(ignore: true)
  _$RecommendationDtoCopyWith<_RecommendationDto> get copyWith =>
      throw _privateConstructorUsedError;
}
