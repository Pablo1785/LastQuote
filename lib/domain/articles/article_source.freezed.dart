// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'article_source.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ArticleSourceTearOff {
  const _$ArticleSourceTearOff();

  _ArticleSource call(
      {required UniqueId id,
      required ArticleSourceName name,
      required ArticleSourceUrl url}) {
    return _ArticleSource(
      id: id,
      name: name,
      url: url,
    );
  }
}

/// @nodoc
const $ArticleSource = _$ArticleSourceTearOff();

/// @nodoc
mixin _$ArticleSource {
  UniqueId get id => throw _privateConstructorUsedError;
  ArticleSourceName get name => throw _privateConstructorUsedError;
  ArticleSourceUrl get url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticleSourceCopyWith<ArticleSource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleSourceCopyWith<$Res> {
  factory $ArticleSourceCopyWith(
          ArticleSource value, $Res Function(ArticleSource) then) =
      _$ArticleSourceCopyWithImpl<$Res>;
  $Res call({UniqueId id, ArticleSourceName name, ArticleSourceUrl url});
}

/// @nodoc
class _$ArticleSourceCopyWithImpl<$Res>
    implements $ArticleSourceCopyWith<$Res> {
  _$ArticleSourceCopyWithImpl(this._value, this._then);

  final ArticleSource _value;
  // ignore: unused_field
  final $Res Function(ArticleSource) _then;

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
              as ArticleSourceName,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as ArticleSourceUrl,
    ));
  }
}

/// @nodoc
abstract class _$ArticleSourceCopyWith<$Res>
    implements $ArticleSourceCopyWith<$Res> {
  factory _$ArticleSourceCopyWith(
          _ArticleSource value, $Res Function(_ArticleSource) then) =
      __$ArticleSourceCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, ArticleSourceName name, ArticleSourceUrl url});
}

/// @nodoc
class __$ArticleSourceCopyWithImpl<$Res>
    extends _$ArticleSourceCopyWithImpl<$Res>
    implements _$ArticleSourceCopyWith<$Res> {
  __$ArticleSourceCopyWithImpl(
      _ArticleSource _value, $Res Function(_ArticleSource) _then)
      : super(_value, (v) => _then(v as _ArticleSource));

  @override
  _ArticleSource get _value => super._value as _ArticleSource;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_ArticleSource(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as ArticleSourceName,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as ArticleSourceUrl,
    ));
  }
}

/// @nodoc

class _$_ArticleSource implements _ArticleSource {
  const _$_ArticleSource(
      {required this.id, required this.name, required this.url});

  @override
  final UniqueId id;
  @override
  final ArticleSourceName name;
  @override
  final ArticleSourceUrl url;

  @override
  String toString() {
    return 'ArticleSource(id: $id, name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArticleSource &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, url);

  @JsonKey(ignore: true)
  @override
  _$ArticleSourceCopyWith<_ArticleSource> get copyWith =>
      __$ArticleSourceCopyWithImpl<_ArticleSource>(this, _$identity);
}

abstract class _ArticleSource implements ArticleSource {
  const factory _ArticleSource(
      {required UniqueId id,
      required ArticleSourceName name,
      required ArticleSourceUrl url}) = _$_ArticleSource;

  @override
  UniqueId get id;
  @override
  ArticleSourceName get name;
  @override
  ArticleSourceUrl get url;
  @override
  @JsonKey(ignore: true)
  _$ArticleSourceCopyWith<_ArticleSource> get copyWith =>
      throw _privateConstructorUsedError;
}
