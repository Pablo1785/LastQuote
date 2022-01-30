// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'article_term_count_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticleTermCountDto _$ArticleTermCountDtoFromJson(Map<String, dynamic> json) {
  return _ArticleTermCountDto.fromJson(json);
}

/// @nodoc
class _$ArticleTermCountDtoTearOff {
  const _$ArticleTermCountDtoTearOff();

  _ArticleTermCountDto call(
      {required String? id,
      @JsonKey(name: 'article_id') required String articleId,
      @JsonKey(name: 'term_id') required String termId,
      @JsonKey(name: 'term_importance') required num termImportance}) {
    return _ArticleTermCountDto(
      id: id,
      articleId: articleId,
      termId: termId,
      termImportance: termImportance,
    );
  }

  ArticleTermCountDto fromJson(Map<String, Object?> json) {
    return ArticleTermCountDto.fromJson(json);
  }
}

/// @nodoc
const $ArticleTermCountDto = _$ArticleTermCountDtoTearOff();

/// @nodoc
mixin _$ArticleTermCountDto {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'article_id')
  String get articleId => throw _privateConstructorUsedError;
  @JsonKey(name: 'term_id')
  String get termId => throw _privateConstructorUsedError;
  @JsonKey(name: 'term_importance')
  num get termImportance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleTermCountDtoCopyWith<ArticleTermCountDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleTermCountDtoCopyWith<$Res> {
  factory $ArticleTermCountDtoCopyWith(
          ArticleTermCountDto value, $Res Function(ArticleTermCountDto) then) =
      _$ArticleTermCountDtoCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      @JsonKey(name: 'article_id') String articleId,
      @JsonKey(name: 'term_id') String termId,
      @JsonKey(name: 'term_importance') num termImportance});
}

/// @nodoc
class _$ArticleTermCountDtoCopyWithImpl<$Res>
    implements $ArticleTermCountDtoCopyWith<$Res> {
  _$ArticleTermCountDtoCopyWithImpl(this._value, this._then);

  final ArticleTermCountDto _value;
  // ignore: unused_field
  final $Res Function(ArticleTermCountDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? articleId = freezed,
    Object? termId = freezed,
    Object? termImportance = freezed,
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
      termId: termId == freezed
          ? _value.termId
          : termId // ignore: cast_nullable_to_non_nullable
              as String,
      termImportance: termImportance == freezed
          ? _value.termImportance
          : termImportance // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
abstract class _$ArticleTermCountDtoCopyWith<$Res>
    implements $ArticleTermCountDtoCopyWith<$Res> {
  factory _$ArticleTermCountDtoCopyWith(_ArticleTermCountDto value,
          $Res Function(_ArticleTermCountDto) then) =
      __$ArticleTermCountDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      @JsonKey(name: 'article_id') String articleId,
      @JsonKey(name: 'term_id') String termId,
      @JsonKey(name: 'term_importance') num termImportance});
}

/// @nodoc
class __$ArticleTermCountDtoCopyWithImpl<$Res>
    extends _$ArticleTermCountDtoCopyWithImpl<$Res>
    implements _$ArticleTermCountDtoCopyWith<$Res> {
  __$ArticleTermCountDtoCopyWithImpl(
      _ArticleTermCountDto _value, $Res Function(_ArticleTermCountDto) _then)
      : super(_value, (v) => _then(v as _ArticleTermCountDto));

  @override
  _ArticleTermCountDto get _value => super._value as _ArticleTermCountDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? articleId = freezed,
    Object? termId = freezed,
    Object? termImportance = freezed,
  }) {
    return _then(_ArticleTermCountDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      articleId: articleId == freezed
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as String,
      termId: termId == freezed
          ? _value.termId
          : termId // ignore: cast_nullable_to_non_nullable
              as String,
      termImportance: termImportance == freezed
          ? _value.termImportance
          : termImportance // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArticleTermCountDto extends _ArticleTermCountDto {
  const _$_ArticleTermCountDto(
      {required this.id,
      @JsonKey(name: 'article_id') required this.articleId,
      @JsonKey(name: 'term_id') required this.termId,
      @JsonKey(name: 'term_importance') required this.termImportance})
      : super._();

  factory _$_ArticleTermCountDto.fromJson(Map<String, dynamic> json) =>
      _$$_ArticleTermCountDtoFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'article_id')
  final String articleId;
  @override
  @JsonKey(name: 'term_id')
  final String termId;
  @override
  @JsonKey(name: 'term_importance')
  final num termImportance;

  @override
  String toString() {
    return 'ArticleTermCountDto(id: $id, articleId: $articleId, termId: $termId, termImportance: $termImportance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArticleTermCountDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.articleId, articleId) ||
                other.articleId == articleId) &&
            (identical(other.termId, termId) || other.termId == termId) &&
            (identical(other.termImportance, termImportance) ||
                other.termImportance == termImportance));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, articleId, termId, termImportance);

  @JsonKey(ignore: true)
  @override
  _$ArticleTermCountDtoCopyWith<_ArticleTermCountDto> get copyWith =>
      __$ArticleTermCountDtoCopyWithImpl<_ArticleTermCountDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticleTermCountDtoToJson(this);
  }
}

abstract class _ArticleTermCountDto extends ArticleTermCountDto {
  const factory _ArticleTermCountDto(
          {required String? id,
          @JsonKey(name: 'article_id') required String articleId,
          @JsonKey(name: 'term_id') required String termId,
          @JsonKey(name: 'term_importance') required num termImportance}) =
      _$_ArticleTermCountDto;
  const _ArticleTermCountDto._() : super._();

  factory _ArticleTermCountDto.fromJson(Map<String, dynamic> json) =
      _$_ArticleTermCountDto.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'article_id')
  String get articleId;
  @override
  @JsonKey(name: 'term_id')
  String get termId;
  @override
  @JsonKey(name: 'term_importance')
  num get termImportance;
  @override
  @JsonKey(ignore: true)
  _$ArticleTermCountDtoCopyWith<_ArticleTermCountDto> get copyWith =>
      throw _privateConstructorUsedError;
}
