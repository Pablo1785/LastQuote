// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'term_engagement_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TermEngagementDto _$TermEngagementDtoFromJson(Map<String, dynamic> json) {
  return _TermEngagementDto.fromJson(json);
}

/// @nodoc
class _$TermEngagementDtoTearOff {
  const _$TermEngagementDtoTearOff();

  _TermEngagementDto call(
      {required String? id,
      @JsonKey(name: "term_id")
          required String termId,
      @JsonKey(name: "dismiss_count")
          required num dismissCount,
      @JsonKey(name: "like_count")
          required num likeCount,
      @JsonKey(name: "share_count")
          required num shareCount,
      @JsonKey(name: "open_count")
          required num openCount,
      @JsonKey(name: "initial_interest_count")
          required num initialInterestCount}) {
    return _TermEngagementDto(
      id: id,
      termId: termId,
      dismissCount: dismissCount,
      likeCount: likeCount,
      shareCount: shareCount,
      openCount: openCount,
      initialInterestCount: initialInterestCount,
    );
  }

  TermEngagementDto fromJson(Map<String, Object?> json) {
    return TermEngagementDto.fromJson(json);
  }
}

/// @nodoc
const $TermEngagementDto = _$TermEngagementDtoTearOff();

/// @nodoc
mixin _$TermEngagementDto {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "term_id")
  String get termId => throw _privateConstructorUsedError;
  @JsonKey(name: "dismiss_count")
  num get dismissCount => throw _privateConstructorUsedError;
  @JsonKey(name: "like_count")
  num get likeCount => throw _privateConstructorUsedError;
  @JsonKey(name: "share_count")
  num get shareCount => throw _privateConstructorUsedError;
  @JsonKey(name: "open_count")
  num get openCount => throw _privateConstructorUsedError;
  @JsonKey(name: "initial_interest_count")
  num get initialInterestCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TermEngagementDtoCopyWith<TermEngagementDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TermEngagementDtoCopyWith<$Res> {
  factory $TermEngagementDtoCopyWith(
          TermEngagementDto value, $Res Function(TermEngagementDto) then) =
      _$TermEngagementDtoCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      @JsonKey(name: "term_id") String termId,
      @JsonKey(name: "dismiss_count") num dismissCount,
      @JsonKey(name: "like_count") num likeCount,
      @JsonKey(name: "share_count") num shareCount,
      @JsonKey(name: "open_count") num openCount,
      @JsonKey(name: "initial_interest_count") num initialInterestCount});
}

/// @nodoc
class _$TermEngagementDtoCopyWithImpl<$Res>
    implements $TermEngagementDtoCopyWith<$Res> {
  _$TermEngagementDtoCopyWithImpl(this._value, this._then);

  final TermEngagementDto _value;
  // ignore: unused_field
  final $Res Function(TermEngagementDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? termId = freezed,
    Object? dismissCount = freezed,
    Object? likeCount = freezed,
    Object? shareCount = freezed,
    Object? openCount = freezed,
    Object? initialInterestCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      termId: termId == freezed
          ? _value.termId
          : termId // ignore: cast_nullable_to_non_nullable
              as String,
      dismissCount: dismissCount == freezed
          ? _value.dismissCount
          : dismissCount // ignore: cast_nullable_to_non_nullable
              as num,
      likeCount: likeCount == freezed
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as num,
      shareCount: shareCount == freezed
          ? _value.shareCount
          : shareCount // ignore: cast_nullable_to_non_nullable
              as num,
      openCount: openCount == freezed
          ? _value.openCount
          : openCount // ignore: cast_nullable_to_non_nullable
              as num,
      initialInterestCount: initialInterestCount == freezed
          ? _value.initialInterestCount
          : initialInterestCount // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
abstract class _$TermEngagementDtoCopyWith<$Res>
    implements $TermEngagementDtoCopyWith<$Res> {
  factory _$TermEngagementDtoCopyWith(
          _TermEngagementDto value, $Res Function(_TermEngagementDto) then) =
      __$TermEngagementDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      @JsonKey(name: "term_id") String termId,
      @JsonKey(name: "dismiss_count") num dismissCount,
      @JsonKey(name: "like_count") num likeCount,
      @JsonKey(name: "share_count") num shareCount,
      @JsonKey(name: "open_count") num openCount,
      @JsonKey(name: "initial_interest_count") num initialInterestCount});
}

/// @nodoc
class __$TermEngagementDtoCopyWithImpl<$Res>
    extends _$TermEngagementDtoCopyWithImpl<$Res>
    implements _$TermEngagementDtoCopyWith<$Res> {
  __$TermEngagementDtoCopyWithImpl(
      _TermEngagementDto _value, $Res Function(_TermEngagementDto) _then)
      : super(_value, (v) => _then(v as _TermEngagementDto));

  @override
  _TermEngagementDto get _value => super._value as _TermEngagementDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? termId = freezed,
    Object? dismissCount = freezed,
    Object? likeCount = freezed,
    Object? shareCount = freezed,
    Object? openCount = freezed,
    Object? initialInterestCount = freezed,
  }) {
    return _then(_TermEngagementDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      termId: termId == freezed
          ? _value.termId
          : termId // ignore: cast_nullable_to_non_nullable
              as String,
      dismissCount: dismissCount == freezed
          ? _value.dismissCount
          : dismissCount // ignore: cast_nullable_to_non_nullable
              as num,
      likeCount: likeCount == freezed
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as num,
      shareCount: shareCount == freezed
          ? _value.shareCount
          : shareCount // ignore: cast_nullable_to_non_nullable
              as num,
      openCount: openCount == freezed
          ? _value.openCount
          : openCount // ignore: cast_nullable_to_non_nullable
              as num,
      initialInterestCount: initialInterestCount == freezed
          ? _value.initialInterestCount
          : initialInterestCount // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TermEngagementDto extends _TermEngagementDto {
  const _$_TermEngagementDto(
      {required this.id,
      @JsonKey(name: "term_id")
          required this.termId,
      @JsonKey(name: "dismiss_count")
          required this.dismissCount,
      @JsonKey(name: "like_count")
          required this.likeCount,
      @JsonKey(name: "share_count")
          required this.shareCount,
      @JsonKey(name: "open_count")
          required this.openCount,
      @JsonKey(name: "initial_interest_count")
          required this.initialInterestCount})
      : super._();

  factory _$_TermEngagementDto.fromJson(Map<String, dynamic> json) =>
      _$$_TermEngagementDtoFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: "term_id")
  final String termId;
  @override
  @JsonKey(name: "dismiss_count")
  final num dismissCount;
  @override
  @JsonKey(name: "like_count")
  final num likeCount;
  @override
  @JsonKey(name: "share_count")
  final num shareCount;
  @override
  @JsonKey(name: "open_count")
  final num openCount;
  @override
  @JsonKey(name: "initial_interest_count")
  final num initialInterestCount;

  @override
  String toString() {
    return 'TermEngagementDto(id: $id, termId: $termId, dismissCount: $dismissCount, likeCount: $likeCount, shareCount: $shareCount, openCount: $openCount, initialInterestCount: $initialInterestCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TermEngagementDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.termId, termId) || other.termId == termId) &&
            (identical(other.dismissCount, dismissCount) ||
                other.dismissCount == dismissCount) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.shareCount, shareCount) ||
                other.shareCount == shareCount) &&
            (identical(other.openCount, openCount) ||
                other.openCount == openCount) &&
            (identical(other.initialInterestCount, initialInterestCount) ||
                other.initialInterestCount == initialInterestCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, termId, dismissCount,
      likeCount, shareCount, openCount, initialInterestCount);

  @JsonKey(ignore: true)
  @override
  _$TermEngagementDtoCopyWith<_TermEngagementDto> get copyWith =>
      __$TermEngagementDtoCopyWithImpl<_TermEngagementDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TermEngagementDtoToJson(this);
  }
}

abstract class _TermEngagementDto extends TermEngagementDto {
  const factory _TermEngagementDto(
      {required String? id,
      @JsonKey(name: "term_id")
          required String termId,
      @JsonKey(name: "dismiss_count")
          required num dismissCount,
      @JsonKey(name: "like_count")
          required num likeCount,
      @JsonKey(name: "share_count")
          required num shareCount,
      @JsonKey(name: "open_count")
          required num openCount,
      @JsonKey(name: "initial_interest_count")
          required num initialInterestCount}) = _$_TermEngagementDto;
  const _TermEngagementDto._() : super._();

  factory _TermEngagementDto.fromJson(Map<String, dynamic> json) =
      _$_TermEngagementDto.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: "term_id")
  String get termId;
  @override
  @JsonKey(name: "dismiss_count")
  num get dismissCount;
  @override
  @JsonKey(name: "like_count")
  num get likeCount;
  @override
  @JsonKey(name: "share_count")
  num get shareCount;
  @override
  @JsonKey(name: "open_count")
  num get openCount;
  @override
  @JsonKey(name: "initial_interest_count")
  num get initialInterestCount;
  @override
  @JsonKey(ignore: true)
  _$TermEngagementDtoCopyWith<_TermEngagementDto> get copyWith =>
      throw _privateConstructorUsedError;
}
