// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_article_engagement_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserArticleEngagementDto _$UserArticleEngagementDtoFromJson(
    Map<String, dynamic> json) {
  return _ArticleSourceStatusDto.fromJson(json);
}

/// @nodoc
class _$UserArticleEngagementDtoTearOff {
  const _$UserArticleEngagementDtoTearOff();

  _ArticleSourceStatusDto call(
      {required String? id,
      @JsonKey(name: 'article_id') required String articleId,
      @JsonKey(name: 'user_id') required String userId,
      @JsonKey(name: 'is_dismissed') required bool isDismissed,
      @JsonKey(name: 'is_liked') required bool isLiked,
      @JsonKey(name: 'is_opened') required bool isOpened,
      @JsonKey(name: 'is_shared') required bool isShared}) {
    return _ArticleSourceStatusDto(
      id: id,
      articleId: articleId,
      userId: userId,
      isDismissed: isDismissed,
      isLiked: isLiked,
      isOpened: isOpened,
      isShared: isShared,
    );
  }

  UserArticleEngagementDto fromJson(Map<String, Object?> json) {
    return UserArticleEngagementDto.fromJson(json);
  }
}

/// @nodoc
const $UserArticleEngagementDto = _$UserArticleEngagementDtoTearOff();

/// @nodoc
mixin _$UserArticleEngagementDto {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'article_id')
  String get articleId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_dismissed')
  bool get isDismissed => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_liked')
  bool get isLiked => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_opened')
  bool get isOpened => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_shared')
  bool get isShared => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserArticleEngagementDtoCopyWith<UserArticleEngagementDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserArticleEngagementDtoCopyWith<$Res> {
  factory $UserArticleEngagementDtoCopyWith(UserArticleEngagementDto value,
          $Res Function(UserArticleEngagementDto) then) =
      _$UserArticleEngagementDtoCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      @JsonKey(name: 'article_id') String articleId,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'is_dismissed') bool isDismissed,
      @JsonKey(name: 'is_liked') bool isLiked,
      @JsonKey(name: 'is_opened') bool isOpened,
      @JsonKey(name: 'is_shared') bool isShared});
}

/// @nodoc
class _$UserArticleEngagementDtoCopyWithImpl<$Res>
    implements $UserArticleEngagementDtoCopyWith<$Res> {
  _$UserArticleEngagementDtoCopyWithImpl(this._value, this._then);

  final UserArticleEngagementDto _value;
  // ignore: unused_field
  final $Res Function(UserArticleEngagementDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? articleId = freezed,
    Object? userId = freezed,
    Object? isDismissed = freezed,
    Object? isLiked = freezed,
    Object? isOpened = freezed,
    Object? isShared = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      articleId: articleId == freezed
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      isDismissed: isDismissed == freezed
          ? _value.isDismissed
          : isDismissed // ignore: cast_nullable_to_non_nullable
              as bool,
      isLiked: isLiked == freezed
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      isOpened: isOpened == freezed
          ? _value.isOpened
          : isOpened // ignore: cast_nullable_to_non_nullable
              as bool,
      isShared: isShared == freezed
          ? _value.isShared
          : isShared // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ArticleSourceStatusDtoCopyWith<$Res>
    implements $UserArticleEngagementDtoCopyWith<$Res> {
  factory _$ArticleSourceStatusDtoCopyWith(_ArticleSourceStatusDto value,
          $Res Function(_ArticleSourceStatusDto) then) =
      __$ArticleSourceStatusDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      @JsonKey(name: 'article_id') String articleId,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'is_dismissed') bool isDismissed,
      @JsonKey(name: 'is_liked') bool isLiked,
      @JsonKey(name: 'is_opened') bool isOpened,
      @JsonKey(name: 'is_shared') bool isShared});
}

/// @nodoc
class __$ArticleSourceStatusDtoCopyWithImpl<$Res>
    extends _$UserArticleEngagementDtoCopyWithImpl<$Res>
    implements _$ArticleSourceStatusDtoCopyWith<$Res> {
  __$ArticleSourceStatusDtoCopyWithImpl(_ArticleSourceStatusDto _value,
      $Res Function(_ArticleSourceStatusDto) _then)
      : super(_value, (v) => _then(v as _ArticleSourceStatusDto));

  @override
  _ArticleSourceStatusDto get _value => super._value as _ArticleSourceStatusDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? articleId = freezed,
    Object? userId = freezed,
    Object? isDismissed = freezed,
    Object? isLiked = freezed,
    Object? isOpened = freezed,
    Object? isShared = freezed,
  }) {
    return _then(_ArticleSourceStatusDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      articleId: articleId == freezed
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      isDismissed: isDismissed == freezed
          ? _value.isDismissed
          : isDismissed // ignore: cast_nullable_to_non_nullable
              as bool,
      isLiked: isLiked == freezed
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      isOpened: isOpened == freezed
          ? _value.isOpened
          : isOpened // ignore: cast_nullable_to_non_nullable
              as bool,
      isShared: isShared == freezed
          ? _value.isShared
          : isShared // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArticleSourceStatusDto extends _ArticleSourceStatusDto {
  const _$_ArticleSourceStatusDto(
      {required this.id,
      @JsonKey(name: 'article_id') required this.articleId,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'is_dismissed') required this.isDismissed,
      @JsonKey(name: 'is_liked') required this.isLiked,
      @JsonKey(name: 'is_opened') required this.isOpened,
      @JsonKey(name: 'is_shared') required this.isShared})
      : super._();

  factory _$_ArticleSourceStatusDto.fromJson(Map<String, dynamic> json) =>
      _$$_ArticleSourceStatusDtoFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'article_id')
  final String articleId;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'is_dismissed')
  final bool isDismissed;
  @override
  @JsonKey(name: 'is_liked')
  final bool isLiked;
  @override
  @JsonKey(name: 'is_opened')
  final bool isOpened;
  @override
  @JsonKey(name: 'is_shared')
  final bool isShared;

  @override
  String toString() {
    return 'UserArticleEngagementDto(id: $id, articleId: $articleId, userId: $userId, isDismissed: $isDismissed, isLiked: $isLiked, isOpened: $isOpened, isShared: $isShared)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArticleSourceStatusDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.articleId, articleId) ||
                other.articleId == articleId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.isDismissed, isDismissed) ||
                other.isDismissed == isDismissed) &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked) &&
            (identical(other.isOpened, isOpened) ||
                other.isOpened == isOpened) &&
            (identical(other.isShared, isShared) ||
                other.isShared == isShared));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, articleId, userId,
      isDismissed, isLiked, isOpened, isShared);

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

abstract class _ArticleSourceStatusDto extends UserArticleEngagementDto {
  const factory _ArticleSourceStatusDto(
          {required String? id,
          @JsonKey(name: 'article_id') required String articleId,
          @JsonKey(name: 'user_id') required String userId,
          @JsonKey(name: 'is_dismissed') required bool isDismissed,
          @JsonKey(name: 'is_liked') required bool isLiked,
          @JsonKey(name: 'is_opened') required bool isOpened,
          @JsonKey(name: 'is_shared') required bool isShared}) =
      _$_ArticleSourceStatusDto;
  const _ArticleSourceStatusDto._() : super._();

  factory _ArticleSourceStatusDto.fromJson(Map<String, dynamic> json) =
      _$_ArticleSourceStatusDto.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'article_id')
  String get articleId;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'is_dismissed')
  bool get isDismissed;
  @override
  @JsonKey(name: 'is_liked')
  bool get isLiked;
  @override
  @JsonKey(name: 'is_opened')
  bool get isOpened;
  @override
  @JsonKey(name: 'is_shared')
  bool get isShared;
  @override
  @JsonKey(ignore: true)
  _$ArticleSourceStatusDtoCopyWith<_ArticleSourceStatusDto> get copyWith =>
      throw _privateConstructorUsedError;
}
