// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_term_data_source_engagement_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserTermDataSourceEngagementDto _$UserTermDataSourceEngagementDtoFromJson(
    Map<String, dynamic> json) {
  return _UserTermDataSourceEngagementDto.fromJson(json);
}

/// @nodoc
class _$UserTermDataSourceEngagementDtoTearOff {
  const _$UserTermDataSourceEngagementDtoTearOff();

  _UserTermDataSourceEngagementDto call(
      {required String? id,
      @JsonKey(name: 'data_source_id') required String dataSourceId,
      @JsonKey(name: 'term_id') required String termId,
      @JsonKey(name: 'user_id') required String userId,
      @JsonKey(name: 'dismiss_count') required num dismissCount,
      @JsonKey(name: 'like_count') required num likeCount,
      @JsonKey(name: 'open_count') required num openCount,
      @JsonKey(name: 'share_count') required num shareCount,
      @JsonKey(name: 'is_initial_interest') required bool isInitialInterest}) {
    return _UserTermDataSourceEngagementDto(
      id: id,
      dataSourceId: dataSourceId,
      termId: termId,
      userId: userId,
      dismissCount: dismissCount,
      likeCount: likeCount,
      openCount: openCount,
      shareCount: shareCount,
      isInitialInterest: isInitialInterest,
    );
  }

  UserTermDataSourceEngagementDto fromJson(Map<String, Object?> json) {
    return UserTermDataSourceEngagementDto.fromJson(json);
  }
}

/// @nodoc
const $UserTermDataSourceEngagementDto =
    _$UserTermDataSourceEngagementDtoTearOff();

/// @nodoc
mixin _$UserTermDataSourceEngagementDto {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'data_source_id')
  String get dataSourceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'term_id')
  String get termId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'dismiss_count')
  num get dismissCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'like_count')
  num get likeCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'open_count')
  num get openCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'share_count')
  num get shareCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_initial_interest')
  bool get isInitialInterest => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserTermDataSourceEngagementDtoCopyWith<UserTermDataSourceEngagementDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTermDataSourceEngagementDtoCopyWith<$Res> {
  factory $UserTermDataSourceEngagementDtoCopyWith(
          UserTermDataSourceEngagementDto value,
          $Res Function(UserTermDataSourceEngagementDto) then) =
      _$UserTermDataSourceEngagementDtoCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      @JsonKey(name: 'data_source_id') String dataSourceId,
      @JsonKey(name: 'term_id') String termId,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'dismiss_count') num dismissCount,
      @JsonKey(name: 'like_count') num likeCount,
      @JsonKey(name: 'open_count') num openCount,
      @JsonKey(name: 'share_count') num shareCount,
      @JsonKey(name: 'is_initial_interest') bool isInitialInterest});
}

/// @nodoc
class _$UserTermDataSourceEngagementDtoCopyWithImpl<$Res>
    implements $UserTermDataSourceEngagementDtoCopyWith<$Res> {
  _$UserTermDataSourceEngagementDtoCopyWithImpl(this._value, this._then);

  final UserTermDataSourceEngagementDto _value;
  // ignore: unused_field
  final $Res Function(UserTermDataSourceEngagementDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? dataSourceId = freezed,
    Object? termId = freezed,
    Object? userId = freezed,
    Object? dismissCount = freezed,
    Object? likeCount = freezed,
    Object? openCount = freezed,
    Object? shareCount = freezed,
    Object? isInitialInterest = freezed,
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
      termId: termId == freezed
          ? _value.termId
          : termId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      dismissCount: dismissCount == freezed
          ? _value.dismissCount
          : dismissCount // ignore: cast_nullable_to_non_nullable
              as num,
      likeCount: likeCount == freezed
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as num,
      openCount: openCount == freezed
          ? _value.openCount
          : openCount // ignore: cast_nullable_to_non_nullable
              as num,
      shareCount: shareCount == freezed
          ? _value.shareCount
          : shareCount // ignore: cast_nullable_to_non_nullable
              as num,
      isInitialInterest: isInitialInterest == freezed
          ? _value.isInitialInterest
          : isInitialInterest // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$UserTermDataSourceEngagementDtoCopyWith<$Res>
    implements $UserTermDataSourceEngagementDtoCopyWith<$Res> {
  factory _$UserTermDataSourceEngagementDtoCopyWith(
          _UserTermDataSourceEngagementDto value,
          $Res Function(_UserTermDataSourceEngagementDto) then) =
      __$UserTermDataSourceEngagementDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      @JsonKey(name: 'data_source_id') String dataSourceId,
      @JsonKey(name: 'term_id') String termId,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'dismiss_count') num dismissCount,
      @JsonKey(name: 'like_count') num likeCount,
      @JsonKey(name: 'open_count') num openCount,
      @JsonKey(name: 'share_count') num shareCount,
      @JsonKey(name: 'is_initial_interest') bool isInitialInterest});
}

/// @nodoc
class __$UserTermDataSourceEngagementDtoCopyWithImpl<$Res>
    extends _$UserTermDataSourceEngagementDtoCopyWithImpl<$Res>
    implements _$UserTermDataSourceEngagementDtoCopyWith<$Res> {
  __$UserTermDataSourceEngagementDtoCopyWithImpl(
      _UserTermDataSourceEngagementDto _value,
      $Res Function(_UserTermDataSourceEngagementDto) _then)
      : super(_value, (v) => _then(v as _UserTermDataSourceEngagementDto));

  @override
  _UserTermDataSourceEngagementDto get _value =>
      super._value as _UserTermDataSourceEngagementDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? dataSourceId = freezed,
    Object? termId = freezed,
    Object? userId = freezed,
    Object? dismissCount = freezed,
    Object? likeCount = freezed,
    Object? openCount = freezed,
    Object? shareCount = freezed,
    Object? isInitialInterest = freezed,
  }) {
    return _then(_UserTermDataSourceEngagementDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      dataSourceId: dataSourceId == freezed
          ? _value.dataSourceId
          : dataSourceId // ignore: cast_nullable_to_non_nullable
              as String,
      termId: termId == freezed
          ? _value.termId
          : termId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      dismissCount: dismissCount == freezed
          ? _value.dismissCount
          : dismissCount // ignore: cast_nullable_to_non_nullable
              as num,
      likeCount: likeCount == freezed
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as num,
      openCount: openCount == freezed
          ? _value.openCount
          : openCount // ignore: cast_nullable_to_non_nullable
              as num,
      shareCount: shareCount == freezed
          ? _value.shareCount
          : shareCount // ignore: cast_nullable_to_non_nullable
              as num,
      isInitialInterest: isInitialInterest == freezed
          ? _value.isInitialInterest
          : isInitialInterest // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserTermDataSourceEngagementDto
    extends _UserTermDataSourceEngagementDto {
  const _$_UserTermDataSourceEngagementDto(
      {required this.id,
      @JsonKey(name: 'data_source_id') required this.dataSourceId,
      @JsonKey(name: 'term_id') required this.termId,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'dismiss_count') required this.dismissCount,
      @JsonKey(name: 'like_count') required this.likeCount,
      @JsonKey(name: 'open_count') required this.openCount,
      @JsonKey(name: 'share_count') required this.shareCount,
      @JsonKey(name: 'is_initial_interest') required this.isInitialInterest})
      : super._();

  factory _$_UserTermDataSourceEngagementDto.fromJson(
          Map<String, dynamic> json) =>
      _$$_UserTermDataSourceEngagementDtoFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'data_source_id')
  final String dataSourceId;
  @override
  @JsonKey(name: 'term_id')
  final String termId;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'dismiss_count')
  final num dismissCount;
  @override
  @JsonKey(name: 'like_count')
  final num likeCount;
  @override
  @JsonKey(name: 'open_count')
  final num openCount;
  @override
  @JsonKey(name: 'share_count')
  final num shareCount;
  @override
  @JsonKey(name: 'is_initial_interest')
  final bool isInitialInterest;

  @override
  String toString() {
    return 'UserTermDataSourceEngagementDto(id: $id, dataSourceId: $dataSourceId, termId: $termId, userId: $userId, dismissCount: $dismissCount, likeCount: $likeCount, openCount: $openCount, shareCount: $shareCount, isInitialInterest: $isInitialInterest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserTermDataSourceEngagementDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dataSourceId, dataSourceId) ||
                other.dataSourceId == dataSourceId) &&
            (identical(other.termId, termId) || other.termId == termId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.dismissCount, dismissCount) ||
                other.dismissCount == dismissCount) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.openCount, openCount) ||
                other.openCount == openCount) &&
            (identical(other.shareCount, shareCount) ||
                other.shareCount == shareCount) &&
            (identical(other.isInitialInterest, isInitialInterest) ||
                other.isInitialInterest == isInitialInterest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, dataSourceId, termId, userId,
      dismissCount, likeCount, openCount, shareCount, isInitialInterest);

  @JsonKey(ignore: true)
  @override
  _$UserTermDataSourceEngagementDtoCopyWith<_UserTermDataSourceEngagementDto>
      get copyWith => __$UserTermDataSourceEngagementDtoCopyWithImpl<
          _UserTermDataSourceEngagementDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserTermDataSourceEngagementDtoToJson(this);
  }
}

abstract class _UserTermDataSourceEngagementDto
    extends UserTermDataSourceEngagementDto {
  const factory _UserTermDataSourceEngagementDto(
          {required String? id,
          @JsonKey(name: 'data_source_id')
              required String dataSourceId,
          @JsonKey(name: 'term_id')
              required String termId,
          @JsonKey(name: 'user_id')
              required String userId,
          @JsonKey(name: 'dismiss_count')
              required num dismissCount,
          @JsonKey(name: 'like_count')
              required num likeCount,
          @JsonKey(name: 'open_count')
              required num openCount,
          @JsonKey(name: 'share_count')
              required num shareCount,
          @JsonKey(name: 'is_initial_interest')
              required bool isInitialInterest}) =
      _$_UserTermDataSourceEngagementDto;
  const _UserTermDataSourceEngagementDto._() : super._();

  factory _UserTermDataSourceEngagementDto.fromJson(Map<String, dynamic> json) =
      _$_UserTermDataSourceEngagementDto.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'data_source_id')
  String get dataSourceId;
  @override
  @JsonKey(name: 'term_id')
  String get termId;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'dismiss_count')
  num get dismissCount;
  @override
  @JsonKey(name: 'like_count')
  num get likeCount;
  @override
  @JsonKey(name: 'open_count')
  num get openCount;
  @override
  @JsonKey(name: 'share_count')
  num get shareCount;
  @override
  @JsonKey(name: 'is_initial_interest')
  bool get isInitialInterest;
  @override
  @JsonKey(ignore: true)
  _$UserTermDataSourceEngagementDtoCopyWith<_UserTermDataSourceEngagementDto>
      get copyWith => throw _privateConstructorUsedError;
}
