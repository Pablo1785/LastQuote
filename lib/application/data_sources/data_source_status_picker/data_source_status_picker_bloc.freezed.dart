// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data_source_status_picker_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DataSourceStatusPickerEventTearOff {
  const _$DataSourceStatusPickerEventTearOff();

  _InitialLoadStarted initialLoadStarted() {
    return const _InitialLoadStarted();
  }

  _DataSourcesReceived dataSourcesReceived(
      Either<DataSourceFailure, KtList<DataSource>> failureOrDataSources) {
    return _DataSourcesReceived(
      failureOrDataSources,
    );
  }

  _LoadStartedStatuses loadStartedStatuses(KtList<DataSource> dataSources) {
    return _LoadStartedStatuses(
      dataSources,
    );
  }

  _DataSourceStatusesReceived dataSourceStatusesReceived(
      KtList<DataSource> dataSources,
      Either<DataSourceFailure, KtList<DataSourceStatus>>
          failureOrDataSourceStatuses) {
    return _DataSourceStatusesReceived(
      dataSources,
      failureOrDataSourceStatuses,
    );
  }

  _StatusUpdated statusUpdated(
      KtList<DataSource> dataSources,
      KtList<DataSourceStatus> dataSourceStatuses,
      DataSourceStatus dataSourceStatus) {
    return _StatusUpdated(
      dataSources,
      dataSourceStatuses,
      dataSourceStatus,
    );
  }
}

/// @nodoc
const $DataSourceStatusPickerEvent = _$DataSourceStatusPickerEventTearOff();

/// @nodoc
mixin _$DataSourceStatusPickerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialLoadStarted,
    required TResult Function(
            Either<DataSourceFailure, KtList<DataSource>> failureOrDataSources)
        dataSourcesReceived,
    required TResult Function(KtList<DataSource> dataSources)
        loadStartedStatuses,
    required TResult Function(
            KtList<DataSource> dataSources,
            Either<DataSourceFailure, KtList<DataSourceStatus>>
                failureOrDataSourceStatuses)
        dataSourceStatusesReceived,
    required TResult Function(
            KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses,
            DataSourceStatus dataSourceStatus)
        statusUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialLoadStarted,
    TResult Function(
            Either<DataSourceFailure, KtList<DataSource>> failureOrDataSources)?
        dataSourcesReceived,
    TResult Function(KtList<DataSource> dataSources)? loadStartedStatuses,
    TResult Function(
            KtList<DataSource> dataSources,
            Either<DataSourceFailure, KtList<DataSourceStatus>>
                failureOrDataSourceStatuses)?
        dataSourceStatusesReceived,
    TResult Function(
            KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses,
            DataSourceStatus dataSourceStatus)?
        statusUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialLoadStarted,
    TResult Function(
            Either<DataSourceFailure, KtList<DataSource>> failureOrDataSources)?
        dataSourcesReceived,
    TResult Function(KtList<DataSource> dataSources)? loadStartedStatuses,
    TResult Function(
            KtList<DataSource> dataSources,
            Either<DataSourceFailure, KtList<DataSourceStatus>>
                failureOrDataSourceStatuses)?
        dataSourceStatusesReceived,
    TResult Function(
            KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses,
            DataSourceStatus dataSourceStatus)?
        statusUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialLoadStarted value) initialLoadStarted,
    required TResult Function(_DataSourcesReceived value) dataSourcesReceived,
    required TResult Function(_LoadStartedStatuses value) loadStartedStatuses,
    required TResult Function(_DataSourceStatusesReceived value)
        dataSourceStatusesReceived,
    required TResult Function(_StatusUpdated value) statusUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialLoadStarted value)? initialLoadStarted,
    TResult Function(_DataSourcesReceived value)? dataSourcesReceived,
    TResult Function(_LoadStartedStatuses value)? loadStartedStatuses,
    TResult Function(_DataSourceStatusesReceived value)?
        dataSourceStatusesReceived,
    TResult Function(_StatusUpdated value)? statusUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialLoadStarted value)? initialLoadStarted,
    TResult Function(_DataSourcesReceived value)? dataSourcesReceived,
    TResult Function(_LoadStartedStatuses value)? loadStartedStatuses,
    TResult Function(_DataSourceStatusesReceived value)?
        dataSourceStatusesReceived,
    TResult Function(_StatusUpdated value)? statusUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataSourceStatusPickerEventCopyWith<$Res> {
  factory $DataSourceStatusPickerEventCopyWith(
          DataSourceStatusPickerEvent value,
          $Res Function(DataSourceStatusPickerEvent) then) =
      _$DataSourceStatusPickerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DataSourceStatusPickerEventCopyWithImpl<$Res>
    implements $DataSourceStatusPickerEventCopyWith<$Res> {
  _$DataSourceStatusPickerEventCopyWithImpl(this._value, this._then);

  final DataSourceStatusPickerEvent _value;
  // ignore: unused_field
  final $Res Function(DataSourceStatusPickerEvent) _then;
}

/// @nodoc
abstract class _$InitialLoadStartedCopyWith<$Res> {
  factory _$InitialLoadStartedCopyWith(
          _InitialLoadStarted value, $Res Function(_InitialLoadStarted) then) =
      __$InitialLoadStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialLoadStartedCopyWithImpl<$Res>
    extends _$DataSourceStatusPickerEventCopyWithImpl<$Res>
    implements _$InitialLoadStartedCopyWith<$Res> {
  __$InitialLoadStartedCopyWithImpl(
      _InitialLoadStarted _value, $Res Function(_InitialLoadStarted) _then)
      : super(_value, (v) => _then(v as _InitialLoadStarted));

  @override
  _InitialLoadStarted get _value => super._value as _InitialLoadStarted;
}

/// @nodoc

class _$_InitialLoadStarted implements _InitialLoadStarted {
  const _$_InitialLoadStarted();

  @override
  String toString() {
    return 'DataSourceStatusPickerEvent.initialLoadStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _InitialLoadStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialLoadStarted,
    required TResult Function(
            Either<DataSourceFailure, KtList<DataSource>> failureOrDataSources)
        dataSourcesReceived,
    required TResult Function(KtList<DataSource> dataSources)
        loadStartedStatuses,
    required TResult Function(
            KtList<DataSource> dataSources,
            Either<DataSourceFailure, KtList<DataSourceStatus>>
                failureOrDataSourceStatuses)
        dataSourceStatusesReceived,
    required TResult Function(
            KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses,
            DataSourceStatus dataSourceStatus)
        statusUpdated,
  }) {
    return initialLoadStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialLoadStarted,
    TResult Function(
            Either<DataSourceFailure, KtList<DataSource>> failureOrDataSources)?
        dataSourcesReceived,
    TResult Function(KtList<DataSource> dataSources)? loadStartedStatuses,
    TResult Function(
            KtList<DataSource> dataSources,
            Either<DataSourceFailure, KtList<DataSourceStatus>>
                failureOrDataSourceStatuses)?
        dataSourceStatusesReceived,
    TResult Function(
            KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses,
            DataSourceStatus dataSourceStatus)?
        statusUpdated,
  }) {
    return initialLoadStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialLoadStarted,
    TResult Function(
            Either<DataSourceFailure, KtList<DataSource>> failureOrDataSources)?
        dataSourcesReceived,
    TResult Function(KtList<DataSource> dataSources)? loadStartedStatuses,
    TResult Function(
            KtList<DataSource> dataSources,
            Either<DataSourceFailure, KtList<DataSourceStatus>>
                failureOrDataSourceStatuses)?
        dataSourceStatusesReceived,
    TResult Function(
            KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses,
            DataSourceStatus dataSourceStatus)?
        statusUpdated,
    required TResult orElse(),
  }) {
    if (initialLoadStarted != null) {
      return initialLoadStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialLoadStarted value) initialLoadStarted,
    required TResult Function(_DataSourcesReceived value) dataSourcesReceived,
    required TResult Function(_LoadStartedStatuses value) loadStartedStatuses,
    required TResult Function(_DataSourceStatusesReceived value)
        dataSourceStatusesReceived,
    required TResult Function(_StatusUpdated value) statusUpdated,
  }) {
    return initialLoadStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialLoadStarted value)? initialLoadStarted,
    TResult Function(_DataSourcesReceived value)? dataSourcesReceived,
    TResult Function(_LoadStartedStatuses value)? loadStartedStatuses,
    TResult Function(_DataSourceStatusesReceived value)?
        dataSourceStatusesReceived,
    TResult Function(_StatusUpdated value)? statusUpdated,
  }) {
    return initialLoadStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialLoadStarted value)? initialLoadStarted,
    TResult Function(_DataSourcesReceived value)? dataSourcesReceived,
    TResult Function(_LoadStartedStatuses value)? loadStartedStatuses,
    TResult Function(_DataSourceStatusesReceived value)?
        dataSourceStatusesReceived,
    TResult Function(_StatusUpdated value)? statusUpdated,
    required TResult orElse(),
  }) {
    if (initialLoadStarted != null) {
      return initialLoadStarted(this);
    }
    return orElse();
  }
}

abstract class _InitialLoadStarted implements DataSourceStatusPickerEvent {
  const factory _InitialLoadStarted() = _$_InitialLoadStarted;
}

/// @nodoc
abstract class _$DataSourcesReceivedCopyWith<$Res> {
  factory _$DataSourcesReceivedCopyWith(_DataSourcesReceived value,
          $Res Function(_DataSourcesReceived) then) =
      __$DataSourcesReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<DataSourceFailure, KtList<DataSource>> failureOrDataSources});
}

/// @nodoc
class __$DataSourcesReceivedCopyWithImpl<$Res>
    extends _$DataSourceStatusPickerEventCopyWithImpl<$Res>
    implements _$DataSourcesReceivedCopyWith<$Res> {
  __$DataSourcesReceivedCopyWithImpl(
      _DataSourcesReceived _value, $Res Function(_DataSourcesReceived) _then)
      : super(_value, (v) => _then(v as _DataSourcesReceived));

  @override
  _DataSourcesReceived get _value => super._value as _DataSourcesReceived;

  @override
  $Res call({
    Object? failureOrDataSources = freezed,
  }) {
    return _then(_DataSourcesReceived(
      failureOrDataSources == freezed
          ? _value.failureOrDataSources
          : failureOrDataSources // ignore: cast_nullable_to_non_nullable
              as Either<DataSourceFailure, KtList<DataSource>>,
    ));
  }
}

/// @nodoc

class _$_DataSourcesReceived implements _DataSourcesReceived {
  const _$_DataSourcesReceived(this.failureOrDataSources);

  @override
  final Either<DataSourceFailure, KtList<DataSource>> failureOrDataSources;

  @override
  String toString() {
    return 'DataSourceStatusPickerEvent.dataSourcesReceived(failureOrDataSources: $failureOrDataSources)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DataSourcesReceived &&
            (identical(other.failureOrDataSources, failureOrDataSources) ||
                other.failureOrDataSources == failureOrDataSources));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrDataSources);

  @JsonKey(ignore: true)
  @override
  _$DataSourcesReceivedCopyWith<_DataSourcesReceived> get copyWith =>
      __$DataSourcesReceivedCopyWithImpl<_DataSourcesReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialLoadStarted,
    required TResult Function(
            Either<DataSourceFailure, KtList<DataSource>> failureOrDataSources)
        dataSourcesReceived,
    required TResult Function(KtList<DataSource> dataSources)
        loadStartedStatuses,
    required TResult Function(
            KtList<DataSource> dataSources,
            Either<DataSourceFailure, KtList<DataSourceStatus>>
                failureOrDataSourceStatuses)
        dataSourceStatusesReceived,
    required TResult Function(
            KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses,
            DataSourceStatus dataSourceStatus)
        statusUpdated,
  }) {
    return dataSourcesReceived(failureOrDataSources);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialLoadStarted,
    TResult Function(
            Either<DataSourceFailure, KtList<DataSource>> failureOrDataSources)?
        dataSourcesReceived,
    TResult Function(KtList<DataSource> dataSources)? loadStartedStatuses,
    TResult Function(
            KtList<DataSource> dataSources,
            Either<DataSourceFailure, KtList<DataSourceStatus>>
                failureOrDataSourceStatuses)?
        dataSourceStatusesReceived,
    TResult Function(
            KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses,
            DataSourceStatus dataSourceStatus)?
        statusUpdated,
  }) {
    return dataSourcesReceived?.call(failureOrDataSources);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialLoadStarted,
    TResult Function(
            Either<DataSourceFailure, KtList<DataSource>> failureOrDataSources)?
        dataSourcesReceived,
    TResult Function(KtList<DataSource> dataSources)? loadStartedStatuses,
    TResult Function(
            KtList<DataSource> dataSources,
            Either<DataSourceFailure, KtList<DataSourceStatus>>
                failureOrDataSourceStatuses)?
        dataSourceStatusesReceived,
    TResult Function(
            KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses,
            DataSourceStatus dataSourceStatus)?
        statusUpdated,
    required TResult orElse(),
  }) {
    if (dataSourcesReceived != null) {
      return dataSourcesReceived(failureOrDataSources);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialLoadStarted value) initialLoadStarted,
    required TResult Function(_DataSourcesReceived value) dataSourcesReceived,
    required TResult Function(_LoadStartedStatuses value) loadStartedStatuses,
    required TResult Function(_DataSourceStatusesReceived value)
        dataSourceStatusesReceived,
    required TResult Function(_StatusUpdated value) statusUpdated,
  }) {
    return dataSourcesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialLoadStarted value)? initialLoadStarted,
    TResult Function(_DataSourcesReceived value)? dataSourcesReceived,
    TResult Function(_LoadStartedStatuses value)? loadStartedStatuses,
    TResult Function(_DataSourceStatusesReceived value)?
        dataSourceStatusesReceived,
    TResult Function(_StatusUpdated value)? statusUpdated,
  }) {
    return dataSourcesReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialLoadStarted value)? initialLoadStarted,
    TResult Function(_DataSourcesReceived value)? dataSourcesReceived,
    TResult Function(_LoadStartedStatuses value)? loadStartedStatuses,
    TResult Function(_DataSourceStatusesReceived value)?
        dataSourceStatusesReceived,
    TResult Function(_StatusUpdated value)? statusUpdated,
    required TResult orElse(),
  }) {
    if (dataSourcesReceived != null) {
      return dataSourcesReceived(this);
    }
    return orElse();
  }
}

abstract class _DataSourcesReceived implements DataSourceStatusPickerEvent {
  const factory _DataSourcesReceived(
          Either<DataSourceFailure, KtList<DataSource>> failureOrDataSources) =
      _$_DataSourcesReceived;

  Either<DataSourceFailure, KtList<DataSource>> get failureOrDataSources;
  @JsonKey(ignore: true)
  _$DataSourcesReceivedCopyWith<_DataSourcesReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadStartedStatusesCopyWith<$Res> {
  factory _$LoadStartedStatusesCopyWith(_LoadStartedStatuses value,
          $Res Function(_LoadStartedStatuses) then) =
      __$LoadStartedStatusesCopyWithImpl<$Res>;
  $Res call({KtList<DataSource> dataSources});
}

/// @nodoc
class __$LoadStartedStatusesCopyWithImpl<$Res>
    extends _$DataSourceStatusPickerEventCopyWithImpl<$Res>
    implements _$LoadStartedStatusesCopyWith<$Res> {
  __$LoadStartedStatusesCopyWithImpl(
      _LoadStartedStatuses _value, $Res Function(_LoadStartedStatuses) _then)
      : super(_value, (v) => _then(v as _LoadStartedStatuses));

  @override
  _LoadStartedStatuses get _value => super._value as _LoadStartedStatuses;

  @override
  $Res call({
    Object? dataSources = freezed,
  }) {
    return _then(_LoadStartedStatuses(
      dataSources == freezed
          ? _value.dataSources
          : dataSources // ignore: cast_nullable_to_non_nullable
              as KtList<DataSource>,
    ));
  }
}

/// @nodoc

class _$_LoadStartedStatuses implements _LoadStartedStatuses {
  const _$_LoadStartedStatuses(this.dataSources);

  @override
  final KtList<DataSource> dataSources;

  @override
  String toString() {
    return 'DataSourceStatusPickerEvent.loadStartedStatuses(dataSources: $dataSources)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadStartedStatuses &&
            (identical(other.dataSources, dataSources) ||
                other.dataSources == dataSources));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dataSources);

  @JsonKey(ignore: true)
  @override
  _$LoadStartedStatusesCopyWith<_LoadStartedStatuses> get copyWith =>
      __$LoadStartedStatusesCopyWithImpl<_LoadStartedStatuses>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialLoadStarted,
    required TResult Function(
            Either<DataSourceFailure, KtList<DataSource>> failureOrDataSources)
        dataSourcesReceived,
    required TResult Function(KtList<DataSource> dataSources)
        loadStartedStatuses,
    required TResult Function(
            KtList<DataSource> dataSources,
            Either<DataSourceFailure, KtList<DataSourceStatus>>
                failureOrDataSourceStatuses)
        dataSourceStatusesReceived,
    required TResult Function(
            KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses,
            DataSourceStatus dataSourceStatus)
        statusUpdated,
  }) {
    return loadStartedStatuses(dataSources);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialLoadStarted,
    TResult Function(
            Either<DataSourceFailure, KtList<DataSource>> failureOrDataSources)?
        dataSourcesReceived,
    TResult Function(KtList<DataSource> dataSources)? loadStartedStatuses,
    TResult Function(
            KtList<DataSource> dataSources,
            Either<DataSourceFailure, KtList<DataSourceStatus>>
                failureOrDataSourceStatuses)?
        dataSourceStatusesReceived,
    TResult Function(
            KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses,
            DataSourceStatus dataSourceStatus)?
        statusUpdated,
  }) {
    return loadStartedStatuses?.call(dataSources);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialLoadStarted,
    TResult Function(
            Either<DataSourceFailure, KtList<DataSource>> failureOrDataSources)?
        dataSourcesReceived,
    TResult Function(KtList<DataSource> dataSources)? loadStartedStatuses,
    TResult Function(
            KtList<DataSource> dataSources,
            Either<DataSourceFailure, KtList<DataSourceStatus>>
                failureOrDataSourceStatuses)?
        dataSourceStatusesReceived,
    TResult Function(
            KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses,
            DataSourceStatus dataSourceStatus)?
        statusUpdated,
    required TResult orElse(),
  }) {
    if (loadStartedStatuses != null) {
      return loadStartedStatuses(dataSources);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialLoadStarted value) initialLoadStarted,
    required TResult Function(_DataSourcesReceived value) dataSourcesReceived,
    required TResult Function(_LoadStartedStatuses value) loadStartedStatuses,
    required TResult Function(_DataSourceStatusesReceived value)
        dataSourceStatusesReceived,
    required TResult Function(_StatusUpdated value) statusUpdated,
  }) {
    return loadStartedStatuses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialLoadStarted value)? initialLoadStarted,
    TResult Function(_DataSourcesReceived value)? dataSourcesReceived,
    TResult Function(_LoadStartedStatuses value)? loadStartedStatuses,
    TResult Function(_DataSourceStatusesReceived value)?
        dataSourceStatusesReceived,
    TResult Function(_StatusUpdated value)? statusUpdated,
  }) {
    return loadStartedStatuses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialLoadStarted value)? initialLoadStarted,
    TResult Function(_DataSourcesReceived value)? dataSourcesReceived,
    TResult Function(_LoadStartedStatuses value)? loadStartedStatuses,
    TResult Function(_DataSourceStatusesReceived value)?
        dataSourceStatusesReceived,
    TResult Function(_StatusUpdated value)? statusUpdated,
    required TResult orElse(),
  }) {
    if (loadStartedStatuses != null) {
      return loadStartedStatuses(this);
    }
    return orElse();
  }
}

abstract class _LoadStartedStatuses implements DataSourceStatusPickerEvent {
  const factory _LoadStartedStatuses(KtList<DataSource> dataSources) =
      _$_LoadStartedStatuses;

  KtList<DataSource> get dataSources;
  @JsonKey(ignore: true)
  _$LoadStartedStatusesCopyWith<_LoadStartedStatuses> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DataSourceStatusesReceivedCopyWith<$Res> {
  factory _$DataSourceStatusesReceivedCopyWith(
          _DataSourceStatusesReceived value,
          $Res Function(_DataSourceStatusesReceived) then) =
      __$DataSourceStatusesReceivedCopyWithImpl<$Res>;
  $Res call(
      {KtList<DataSource> dataSources,
      Either<DataSourceFailure, KtList<DataSourceStatus>>
          failureOrDataSourceStatuses});
}

/// @nodoc
class __$DataSourceStatusesReceivedCopyWithImpl<$Res>
    extends _$DataSourceStatusPickerEventCopyWithImpl<$Res>
    implements _$DataSourceStatusesReceivedCopyWith<$Res> {
  __$DataSourceStatusesReceivedCopyWithImpl(_DataSourceStatusesReceived _value,
      $Res Function(_DataSourceStatusesReceived) _then)
      : super(_value, (v) => _then(v as _DataSourceStatusesReceived));

  @override
  _DataSourceStatusesReceived get _value =>
      super._value as _DataSourceStatusesReceived;

  @override
  $Res call({
    Object? dataSources = freezed,
    Object? failureOrDataSourceStatuses = freezed,
  }) {
    return _then(_DataSourceStatusesReceived(
      dataSources == freezed
          ? _value.dataSources
          : dataSources // ignore: cast_nullable_to_non_nullable
              as KtList<DataSource>,
      failureOrDataSourceStatuses == freezed
          ? _value.failureOrDataSourceStatuses
          : failureOrDataSourceStatuses // ignore: cast_nullable_to_non_nullable
              as Either<DataSourceFailure, KtList<DataSourceStatus>>,
    ));
  }
}

/// @nodoc

class _$_DataSourceStatusesReceived implements _DataSourceStatusesReceived {
  const _$_DataSourceStatusesReceived(
      this.dataSources, this.failureOrDataSourceStatuses);

  @override
  final KtList<DataSource> dataSources;
  @override
  final Either<DataSourceFailure, KtList<DataSourceStatus>>
      failureOrDataSourceStatuses;

  @override
  String toString() {
    return 'DataSourceStatusPickerEvent.dataSourceStatusesReceived(dataSources: $dataSources, failureOrDataSourceStatuses: $failureOrDataSourceStatuses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DataSourceStatusesReceived &&
            (identical(other.dataSources, dataSources) ||
                other.dataSources == dataSources) &&
            (identical(other.failureOrDataSourceStatuses,
                    failureOrDataSourceStatuses) ||
                other.failureOrDataSourceStatuses ==
                    failureOrDataSourceStatuses));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, dataSources, failureOrDataSourceStatuses);

  @JsonKey(ignore: true)
  @override
  _$DataSourceStatusesReceivedCopyWith<_DataSourceStatusesReceived>
      get copyWith => __$DataSourceStatusesReceivedCopyWithImpl<
          _DataSourceStatusesReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialLoadStarted,
    required TResult Function(
            Either<DataSourceFailure, KtList<DataSource>> failureOrDataSources)
        dataSourcesReceived,
    required TResult Function(KtList<DataSource> dataSources)
        loadStartedStatuses,
    required TResult Function(
            KtList<DataSource> dataSources,
            Either<DataSourceFailure, KtList<DataSourceStatus>>
                failureOrDataSourceStatuses)
        dataSourceStatusesReceived,
    required TResult Function(
            KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses,
            DataSourceStatus dataSourceStatus)
        statusUpdated,
  }) {
    return dataSourceStatusesReceived(dataSources, failureOrDataSourceStatuses);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialLoadStarted,
    TResult Function(
            Either<DataSourceFailure, KtList<DataSource>> failureOrDataSources)?
        dataSourcesReceived,
    TResult Function(KtList<DataSource> dataSources)? loadStartedStatuses,
    TResult Function(
            KtList<DataSource> dataSources,
            Either<DataSourceFailure, KtList<DataSourceStatus>>
                failureOrDataSourceStatuses)?
        dataSourceStatusesReceived,
    TResult Function(
            KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses,
            DataSourceStatus dataSourceStatus)?
        statusUpdated,
  }) {
    return dataSourceStatusesReceived?.call(
        dataSources, failureOrDataSourceStatuses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialLoadStarted,
    TResult Function(
            Either<DataSourceFailure, KtList<DataSource>> failureOrDataSources)?
        dataSourcesReceived,
    TResult Function(KtList<DataSource> dataSources)? loadStartedStatuses,
    TResult Function(
            KtList<DataSource> dataSources,
            Either<DataSourceFailure, KtList<DataSourceStatus>>
                failureOrDataSourceStatuses)?
        dataSourceStatusesReceived,
    TResult Function(
            KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses,
            DataSourceStatus dataSourceStatus)?
        statusUpdated,
    required TResult orElse(),
  }) {
    if (dataSourceStatusesReceived != null) {
      return dataSourceStatusesReceived(
          dataSources, failureOrDataSourceStatuses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialLoadStarted value) initialLoadStarted,
    required TResult Function(_DataSourcesReceived value) dataSourcesReceived,
    required TResult Function(_LoadStartedStatuses value) loadStartedStatuses,
    required TResult Function(_DataSourceStatusesReceived value)
        dataSourceStatusesReceived,
    required TResult Function(_StatusUpdated value) statusUpdated,
  }) {
    return dataSourceStatusesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialLoadStarted value)? initialLoadStarted,
    TResult Function(_DataSourcesReceived value)? dataSourcesReceived,
    TResult Function(_LoadStartedStatuses value)? loadStartedStatuses,
    TResult Function(_DataSourceStatusesReceived value)?
        dataSourceStatusesReceived,
    TResult Function(_StatusUpdated value)? statusUpdated,
  }) {
    return dataSourceStatusesReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialLoadStarted value)? initialLoadStarted,
    TResult Function(_DataSourcesReceived value)? dataSourcesReceived,
    TResult Function(_LoadStartedStatuses value)? loadStartedStatuses,
    TResult Function(_DataSourceStatusesReceived value)?
        dataSourceStatusesReceived,
    TResult Function(_StatusUpdated value)? statusUpdated,
    required TResult orElse(),
  }) {
    if (dataSourceStatusesReceived != null) {
      return dataSourceStatusesReceived(this);
    }
    return orElse();
  }
}

abstract class _DataSourceStatusesReceived
    implements DataSourceStatusPickerEvent {
  const factory _DataSourceStatusesReceived(
      KtList<DataSource> dataSources,
      Either<DataSourceFailure, KtList<DataSourceStatus>>
          failureOrDataSourceStatuses) = _$_DataSourceStatusesReceived;

  KtList<DataSource> get dataSources;
  Either<DataSourceFailure, KtList<DataSourceStatus>>
      get failureOrDataSourceStatuses;
  @JsonKey(ignore: true)
  _$DataSourceStatusesReceivedCopyWith<_DataSourceStatusesReceived>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$StatusUpdatedCopyWith<$Res> {
  factory _$StatusUpdatedCopyWith(
          _StatusUpdated value, $Res Function(_StatusUpdated) then) =
      __$StatusUpdatedCopyWithImpl<$Res>;
  $Res call(
      {KtList<DataSource> dataSources,
      KtList<DataSourceStatus> dataSourceStatuses,
      DataSourceStatus dataSourceStatus});

  $DataSourceStatusCopyWith<$Res> get dataSourceStatus;
}

/// @nodoc
class __$StatusUpdatedCopyWithImpl<$Res>
    extends _$DataSourceStatusPickerEventCopyWithImpl<$Res>
    implements _$StatusUpdatedCopyWith<$Res> {
  __$StatusUpdatedCopyWithImpl(
      _StatusUpdated _value, $Res Function(_StatusUpdated) _then)
      : super(_value, (v) => _then(v as _StatusUpdated));

  @override
  _StatusUpdated get _value => super._value as _StatusUpdated;

  @override
  $Res call({
    Object? dataSources = freezed,
    Object? dataSourceStatuses = freezed,
    Object? dataSourceStatus = freezed,
  }) {
    return _then(_StatusUpdated(
      dataSources == freezed
          ? _value.dataSources
          : dataSources // ignore: cast_nullable_to_non_nullable
              as KtList<DataSource>,
      dataSourceStatuses == freezed
          ? _value.dataSourceStatuses
          : dataSourceStatuses // ignore: cast_nullable_to_non_nullable
              as KtList<DataSourceStatus>,
      dataSourceStatus == freezed
          ? _value.dataSourceStatus
          : dataSourceStatus // ignore: cast_nullable_to_non_nullable
              as DataSourceStatus,
    ));
  }

  @override
  $DataSourceStatusCopyWith<$Res> get dataSourceStatus {
    return $DataSourceStatusCopyWith<$Res>(_value.dataSourceStatus, (value) {
      return _then(_value.copyWith(dataSourceStatus: value));
    });
  }
}

/// @nodoc

class _$_StatusUpdated implements _StatusUpdated {
  const _$_StatusUpdated(
      this.dataSources, this.dataSourceStatuses, this.dataSourceStatus);

  @override
  final KtList<DataSource> dataSources;
  @override
  final KtList<DataSourceStatus> dataSourceStatuses;
  @override
  final DataSourceStatus dataSourceStatus;

  @override
  String toString() {
    return 'DataSourceStatusPickerEvent.statusUpdated(dataSources: $dataSources, dataSourceStatuses: $dataSourceStatuses, dataSourceStatus: $dataSourceStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StatusUpdated &&
            (identical(other.dataSources, dataSources) ||
                other.dataSources == dataSources) &&
            (identical(other.dataSourceStatuses, dataSourceStatuses) ||
                other.dataSourceStatuses == dataSourceStatuses) &&
            (identical(other.dataSourceStatus, dataSourceStatus) ||
                other.dataSourceStatus == dataSourceStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, dataSources, dataSourceStatuses, dataSourceStatus);

  @JsonKey(ignore: true)
  @override
  _$StatusUpdatedCopyWith<_StatusUpdated> get copyWith =>
      __$StatusUpdatedCopyWithImpl<_StatusUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialLoadStarted,
    required TResult Function(
            Either<DataSourceFailure, KtList<DataSource>> failureOrDataSources)
        dataSourcesReceived,
    required TResult Function(KtList<DataSource> dataSources)
        loadStartedStatuses,
    required TResult Function(
            KtList<DataSource> dataSources,
            Either<DataSourceFailure, KtList<DataSourceStatus>>
                failureOrDataSourceStatuses)
        dataSourceStatusesReceived,
    required TResult Function(
            KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses,
            DataSourceStatus dataSourceStatus)
        statusUpdated,
  }) {
    return statusUpdated(dataSources, dataSourceStatuses, dataSourceStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialLoadStarted,
    TResult Function(
            Either<DataSourceFailure, KtList<DataSource>> failureOrDataSources)?
        dataSourcesReceived,
    TResult Function(KtList<DataSource> dataSources)? loadStartedStatuses,
    TResult Function(
            KtList<DataSource> dataSources,
            Either<DataSourceFailure, KtList<DataSourceStatus>>
                failureOrDataSourceStatuses)?
        dataSourceStatusesReceived,
    TResult Function(
            KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses,
            DataSourceStatus dataSourceStatus)?
        statusUpdated,
  }) {
    return statusUpdated?.call(
        dataSources, dataSourceStatuses, dataSourceStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialLoadStarted,
    TResult Function(
            Either<DataSourceFailure, KtList<DataSource>> failureOrDataSources)?
        dataSourcesReceived,
    TResult Function(KtList<DataSource> dataSources)? loadStartedStatuses,
    TResult Function(
            KtList<DataSource> dataSources,
            Either<DataSourceFailure, KtList<DataSourceStatus>>
                failureOrDataSourceStatuses)?
        dataSourceStatusesReceived,
    TResult Function(
            KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses,
            DataSourceStatus dataSourceStatus)?
        statusUpdated,
    required TResult orElse(),
  }) {
    if (statusUpdated != null) {
      return statusUpdated(dataSources, dataSourceStatuses, dataSourceStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialLoadStarted value) initialLoadStarted,
    required TResult Function(_DataSourcesReceived value) dataSourcesReceived,
    required TResult Function(_LoadStartedStatuses value) loadStartedStatuses,
    required TResult Function(_DataSourceStatusesReceived value)
        dataSourceStatusesReceived,
    required TResult Function(_StatusUpdated value) statusUpdated,
  }) {
    return statusUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialLoadStarted value)? initialLoadStarted,
    TResult Function(_DataSourcesReceived value)? dataSourcesReceived,
    TResult Function(_LoadStartedStatuses value)? loadStartedStatuses,
    TResult Function(_DataSourceStatusesReceived value)?
        dataSourceStatusesReceived,
    TResult Function(_StatusUpdated value)? statusUpdated,
  }) {
    return statusUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialLoadStarted value)? initialLoadStarted,
    TResult Function(_DataSourcesReceived value)? dataSourcesReceived,
    TResult Function(_LoadStartedStatuses value)? loadStartedStatuses,
    TResult Function(_DataSourceStatusesReceived value)?
        dataSourceStatusesReceived,
    TResult Function(_StatusUpdated value)? statusUpdated,
    required TResult orElse(),
  }) {
    if (statusUpdated != null) {
      return statusUpdated(this);
    }
    return orElse();
  }
}

abstract class _StatusUpdated implements DataSourceStatusPickerEvent {
  const factory _StatusUpdated(
      KtList<DataSource> dataSources,
      KtList<DataSourceStatus> dataSourceStatuses,
      DataSourceStatus dataSourceStatus) = _$_StatusUpdated;

  KtList<DataSource> get dataSources;
  KtList<DataSourceStatus> get dataSourceStatuses;
  DataSourceStatus get dataSourceStatus;
  @JsonKey(ignore: true)
  _$StatusUpdatedCopyWith<_StatusUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$DataSourceStatusPickerStateTearOff {
  const _$DataSourceStatusPickerStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgressSources loadInProgressSources() {
    return const _LoadInProgressSources();
  }

  _LoadSuccessSources loadSuccessSources(KtList<DataSource> dataSources) {
    return _LoadSuccessSources(
      dataSources,
    );
  }

  _LoadFailureSources loadFailureSources(DataSourceFailure dataSourceFailure) {
    return _LoadFailureSources(
      dataSourceFailure,
    );
  }

  _LoadInProgressStatuses loadInProgressStatuses(
      KtList<DataSource> dataSources) {
    return _LoadInProgressStatuses(
      dataSources,
    );
  }

  _LoadSuccessAll loadSuccessAll(KtList<DataSourceStatus> dataSourceStatuses,
      KtList<DataSource> dataSources) {
    return _LoadSuccessAll(
      dataSourceStatuses,
      dataSources,
    );
  }

  _LoadFailureStatuses loadFailureStatuses(
      KtList<DataSource> dataSources, DataSourceFailure dataSourceFailure) {
    return _LoadFailureStatuses(
      dataSources,
      dataSourceFailure,
    );
  }

  _UpdateInProgressStatuses updateInProgressStatuses(
      KtList<DataSource> dataSources,
      KtList<DataSourceStatus> dataSourceStatuses) {
    return _UpdateInProgressStatuses(
      dataSources,
      dataSourceStatuses,
    );
  }

  _UpdateFailureStatuses updateFailureStatuses(
      KtList<DataSource> dataSources,
      KtList<DataSourceStatus> dataSourceStatuses,
      DataSourceFailure dataSourceFailure) {
    return _UpdateFailureStatuses(
      dataSources,
      dataSourceStatuses,
      dataSourceFailure,
    );
  }
}

/// @nodoc
const $DataSourceStatusPickerState = _$DataSourceStatusPickerStateTearOff();

/// @nodoc
mixin _$DataSourceStatusPickerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgressSources,
    required TResult Function(KtList<DataSource> dataSources)
        loadSuccessSources,
    required TResult Function(DataSourceFailure dataSourceFailure)
        loadFailureSources,
    required TResult Function(KtList<DataSource> dataSources)
        loadInProgressStatuses,
    required TResult Function(KtList<DataSourceStatus> dataSourceStatuses,
            KtList<DataSource> dataSources)
        loadSuccessAll,
    required TResult Function(
            KtList<DataSource> dataSources, DataSourceFailure dataSourceFailure)
        loadFailureStatuses,
    required TResult Function(KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses)
        updateInProgressStatuses,
    required TResult Function(
            KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses,
            DataSourceFailure dataSourceFailure)
        updateFailureStatuses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgressSources,
    TResult Function(KtList<DataSource> dataSources)? loadSuccessSources,
    TResult Function(DataSourceFailure dataSourceFailure)? loadFailureSources,
    TResult Function(KtList<DataSource> dataSources)? loadInProgressStatuses,
    TResult Function(KtList<DataSourceStatus> dataSourceStatuses,
            KtList<DataSource> dataSources)?
        loadSuccessAll,
    TResult Function(KtList<DataSource> dataSources,
            DataSourceFailure dataSourceFailure)?
        loadFailureStatuses,
    TResult Function(KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses)?
        updateInProgressStatuses,
    TResult Function(
            KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses,
            DataSourceFailure dataSourceFailure)?
        updateFailureStatuses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgressSources,
    TResult Function(KtList<DataSource> dataSources)? loadSuccessSources,
    TResult Function(DataSourceFailure dataSourceFailure)? loadFailureSources,
    TResult Function(KtList<DataSource> dataSources)? loadInProgressStatuses,
    TResult Function(KtList<DataSourceStatus> dataSourceStatuses,
            KtList<DataSource> dataSources)?
        loadSuccessAll,
    TResult Function(KtList<DataSource> dataSources,
            DataSourceFailure dataSourceFailure)?
        loadFailureStatuses,
    TResult Function(KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses)?
        updateInProgressStatuses,
    TResult Function(
            KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses,
            DataSourceFailure dataSourceFailure)?
        updateFailureStatuses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgressSources value)
        loadInProgressSources,
    required TResult Function(_LoadSuccessSources value) loadSuccessSources,
    required TResult Function(_LoadFailureSources value) loadFailureSources,
    required TResult Function(_LoadInProgressStatuses value)
        loadInProgressStatuses,
    required TResult Function(_LoadSuccessAll value) loadSuccessAll,
    required TResult Function(_LoadFailureStatuses value) loadFailureStatuses,
    required TResult Function(_UpdateInProgressStatuses value)
        updateInProgressStatuses,
    required TResult Function(_UpdateFailureStatuses value)
        updateFailureStatuses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgressSources value)? loadInProgressSources,
    TResult Function(_LoadSuccessSources value)? loadSuccessSources,
    TResult Function(_LoadFailureSources value)? loadFailureSources,
    TResult Function(_LoadInProgressStatuses value)? loadInProgressStatuses,
    TResult Function(_LoadSuccessAll value)? loadSuccessAll,
    TResult Function(_LoadFailureStatuses value)? loadFailureStatuses,
    TResult Function(_UpdateInProgressStatuses value)? updateInProgressStatuses,
    TResult Function(_UpdateFailureStatuses value)? updateFailureStatuses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgressSources value)? loadInProgressSources,
    TResult Function(_LoadSuccessSources value)? loadSuccessSources,
    TResult Function(_LoadFailureSources value)? loadFailureSources,
    TResult Function(_LoadInProgressStatuses value)? loadInProgressStatuses,
    TResult Function(_LoadSuccessAll value)? loadSuccessAll,
    TResult Function(_LoadFailureStatuses value)? loadFailureStatuses,
    TResult Function(_UpdateInProgressStatuses value)? updateInProgressStatuses,
    TResult Function(_UpdateFailureStatuses value)? updateFailureStatuses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataSourceStatusPickerStateCopyWith<$Res> {
  factory $DataSourceStatusPickerStateCopyWith(
          DataSourceStatusPickerState value,
          $Res Function(DataSourceStatusPickerState) then) =
      _$DataSourceStatusPickerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DataSourceStatusPickerStateCopyWithImpl<$Res>
    implements $DataSourceStatusPickerStateCopyWith<$Res> {
  _$DataSourceStatusPickerStateCopyWithImpl(this._value, this._then);

  final DataSourceStatusPickerState _value;
  // ignore: unused_field
  final $Res Function(DataSourceStatusPickerState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$DataSourceStatusPickerStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'DataSourceStatusPickerState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgressSources,
    required TResult Function(KtList<DataSource> dataSources)
        loadSuccessSources,
    required TResult Function(DataSourceFailure dataSourceFailure)
        loadFailureSources,
    required TResult Function(KtList<DataSource> dataSources)
        loadInProgressStatuses,
    required TResult Function(KtList<DataSourceStatus> dataSourceStatuses,
            KtList<DataSource> dataSources)
        loadSuccessAll,
    required TResult Function(
            KtList<DataSource> dataSources, DataSourceFailure dataSourceFailure)
        loadFailureStatuses,
    required TResult Function(KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses)
        updateInProgressStatuses,
    required TResult Function(
            KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses,
            DataSourceFailure dataSourceFailure)
        updateFailureStatuses,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgressSources,
    TResult Function(KtList<DataSource> dataSources)? loadSuccessSources,
    TResult Function(DataSourceFailure dataSourceFailure)? loadFailureSources,
    TResult Function(KtList<DataSource> dataSources)? loadInProgressStatuses,
    TResult Function(KtList<DataSourceStatus> dataSourceStatuses,
            KtList<DataSource> dataSources)?
        loadSuccessAll,
    TResult Function(KtList<DataSource> dataSources,
            DataSourceFailure dataSourceFailure)?
        loadFailureStatuses,
    TResult Function(KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses)?
        updateInProgressStatuses,
    TResult Function(
            KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses,
            DataSourceFailure dataSourceFailure)?
        updateFailureStatuses,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgressSources,
    TResult Function(KtList<DataSource> dataSources)? loadSuccessSources,
    TResult Function(DataSourceFailure dataSourceFailure)? loadFailureSources,
    TResult Function(KtList<DataSource> dataSources)? loadInProgressStatuses,
    TResult Function(KtList<DataSourceStatus> dataSourceStatuses,
            KtList<DataSource> dataSources)?
        loadSuccessAll,
    TResult Function(KtList<DataSource> dataSources,
            DataSourceFailure dataSourceFailure)?
        loadFailureStatuses,
    TResult Function(KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses)?
        updateInProgressStatuses,
    TResult Function(
            KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses,
            DataSourceFailure dataSourceFailure)?
        updateFailureStatuses,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgressSources value)
        loadInProgressSources,
    required TResult Function(_LoadSuccessSources value) loadSuccessSources,
    required TResult Function(_LoadFailureSources value) loadFailureSources,
    required TResult Function(_LoadInProgressStatuses value)
        loadInProgressStatuses,
    required TResult Function(_LoadSuccessAll value) loadSuccessAll,
    required TResult Function(_LoadFailureStatuses value) loadFailureStatuses,
    required TResult Function(_UpdateInProgressStatuses value)
        updateInProgressStatuses,
    required TResult Function(_UpdateFailureStatuses value)
        updateFailureStatuses,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgressSources value)? loadInProgressSources,
    TResult Function(_LoadSuccessSources value)? loadSuccessSources,
    TResult Function(_LoadFailureSources value)? loadFailureSources,
    TResult Function(_LoadInProgressStatuses value)? loadInProgressStatuses,
    TResult Function(_LoadSuccessAll value)? loadSuccessAll,
    TResult Function(_LoadFailureStatuses value)? loadFailureStatuses,
    TResult Function(_UpdateInProgressStatuses value)? updateInProgressStatuses,
    TResult Function(_UpdateFailureStatuses value)? updateFailureStatuses,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgressSources value)? loadInProgressSources,
    TResult Function(_LoadSuccessSources value)? loadSuccessSources,
    TResult Function(_LoadFailureSources value)? loadFailureSources,
    TResult Function(_LoadInProgressStatuses value)? loadInProgressStatuses,
    TResult Function(_LoadSuccessAll value)? loadSuccessAll,
    TResult Function(_LoadFailureStatuses value)? loadFailureStatuses,
    TResult Function(_UpdateInProgressStatuses value)? updateInProgressStatuses,
    TResult Function(_UpdateFailureStatuses value)? updateFailureStatuses,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DataSourceStatusPickerState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressSourcesCopyWith<$Res> {
  factory _$LoadInProgressSourcesCopyWith(_LoadInProgressSources value,
          $Res Function(_LoadInProgressSources) then) =
      __$LoadInProgressSourcesCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressSourcesCopyWithImpl<$Res>
    extends _$DataSourceStatusPickerStateCopyWithImpl<$Res>
    implements _$LoadInProgressSourcesCopyWith<$Res> {
  __$LoadInProgressSourcesCopyWithImpl(_LoadInProgressSources _value,
      $Res Function(_LoadInProgressSources) _then)
      : super(_value, (v) => _then(v as _LoadInProgressSources));

  @override
  _LoadInProgressSources get _value => super._value as _LoadInProgressSources;
}

/// @nodoc

class _$_LoadInProgressSources implements _LoadInProgressSources {
  const _$_LoadInProgressSources();

  @override
  String toString() {
    return 'DataSourceStatusPickerState.loadInProgressSources()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadInProgressSources);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgressSources,
    required TResult Function(KtList<DataSource> dataSources)
        loadSuccessSources,
    required TResult Function(DataSourceFailure dataSourceFailure)
        loadFailureSources,
    required TResult Function(KtList<DataSource> dataSources)
        loadInProgressStatuses,
    required TResult Function(KtList<DataSourceStatus> dataSourceStatuses,
            KtList<DataSource> dataSources)
        loadSuccessAll,
    required TResult Function(
            KtList<DataSource> dataSources, DataSourceFailure dataSourceFailure)
        loadFailureStatuses,
    required TResult Function(KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses)
        updateInProgressStatuses,
    required TResult Function(
            KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses,
            DataSourceFailure dataSourceFailure)
        updateFailureStatuses,
  }) {
    return loadInProgressSources();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgressSources,
    TResult Function(KtList<DataSource> dataSources)? loadSuccessSources,
    TResult Function(DataSourceFailure dataSourceFailure)? loadFailureSources,
    TResult Function(KtList<DataSource> dataSources)? loadInProgressStatuses,
    TResult Function(KtList<DataSourceStatus> dataSourceStatuses,
            KtList<DataSource> dataSources)?
        loadSuccessAll,
    TResult Function(KtList<DataSource> dataSources,
            DataSourceFailure dataSourceFailure)?
        loadFailureStatuses,
    TResult Function(KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses)?
        updateInProgressStatuses,
    TResult Function(
            KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses,
            DataSourceFailure dataSourceFailure)?
        updateFailureStatuses,
  }) {
    return loadInProgressSources?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgressSources,
    TResult Function(KtList<DataSource> dataSources)? loadSuccessSources,
    TResult Function(DataSourceFailure dataSourceFailure)? loadFailureSources,
    TResult Function(KtList<DataSource> dataSources)? loadInProgressStatuses,
    TResult Function(KtList<DataSourceStatus> dataSourceStatuses,
            KtList<DataSource> dataSources)?
        loadSuccessAll,
    TResult Function(KtList<DataSource> dataSources,
            DataSourceFailure dataSourceFailure)?
        loadFailureStatuses,
    TResult Function(KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses)?
        updateInProgressStatuses,
    TResult Function(
            KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses,
            DataSourceFailure dataSourceFailure)?
        updateFailureStatuses,
    required TResult orElse(),
  }) {
    if (loadInProgressSources != null) {
      return loadInProgressSources();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgressSources value)
        loadInProgressSources,
    required TResult Function(_LoadSuccessSources value) loadSuccessSources,
    required TResult Function(_LoadFailureSources value) loadFailureSources,
    required TResult Function(_LoadInProgressStatuses value)
        loadInProgressStatuses,
    required TResult Function(_LoadSuccessAll value) loadSuccessAll,
    required TResult Function(_LoadFailureStatuses value) loadFailureStatuses,
    required TResult Function(_UpdateInProgressStatuses value)
        updateInProgressStatuses,
    required TResult Function(_UpdateFailureStatuses value)
        updateFailureStatuses,
  }) {
    return loadInProgressSources(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgressSources value)? loadInProgressSources,
    TResult Function(_LoadSuccessSources value)? loadSuccessSources,
    TResult Function(_LoadFailureSources value)? loadFailureSources,
    TResult Function(_LoadInProgressStatuses value)? loadInProgressStatuses,
    TResult Function(_LoadSuccessAll value)? loadSuccessAll,
    TResult Function(_LoadFailureStatuses value)? loadFailureStatuses,
    TResult Function(_UpdateInProgressStatuses value)? updateInProgressStatuses,
    TResult Function(_UpdateFailureStatuses value)? updateFailureStatuses,
  }) {
    return loadInProgressSources?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgressSources value)? loadInProgressSources,
    TResult Function(_LoadSuccessSources value)? loadSuccessSources,
    TResult Function(_LoadFailureSources value)? loadFailureSources,
    TResult Function(_LoadInProgressStatuses value)? loadInProgressStatuses,
    TResult Function(_LoadSuccessAll value)? loadSuccessAll,
    TResult Function(_LoadFailureStatuses value)? loadFailureStatuses,
    TResult Function(_UpdateInProgressStatuses value)? updateInProgressStatuses,
    TResult Function(_UpdateFailureStatuses value)? updateFailureStatuses,
    required TResult orElse(),
  }) {
    if (loadInProgressSources != null) {
      return loadInProgressSources(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgressSources implements DataSourceStatusPickerState {
  const factory _LoadInProgressSources() = _$_LoadInProgressSources;
}

/// @nodoc
abstract class _$LoadSuccessSourcesCopyWith<$Res> {
  factory _$LoadSuccessSourcesCopyWith(
          _LoadSuccessSources value, $Res Function(_LoadSuccessSources) then) =
      __$LoadSuccessSourcesCopyWithImpl<$Res>;
  $Res call({KtList<DataSource> dataSources});
}

/// @nodoc
class __$LoadSuccessSourcesCopyWithImpl<$Res>
    extends _$DataSourceStatusPickerStateCopyWithImpl<$Res>
    implements _$LoadSuccessSourcesCopyWith<$Res> {
  __$LoadSuccessSourcesCopyWithImpl(
      _LoadSuccessSources _value, $Res Function(_LoadSuccessSources) _then)
      : super(_value, (v) => _then(v as _LoadSuccessSources));

  @override
  _LoadSuccessSources get _value => super._value as _LoadSuccessSources;

  @override
  $Res call({
    Object? dataSources = freezed,
  }) {
    return _then(_LoadSuccessSources(
      dataSources == freezed
          ? _value.dataSources
          : dataSources // ignore: cast_nullable_to_non_nullable
              as KtList<DataSource>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccessSources implements _LoadSuccessSources {
  const _$_LoadSuccessSources(this.dataSources);

  @override
  final KtList<DataSource> dataSources;

  @override
  String toString() {
    return 'DataSourceStatusPickerState.loadSuccessSources(dataSources: $dataSources)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadSuccessSources &&
            (identical(other.dataSources, dataSources) ||
                other.dataSources == dataSources));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dataSources);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessSourcesCopyWith<_LoadSuccessSources> get copyWith =>
      __$LoadSuccessSourcesCopyWithImpl<_LoadSuccessSources>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgressSources,
    required TResult Function(KtList<DataSource> dataSources)
        loadSuccessSources,
    required TResult Function(DataSourceFailure dataSourceFailure)
        loadFailureSources,
    required TResult Function(KtList<DataSource> dataSources)
        loadInProgressStatuses,
    required TResult Function(KtList<DataSourceStatus> dataSourceStatuses,
            KtList<DataSource> dataSources)
        loadSuccessAll,
    required TResult Function(
            KtList<DataSource> dataSources, DataSourceFailure dataSourceFailure)
        loadFailureStatuses,
    required TResult Function(KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses)
        updateInProgressStatuses,
    required TResult Function(
            KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses,
            DataSourceFailure dataSourceFailure)
        updateFailureStatuses,
  }) {
    return loadSuccessSources(dataSources);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgressSources,
    TResult Function(KtList<DataSource> dataSources)? loadSuccessSources,
    TResult Function(DataSourceFailure dataSourceFailure)? loadFailureSources,
    TResult Function(KtList<DataSource> dataSources)? loadInProgressStatuses,
    TResult Function(KtList<DataSourceStatus> dataSourceStatuses,
            KtList<DataSource> dataSources)?
        loadSuccessAll,
    TResult Function(KtList<DataSource> dataSources,
            DataSourceFailure dataSourceFailure)?
        loadFailureStatuses,
    TResult Function(KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses)?
        updateInProgressStatuses,
    TResult Function(
            KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses,
            DataSourceFailure dataSourceFailure)?
        updateFailureStatuses,
  }) {
    return loadSuccessSources?.call(dataSources);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgressSources,
    TResult Function(KtList<DataSource> dataSources)? loadSuccessSources,
    TResult Function(DataSourceFailure dataSourceFailure)? loadFailureSources,
    TResult Function(KtList<DataSource> dataSources)? loadInProgressStatuses,
    TResult Function(KtList<DataSourceStatus> dataSourceStatuses,
            KtList<DataSource> dataSources)?
        loadSuccessAll,
    TResult Function(KtList<DataSource> dataSources,
            DataSourceFailure dataSourceFailure)?
        loadFailureStatuses,
    TResult Function(KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses)?
        updateInProgressStatuses,
    TResult Function(
            KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses,
            DataSourceFailure dataSourceFailure)?
        updateFailureStatuses,
    required TResult orElse(),
  }) {
    if (loadSuccessSources != null) {
      return loadSuccessSources(dataSources);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgressSources value)
        loadInProgressSources,
    required TResult Function(_LoadSuccessSources value) loadSuccessSources,
    required TResult Function(_LoadFailureSources value) loadFailureSources,
    required TResult Function(_LoadInProgressStatuses value)
        loadInProgressStatuses,
    required TResult Function(_LoadSuccessAll value) loadSuccessAll,
    required TResult Function(_LoadFailureStatuses value) loadFailureStatuses,
    required TResult Function(_UpdateInProgressStatuses value)
        updateInProgressStatuses,
    required TResult Function(_UpdateFailureStatuses value)
        updateFailureStatuses,
  }) {
    return loadSuccessSources(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgressSources value)? loadInProgressSources,
    TResult Function(_LoadSuccessSources value)? loadSuccessSources,
    TResult Function(_LoadFailureSources value)? loadFailureSources,
    TResult Function(_LoadInProgressStatuses value)? loadInProgressStatuses,
    TResult Function(_LoadSuccessAll value)? loadSuccessAll,
    TResult Function(_LoadFailureStatuses value)? loadFailureStatuses,
    TResult Function(_UpdateInProgressStatuses value)? updateInProgressStatuses,
    TResult Function(_UpdateFailureStatuses value)? updateFailureStatuses,
  }) {
    return loadSuccessSources?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgressSources value)? loadInProgressSources,
    TResult Function(_LoadSuccessSources value)? loadSuccessSources,
    TResult Function(_LoadFailureSources value)? loadFailureSources,
    TResult Function(_LoadInProgressStatuses value)? loadInProgressStatuses,
    TResult Function(_LoadSuccessAll value)? loadSuccessAll,
    TResult Function(_LoadFailureStatuses value)? loadFailureStatuses,
    TResult Function(_UpdateInProgressStatuses value)? updateInProgressStatuses,
    TResult Function(_UpdateFailureStatuses value)? updateFailureStatuses,
    required TResult orElse(),
  }) {
    if (loadSuccessSources != null) {
      return loadSuccessSources(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccessSources implements DataSourceStatusPickerState {
  const factory _LoadSuccessSources(KtList<DataSource> dataSources) =
      _$_LoadSuccessSources;

  KtList<DataSource> get dataSources;
  @JsonKey(ignore: true)
  _$LoadSuccessSourcesCopyWith<_LoadSuccessSources> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureSourcesCopyWith<$Res> {
  factory _$LoadFailureSourcesCopyWith(
          _LoadFailureSources value, $Res Function(_LoadFailureSources) then) =
      __$LoadFailureSourcesCopyWithImpl<$Res>;
  $Res call({DataSourceFailure dataSourceFailure});

  $DataSourceFailureCopyWith<$Res> get dataSourceFailure;
}

/// @nodoc
class __$LoadFailureSourcesCopyWithImpl<$Res>
    extends _$DataSourceStatusPickerStateCopyWithImpl<$Res>
    implements _$LoadFailureSourcesCopyWith<$Res> {
  __$LoadFailureSourcesCopyWithImpl(
      _LoadFailureSources _value, $Res Function(_LoadFailureSources) _then)
      : super(_value, (v) => _then(v as _LoadFailureSources));

  @override
  _LoadFailureSources get _value => super._value as _LoadFailureSources;

  @override
  $Res call({
    Object? dataSourceFailure = freezed,
  }) {
    return _then(_LoadFailureSources(
      dataSourceFailure == freezed
          ? _value.dataSourceFailure
          : dataSourceFailure // ignore: cast_nullable_to_non_nullable
              as DataSourceFailure,
    ));
  }

  @override
  $DataSourceFailureCopyWith<$Res> get dataSourceFailure {
    return $DataSourceFailureCopyWith<$Res>(_value.dataSourceFailure, (value) {
      return _then(_value.copyWith(dataSourceFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailureSources implements _LoadFailureSources {
  const _$_LoadFailureSources(this.dataSourceFailure);

  @override
  final DataSourceFailure dataSourceFailure;

  @override
  String toString() {
    return 'DataSourceStatusPickerState.loadFailureSources(dataSourceFailure: $dataSourceFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadFailureSources &&
            (identical(other.dataSourceFailure, dataSourceFailure) ||
                other.dataSourceFailure == dataSourceFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dataSourceFailure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureSourcesCopyWith<_LoadFailureSources> get copyWith =>
      __$LoadFailureSourcesCopyWithImpl<_LoadFailureSources>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgressSources,
    required TResult Function(KtList<DataSource> dataSources)
        loadSuccessSources,
    required TResult Function(DataSourceFailure dataSourceFailure)
        loadFailureSources,
    required TResult Function(KtList<DataSource> dataSources)
        loadInProgressStatuses,
    required TResult Function(KtList<DataSourceStatus> dataSourceStatuses,
            KtList<DataSource> dataSources)
        loadSuccessAll,
    required TResult Function(
            KtList<DataSource> dataSources, DataSourceFailure dataSourceFailure)
        loadFailureStatuses,
    required TResult Function(KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses)
        updateInProgressStatuses,
    required TResult Function(
            KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses,
            DataSourceFailure dataSourceFailure)
        updateFailureStatuses,
  }) {
    return loadFailureSources(dataSourceFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgressSources,
    TResult Function(KtList<DataSource> dataSources)? loadSuccessSources,
    TResult Function(DataSourceFailure dataSourceFailure)? loadFailureSources,
    TResult Function(KtList<DataSource> dataSources)? loadInProgressStatuses,
    TResult Function(KtList<DataSourceStatus> dataSourceStatuses,
            KtList<DataSource> dataSources)?
        loadSuccessAll,
    TResult Function(KtList<DataSource> dataSources,
            DataSourceFailure dataSourceFailure)?
        loadFailureStatuses,
    TResult Function(KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses)?
        updateInProgressStatuses,
    TResult Function(
            KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses,
            DataSourceFailure dataSourceFailure)?
        updateFailureStatuses,
  }) {
    return loadFailureSources?.call(dataSourceFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgressSources,
    TResult Function(KtList<DataSource> dataSources)? loadSuccessSources,
    TResult Function(DataSourceFailure dataSourceFailure)? loadFailureSources,
    TResult Function(KtList<DataSource> dataSources)? loadInProgressStatuses,
    TResult Function(KtList<DataSourceStatus> dataSourceStatuses,
            KtList<DataSource> dataSources)?
        loadSuccessAll,
    TResult Function(KtList<DataSource> dataSources,
            DataSourceFailure dataSourceFailure)?
        loadFailureStatuses,
    TResult Function(KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses)?
        updateInProgressStatuses,
    TResult Function(
            KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses,
            DataSourceFailure dataSourceFailure)?
        updateFailureStatuses,
    required TResult orElse(),
  }) {
    if (loadFailureSources != null) {
      return loadFailureSources(dataSourceFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgressSources value)
        loadInProgressSources,
    required TResult Function(_LoadSuccessSources value) loadSuccessSources,
    required TResult Function(_LoadFailureSources value) loadFailureSources,
    required TResult Function(_LoadInProgressStatuses value)
        loadInProgressStatuses,
    required TResult Function(_LoadSuccessAll value) loadSuccessAll,
    required TResult Function(_LoadFailureStatuses value) loadFailureStatuses,
    required TResult Function(_UpdateInProgressStatuses value)
        updateInProgressStatuses,
    required TResult Function(_UpdateFailureStatuses value)
        updateFailureStatuses,
  }) {
    return loadFailureSources(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgressSources value)? loadInProgressSources,
    TResult Function(_LoadSuccessSources value)? loadSuccessSources,
    TResult Function(_LoadFailureSources value)? loadFailureSources,
    TResult Function(_LoadInProgressStatuses value)? loadInProgressStatuses,
    TResult Function(_LoadSuccessAll value)? loadSuccessAll,
    TResult Function(_LoadFailureStatuses value)? loadFailureStatuses,
    TResult Function(_UpdateInProgressStatuses value)? updateInProgressStatuses,
    TResult Function(_UpdateFailureStatuses value)? updateFailureStatuses,
  }) {
    return loadFailureSources?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgressSources value)? loadInProgressSources,
    TResult Function(_LoadSuccessSources value)? loadSuccessSources,
    TResult Function(_LoadFailureSources value)? loadFailureSources,
    TResult Function(_LoadInProgressStatuses value)? loadInProgressStatuses,
    TResult Function(_LoadSuccessAll value)? loadSuccessAll,
    TResult Function(_LoadFailureStatuses value)? loadFailureStatuses,
    TResult Function(_UpdateInProgressStatuses value)? updateInProgressStatuses,
    TResult Function(_UpdateFailureStatuses value)? updateFailureStatuses,
    required TResult orElse(),
  }) {
    if (loadFailureSources != null) {
      return loadFailureSources(this);
    }
    return orElse();
  }
}

abstract class _LoadFailureSources implements DataSourceStatusPickerState {
  const factory _LoadFailureSources(DataSourceFailure dataSourceFailure) =
      _$_LoadFailureSources;

  DataSourceFailure get dataSourceFailure;
  @JsonKey(ignore: true)
  _$LoadFailureSourcesCopyWith<_LoadFailureSources> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadInProgressStatusesCopyWith<$Res> {
  factory _$LoadInProgressStatusesCopyWith(_LoadInProgressStatuses value,
          $Res Function(_LoadInProgressStatuses) then) =
      __$LoadInProgressStatusesCopyWithImpl<$Res>;
  $Res call({KtList<DataSource> dataSources});
}

/// @nodoc
class __$LoadInProgressStatusesCopyWithImpl<$Res>
    extends _$DataSourceStatusPickerStateCopyWithImpl<$Res>
    implements _$LoadInProgressStatusesCopyWith<$Res> {
  __$LoadInProgressStatusesCopyWithImpl(_LoadInProgressStatuses _value,
      $Res Function(_LoadInProgressStatuses) _then)
      : super(_value, (v) => _then(v as _LoadInProgressStatuses));

  @override
  _LoadInProgressStatuses get _value => super._value as _LoadInProgressStatuses;

  @override
  $Res call({
    Object? dataSources = freezed,
  }) {
    return _then(_LoadInProgressStatuses(
      dataSources == freezed
          ? _value.dataSources
          : dataSources // ignore: cast_nullable_to_non_nullable
              as KtList<DataSource>,
    ));
  }
}

/// @nodoc

class _$_LoadInProgressStatuses implements _LoadInProgressStatuses {
  const _$_LoadInProgressStatuses(this.dataSources);

  @override
  final KtList<DataSource> dataSources;

  @override
  String toString() {
    return 'DataSourceStatusPickerState.loadInProgressStatuses(dataSources: $dataSources)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadInProgressStatuses &&
            (identical(other.dataSources, dataSources) ||
                other.dataSources == dataSources));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dataSources);

  @JsonKey(ignore: true)
  @override
  _$LoadInProgressStatusesCopyWith<_LoadInProgressStatuses> get copyWith =>
      __$LoadInProgressStatusesCopyWithImpl<_LoadInProgressStatuses>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgressSources,
    required TResult Function(KtList<DataSource> dataSources)
        loadSuccessSources,
    required TResult Function(DataSourceFailure dataSourceFailure)
        loadFailureSources,
    required TResult Function(KtList<DataSource> dataSources)
        loadInProgressStatuses,
    required TResult Function(KtList<DataSourceStatus> dataSourceStatuses,
            KtList<DataSource> dataSources)
        loadSuccessAll,
    required TResult Function(
            KtList<DataSource> dataSources, DataSourceFailure dataSourceFailure)
        loadFailureStatuses,
    required TResult Function(KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses)
        updateInProgressStatuses,
    required TResult Function(
            KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses,
            DataSourceFailure dataSourceFailure)
        updateFailureStatuses,
  }) {
    return loadInProgressStatuses(dataSources);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgressSources,
    TResult Function(KtList<DataSource> dataSources)? loadSuccessSources,
    TResult Function(DataSourceFailure dataSourceFailure)? loadFailureSources,
    TResult Function(KtList<DataSource> dataSources)? loadInProgressStatuses,
    TResult Function(KtList<DataSourceStatus> dataSourceStatuses,
            KtList<DataSource> dataSources)?
        loadSuccessAll,
    TResult Function(KtList<DataSource> dataSources,
            DataSourceFailure dataSourceFailure)?
        loadFailureStatuses,
    TResult Function(KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses)?
        updateInProgressStatuses,
    TResult Function(
            KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses,
            DataSourceFailure dataSourceFailure)?
        updateFailureStatuses,
  }) {
    return loadInProgressStatuses?.call(dataSources);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgressSources,
    TResult Function(KtList<DataSource> dataSources)? loadSuccessSources,
    TResult Function(DataSourceFailure dataSourceFailure)? loadFailureSources,
    TResult Function(KtList<DataSource> dataSources)? loadInProgressStatuses,
    TResult Function(KtList<DataSourceStatus> dataSourceStatuses,
            KtList<DataSource> dataSources)?
        loadSuccessAll,
    TResult Function(KtList<DataSource> dataSources,
            DataSourceFailure dataSourceFailure)?
        loadFailureStatuses,
    TResult Function(KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses)?
        updateInProgressStatuses,
    TResult Function(
            KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses,
            DataSourceFailure dataSourceFailure)?
        updateFailureStatuses,
    required TResult orElse(),
  }) {
    if (loadInProgressStatuses != null) {
      return loadInProgressStatuses(dataSources);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgressSources value)
        loadInProgressSources,
    required TResult Function(_LoadSuccessSources value) loadSuccessSources,
    required TResult Function(_LoadFailureSources value) loadFailureSources,
    required TResult Function(_LoadInProgressStatuses value)
        loadInProgressStatuses,
    required TResult Function(_LoadSuccessAll value) loadSuccessAll,
    required TResult Function(_LoadFailureStatuses value) loadFailureStatuses,
    required TResult Function(_UpdateInProgressStatuses value)
        updateInProgressStatuses,
    required TResult Function(_UpdateFailureStatuses value)
        updateFailureStatuses,
  }) {
    return loadInProgressStatuses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgressSources value)? loadInProgressSources,
    TResult Function(_LoadSuccessSources value)? loadSuccessSources,
    TResult Function(_LoadFailureSources value)? loadFailureSources,
    TResult Function(_LoadInProgressStatuses value)? loadInProgressStatuses,
    TResult Function(_LoadSuccessAll value)? loadSuccessAll,
    TResult Function(_LoadFailureStatuses value)? loadFailureStatuses,
    TResult Function(_UpdateInProgressStatuses value)? updateInProgressStatuses,
    TResult Function(_UpdateFailureStatuses value)? updateFailureStatuses,
  }) {
    return loadInProgressStatuses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgressSources value)? loadInProgressSources,
    TResult Function(_LoadSuccessSources value)? loadSuccessSources,
    TResult Function(_LoadFailureSources value)? loadFailureSources,
    TResult Function(_LoadInProgressStatuses value)? loadInProgressStatuses,
    TResult Function(_LoadSuccessAll value)? loadSuccessAll,
    TResult Function(_LoadFailureStatuses value)? loadFailureStatuses,
    TResult Function(_UpdateInProgressStatuses value)? updateInProgressStatuses,
    TResult Function(_UpdateFailureStatuses value)? updateFailureStatuses,
    required TResult orElse(),
  }) {
    if (loadInProgressStatuses != null) {
      return loadInProgressStatuses(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgressStatuses implements DataSourceStatusPickerState {
  const factory _LoadInProgressStatuses(KtList<DataSource> dataSources) =
      _$_LoadInProgressStatuses;

  KtList<DataSource> get dataSources;
  @JsonKey(ignore: true)
  _$LoadInProgressStatusesCopyWith<_LoadInProgressStatuses> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadSuccessAllCopyWith<$Res> {
  factory _$LoadSuccessAllCopyWith(
          _LoadSuccessAll value, $Res Function(_LoadSuccessAll) then) =
      __$LoadSuccessAllCopyWithImpl<$Res>;
  $Res call(
      {KtList<DataSourceStatus> dataSourceStatuses,
      KtList<DataSource> dataSources});
}

/// @nodoc
class __$LoadSuccessAllCopyWithImpl<$Res>
    extends _$DataSourceStatusPickerStateCopyWithImpl<$Res>
    implements _$LoadSuccessAllCopyWith<$Res> {
  __$LoadSuccessAllCopyWithImpl(
      _LoadSuccessAll _value, $Res Function(_LoadSuccessAll) _then)
      : super(_value, (v) => _then(v as _LoadSuccessAll));

  @override
  _LoadSuccessAll get _value => super._value as _LoadSuccessAll;

  @override
  $Res call({
    Object? dataSourceStatuses = freezed,
    Object? dataSources = freezed,
  }) {
    return _then(_LoadSuccessAll(
      dataSourceStatuses == freezed
          ? _value.dataSourceStatuses
          : dataSourceStatuses // ignore: cast_nullable_to_non_nullable
              as KtList<DataSourceStatus>,
      dataSources == freezed
          ? _value.dataSources
          : dataSources // ignore: cast_nullable_to_non_nullable
              as KtList<DataSource>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccessAll implements _LoadSuccessAll {
  const _$_LoadSuccessAll(this.dataSourceStatuses, this.dataSources);

  @override
  final KtList<DataSourceStatus> dataSourceStatuses;
  @override
  final KtList<DataSource> dataSources;

  @override
  String toString() {
    return 'DataSourceStatusPickerState.loadSuccessAll(dataSourceStatuses: $dataSourceStatuses, dataSources: $dataSources)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadSuccessAll &&
            (identical(other.dataSourceStatuses, dataSourceStatuses) ||
                other.dataSourceStatuses == dataSourceStatuses) &&
            (identical(other.dataSources, dataSources) ||
                other.dataSources == dataSources));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dataSourceStatuses, dataSources);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessAllCopyWith<_LoadSuccessAll> get copyWith =>
      __$LoadSuccessAllCopyWithImpl<_LoadSuccessAll>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgressSources,
    required TResult Function(KtList<DataSource> dataSources)
        loadSuccessSources,
    required TResult Function(DataSourceFailure dataSourceFailure)
        loadFailureSources,
    required TResult Function(KtList<DataSource> dataSources)
        loadInProgressStatuses,
    required TResult Function(KtList<DataSourceStatus> dataSourceStatuses,
            KtList<DataSource> dataSources)
        loadSuccessAll,
    required TResult Function(
            KtList<DataSource> dataSources, DataSourceFailure dataSourceFailure)
        loadFailureStatuses,
    required TResult Function(KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses)
        updateInProgressStatuses,
    required TResult Function(
            KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses,
            DataSourceFailure dataSourceFailure)
        updateFailureStatuses,
  }) {
    return loadSuccessAll(dataSourceStatuses, dataSources);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgressSources,
    TResult Function(KtList<DataSource> dataSources)? loadSuccessSources,
    TResult Function(DataSourceFailure dataSourceFailure)? loadFailureSources,
    TResult Function(KtList<DataSource> dataSources)? loadInProgressStatuses,
    TResult Function(KtList<DataSourceStatus> dataSourceStatuses,
            KtList<DataSource> dataSources)?
        loadSuccessAll,
    TResult Function(KtList<DataSource> dataSources,
            DataSourceFailure dataSourceFailure)?
        loadFailureStatuses,
    TResult Function(KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses)?
        updateInProgressStatuses,
    TResult Function(
            KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses,
            DataSourceFailure dataSourceFailure)?
        updateFailureStatuses,
  }) {
    return loadSuccessAll?.call(dataSourceStatuses, dataSources);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgressSources,
    TResult Function(KtList<DataSource> dataSources)? loadSuccessSources,
    TResult Function(DataSourceFailure dataSourceFailure)? loadFailureSources,
    TResult Function(KtList<DataSource> dataSources)? loadInProgressStatuses,
    TResult Function(KtList<DataSourceStatus> dataSourceStatuses,
            KtList<DataSource> dataSources)?
        loadSuccessAll,
    TResult Function(KtList<DataSource> dataSources,
            DataSourceFailure dataSourceFailure)?
        loadFailureStatuses,
    TResult Function(KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses)?
        updateInProgressStatuses,
    TResult Function(
            KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses,
            DataSourceFailure dataSourceFailure)?
        updateFailureStatuses,
    required TResult orElse(),
  }) {
    if (loadSuccessAll != null) {
      return loadSuccessAll(dataSourceStatuses, dataSources);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgressSources value)
        loadInProgressSources,
    required TResult Function(_LoadSuccessSources value) loadSuccessSources,
    required TResult Function(_LoadFailureSources value) loadFailureSources,
    required TResult Function(_LoadInProgressStatuses value)
        loadInProgressStatuses,
    required TResult Function(_LoadSuccessAll value) loadSuccessAll,
    required TResult Function(_LoadFailureStatuses value) loadFailureStatuses,
    required TResult Function(_UpdateInProgressStatuses value)
        updateInProgressStatuses,
    required TResult Function(_UpdateFailureStatuses value)
        updateFailureStatuses,
  }) {
    return loadSuccessAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgressSources value)? loadInProgressSources,
    TResult Function(_LoadSuccessSources value)? loadSuccessSources,
    TResult Function(_LoadFailureSources value)? loadFailureSources,
    TResult Function(_LoadInProgressStatuses value)? loadInProgressStatuses,
    TResult Function(_LoadSuccessAll value)? loadSuccessAll,
    TResult Function(_LoadFailureStatuses value)? loadFailureStatuses,
    TResult Function(_UpdateInProgressStatuses value)? updateInProgressStatuses,
    TResult Function(_UpdateFailureStatuses value)? updateFailureStatuses,
  }) {
    return loadSuccessAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgressSources value)? loadInProgressSources,
    TResult Function(_LoadSuccessSources value)? loadSuccessSources,
    TResult Function(_LoadFailureSources value)? loadFailureSources,
    TResult Function(_LoadInProgressStatuses value)? loadInProgressStatuses,
    TResult Function(_LoadSuccessAll value)? loadSuccessAll,
    TResult Function(_LoadFailureStatuses value)? loadFailureStatuses,
    TResult Function(_UpdateInProgressStatuses value)? updateInProgressStatuses,
    TResult Function(_UpdateFailureStatuses value)? updateFailureStatuses,
    required TResult orElse(),
  }) {
    if (loadSuccessAll != null) {
      return loadSuccessAll(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccessAll implements DataSourceStatusPickerState {
  const factory _LoadSuccessAll(KtList<DataSourceStatus> dataSourceStatuses,
      KtList<DataSource> dataSources) = _$_LoadSuccessAll;

  KtList<DataSourceStatus> get dataSourceStatuses;
  KtList<DataSource> get dataSources;
  @JsonKey(ignore: true)
  _$LoadSuccessAllCopyWith<_LoadSuccessAll> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureStatusesCopyWith<$Res> {
  factory _$LoadFailureStatusesCopyWith(_LoadFailureStatuses value,
          $Res Function(_LoadFailureStatuses) then) =
      __$LoadFailureStatusesCopyWithImpl<$Res>;
  $Res call(
      {KtList<DataSource> dataSources, DataSourceFailure dataSourceFailure});

  $DataSourceFailureCopyWith<$Res> get dataSourceFailure;
}

/// @nodoc
class __$LoadFailureStatusesCopyWithImpl<$Res>
    extends _$DataSourceStatusPickerStateCopyWithImpl<$Res>
    implements _$LoadFailureStatusesCopyWith<$Res> {
  __$LoadFailureStatusesCopyWithImpl(
      _LoadFailureStatuses _value, $Res Function(_LoadFailureStatuses) _then)
      : super(_value, (v) => _then(v as _LoadFailureStatuses));

  @override
  _LoadFailureStatuses get _value => super._value as _LoadFailureStatuses;

  @override
  $Res call({
    Object? dataSources = freezed,
    Object? dataSourceFailure = freezed,
  }) {
    return _then(_LoadFailureStatuses(
      dataSources == freezed
          ? _value.dataSources
          : dataSources // ignore: cast_nullable_to_non_nullable
              as KtList<DataSource>,
      dataSourceFailure == freezed
          ? _value.dataSourceFailure
          : dataSourceFailure // ignore: cast_nullable_to_non_nullable
              as DataSourceFailure,
    ));
  }

  @override
  $DataSourceFailureCopyWith<$Res> get dataSourceFailure {
    return $DataSourceFailureCopyWith<$Res>(_value.dataSourceFailure, (value) {
      return _then(_value.copyWith(dataSourceFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailureStatuses implements _LoadFailureStatuses {
  const _$_LoadFailureStatuses(this.dataSources, this.dataSourceFailure);

  @override
  final KtList<DataSource> dataSources;
  @override
  final DataSourceFailure dataSourceFailure;

  @override
  String toString() {
    return 'DataSourceStatusPickerState.loadFailureStatuses(dataSources: $dataSources, dataSourceFailure: $dataSourceFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadFailureStatuses &&
            (identical(other.dataSources, dataSources) ||
                other.dataSources == dataSources) &&
            (identical(other.dataSourceFailure, dataSourceFailure) ||
                other.dataSourceFailure == dataSourceFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dataSources, dataSourceFailure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureStatusesCopyWith<_LoadFailureStatuses> get copyWith =>
      __$LoadFailureStatusesCopyWithImpl<_LoadFailureStatuses>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgressSources,
    required TResult Function(KtList<DataSource> dataSources)
        loadSuccessSources,
    required TResult Function(DataSourceFailure dataSourceFailure)
        loadFailureSources,
    required TResult Function(KtList<DataSource> dataSources)
        loadInProgressStatuses,
    required TResult Function(KtList<DataSourceStatus> dataSourceStatuses,
            KtList<DataSource> dataSources)
        loadSuccessAll,
    required TResult Function(
            KtList<DataSource> dataSources, DataSourceFailure dataSourceFailure)
        loadFailureStatuses,
    required TResult Function(KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses)
        updateInProgressStatuses,
    required TResult Function(
            KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses,
            DataSourceFailure dataSourceFailure)
        updateFailureStatuses,
  }) {
    return loadFailureStatuses(dataSources, dataSourceFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgressSources,
    TResult Function(KtList<DataSource> dataSources)? loadSuccessSources,
    TResult Function(DataSourceFailure dataSourceFailure)? loadFailureSources,
    TResult Function(KtList<DataSource> dataSources)? loadInProgressStatuses,
    TResult Function(KtList<DataSourceStatus> dataSourceStatuses,
            KtList<DataSource> dataSources)?
        loadSuccessAll,
    TResult Function(KtList<DataSource> dataSources,
            DataSourceFailure dataSourceFailure)?
        loadFailureStatuses,
    TResult Function(KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses)?
        updateInProgressStatuses,
    TResult Function(
            KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses,
            DataSourceFailure dataSourceFailure)?
        updateFailureStatuses,
  }) {
    return loadFailureStatuses?.call(dataSources, dataSourceFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgressSources,
    TResult Function(KtList<DataSource> dataSources)? loadSuccessSources,
    TResult Function(DataSourceFailure dataSourceFailure)? loadFailureSources,
    TResult Function(KtList<DataSource> dataSources)? loadInProgressStatuses,
    TResult Function(KtList<DataSourceStatus> dataSourceStatuses,
            KtList<DataSource> dataSources)?
        loadSuccessAll,
    TResult Function(KtList<DataSource> dataSources,
            DataSourceFailure dataSourceFailure)?
        loadFailureStatuses,
    TResult Function(KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses)?
        updateInProgressStatuses,
    TResult Function(
            KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses,
            DataSourceFailure dataSourceFailure)?
        updateFailureStatuses,
    required TResult orElse(),
  }) {
    if (loadFailureStatuses != null) {
      return loadFailureStatuses(dataSources, dataSourceFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgressSources value)
        loadInProgressSources,
    required TResult Function(_LoadSuccessSources value) loadSuccessSources,
    required TResult Function(_LoadFailureSources value) loadFailureSources,
    required TResult Function(_LoadInProgressStatuses value)
        loadInProgressStatuses,
    required TResult Function(_LoadSuccessAll value) loadSuccessAll,
    required TResult Function(_LoadFailureStatuses value) loadFailureStatuses,
    required TResult Function(_UpdateInProgressStatuses value)
        updateInProgressStatuses,
    required TResult Function(_UpdateFailureStatuses value)
        updateFailureStatuses,
  }) {
    return loadFailureStatuses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgressSources value)? loadInProgressSources,
    TResult Function(_LoadSuccessSources value)? loadSuccessSources,
    TResult Function(_LoadFailureSources value)? loadFailureSources,
    TResult Function(_LoadInProgressStatuses value)? loadInProgressStatuses,
    TResult Function(_LoadSuccessAll value)? loadSuccessAll,
    TResult Function(_LoadFailureStatuses value)? loadFailureStatuses,
    TResult Function(_UpdateInProgressStatuses value)? updateInProgressStatuses,
    TResult Function(_UpdateFailureStatuses value)? updateFailureStatuses,
  }) {
    return loadFailureStatuses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgressSources value)? loadInProgressSources,
    TResult Function(_LoadSuccessSources value)? loadSuccessSources,
    TResult Function(_LoadFailureSources value)? loadFailureSources,
    TResult Function(_LoadInProgressStatuses value)? loadInProgressStatuses,
    TResult Function(_LoadSuccessAll value)? loadSuccessAll,
    TResult Function(_LoadFailureStatuses value)? loadFailureStatuses,
    TResult Function(_UpdateInProgressStatuses value)? updateInProgressStatuses,
    TResult Function(_UpdateFailureStatuses value)? updateFailureStatuses,
    required TResult orElse(),
  }) {
    if (loadFailureStatuses != null) {
      return loadFailureStatuses(this);
    }
    return orElse();
  }
}

abstract class _LoadFailureStatuses implements DataSourceStatusPickerState {
  const factory _LoadFailureStatuses(
          KtList<DataSource> dataSources, DataSourceFailure dataSourceFailure) =
      _$_LoadFailureStatuses;

  KtList<DataSource> get dataSources;
  DataSourceFailure get dataSourceFailure;
  @JsonKey(ignore: true)
  _$LoadFailureStatusesCopyWith<_LoadFailureStatuses> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateInProgressStatusesCopyWith<$Res> {
  factory _$UpdateInProgressStatusesCopyWith(_UpdateInProgressStatuses value,
          $Res Function(_UpdateInProgressStatuses) then) =
      __$UpdateInProgressStatusesCopyWithImpl<$Res>;
  $Res call(
      {KtList<DataSource> dataSources,
      KtList<DataSourceStatus> dataSourceStatuses});
}

/// @nodoc
class __$UpdateInProgressStatusesCopyWithImpl<$Res>
    extends _$DataSourceStatusPickerStateCopyWithImpl<$Res>
    implements _$UpdateInProgressStatusesCopyWith<$Res> {
  __$UpdateInProgressStatusesCopyWithImpl(_UpdateInProgressStatuses _value,
      $Res Function(_UpdateInProgressStatuses) _then)
      : super(_value, (v) => _then(v as _UpdateInProgressStatuses));

  @override
  _UpdateInProgressStatuses get _value =>
      super._value as _UpdateInProgressStatuses;

  @override
  $Res call({
    Object? dataSources = freezed,
    Object? dataSourceStatuses = freezed,
  }) {
    return _then(_UpdateInProgressStatuses(
      dataSources == freezed
          ? _value.dataSources
          : dataSources // ignore: cast_nullable_to_non_nullable
              as KtList<DataSource>,
      dataSourceStatuses == freezed
          ? _value.dataSourceStatuses
          : dataSourceStatuses // ignore: cast_nullable_to_non_nullable
              as KtList<DataSourceStatus>,
    ));
  }
}

/// @nodoc

class _$_UpdateInProgressStatuses implements _UpdateInProgressStatuses {
  const _$_UpdateInProgressStatuses(this.dataSources, this.dataSourceStatuses);

  @override
  final KtList<DataSource> dataSources;
  @override
  final KtList<DataSourceStatus> dataSourceStatuses;

  @override
  String toString() {
    return 'DataSourceStatusPickerState.updateInProgressStatuses(dataSources: $dataSources, dataSourceStatuses: $dataSourceStatuses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateInProgressStatuses &&
            (identical(other.dataSources, dataSources) ||
                other.dataSources == dataSources) &&
            (identical(other.dataSourceStatuses, dataSourceStatuses) ||
                other.dataSourceStatuses == dataSourceStatuses));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dataSources, dataSourceStatuses);

  @JsonKey(ignore: true)
  @override
  _$UpdateInProgressStatusesCopyWith<_UpdateInProgressStatuses> get copyWith =>
      __$UpdateInProgressStatusesCopyWithImpl<_UpdateInProgressStatuses>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgressSources,
    required TResult Function(KtList<DataSource> dataSources)
        loadSuccessSources,
    required TResult Function(DataSourceFailure dataSourceFailure)
        loadFailureSources,
    required TResult Function(KtList<DataSource> dataSources)
        loadInProgressStatuses,
    required TResult Function(KtList<DataSourceStatus> dataSourceStatuses,
            KtList<DataSource> dataSources)
        loadSuccessAll,
    required TResult Function(
            KtList<DataSource> dataSources, DataSourceFailure dataSourceFailure)
        loadFailureStatuses,
    required TResult Function(KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses)
        updateInProgressStatuses,
    required TResult Function(
            KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses,
            DataSourceFailure dataSourceFailure)
        updateFailureStatuses,
  }) {
    return updateInProgressStatuses(dataSources, dataSourceStatuses);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgressSources,
    TResult Function(KtList<DataSource> dataSources)? loadSuccessSources,
    TResult Function(DataSourceFailure dataSourceFailure)? loadFailureSources,
    TResult Function(KtList<DataSource> dataSources)? loadInProgressStatuses,
    TResult Function(KtList<DataSourceStatus> dataSourceStatuses,
            KtList<DataSource> dataSources)?
        loadSuccessAll,
    TResult Function(KtList<DataSource> dataSources,
            DataSourceFailure dataSourceFailure)?
        loadFailureStatuses,
    TResult Function(KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses)?
        updateInProgressStatuses,
    TResult Function(
            KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses,
            DataSourceFailure dataSourceFailure)?
        updateFailureStatuses,
  }) {
    return updateInProgressStatuses?.call(dataSources, dataSourceStatuses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgressSources,
    TResult Function(KtList<DataSource> dataSources)? loadSuccessSources,
    TResult Function(DataSourceFailure dataSourceFailure)? loadFailureSources,
    TResult Function(KtList<DataSource> dataSources)? loadInProgressStatuses,
    TResult Function(KtList<DataSourceStatus> dataSourceStatuses,
            KtList<DataSource> dataSources)?
        loadSuccessAll,
    TResult Function(KtList<DataSource> dataSources,
            DataSourceFailure dataSourceFailure)?
        loadFailureStatuses,
    TResult Function(KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses)?
        updateInProgressStatuses,
    TResult Function(
            KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses,
            DataSourceFailure dataSourceFailure)?
        updateFailureStatuses,
    required TResult orElse(),
  }) {
    if (updateInProgressStatuses != null) {
      return updateInProgressStatuses(dataSources, dataSourceStatuses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgressSources value)
        loadInProgressSources,
    required TResult Function(_LoadSuccessSources value) loadSuccessSources,
    required TResult Function(_LoadFailureSources value) loadFailureSources,
    required TResult Function(_LoadInProgressStatuses value)
        loadInProgressStatuses,
    required TResult Function(_LoadSuccessAll value) loadSuccessAll,
    required TResult Function(_LoadFailureStatuses value) loadFailureStatuses,
    required TResult Function(_UpdateInProgressStatuses value)
        updateInProgressStatuses,
    required TResult Function(_UpdateFailureStatuses value)
        updateFailureStatuses,
  }) {
    return updateInProgressStatuses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgressSources value)? loadInProgressSources,
    TResult Function(_LoadSuccessSources value)? loadSuccessSources,
    TResult Function(_LoadFailureSources value)? loadFailureSources,
    TResult Function(_LoadInProgressStatuses value)? loadInProgressStatuses,
    TResult Function(_LoadSuccessAll value)? loadSuccessAll,
    TResult Function(_LoadFailureStatuses value)? loadFailureStatuses,
    TResult Function(_UpdateInProgressStatuses value)? updateInProgressStatuses,
    TResult Function(_UpdateFailureStatuses value)? updateFailureStatuses,
  }) {
    return updateInProgressStatuses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgressSources value)? loadInProgressSources,
    TResult Function(_LoadSuccessSources value)? loadSuccessSources,
    TResult Function(_LoadFailureSources value)? loadFailureSources,
    TResult Function(_LoadInProgressStatuses value)? loadInProgressStatuses,
    TResult Function(_LoadSuccessAll value)? loadSuccessAll,
    TResult Function(_LoadFailureStatuses value)? loadFailureStatuses,
    TResult Function(_UpdateInProgressStatuses value)? updateInProgressStatuses,
    TResult Function(_UpdateFailureStatuses value)? updateFailureStatuses,
    required TResult orElse(),
  }) {
    if (updateInProgressStatuses != null) {
      return updateInProgressStatuses(this);
    }
    return orElse();
  }
}

abstract class _UpdateInProgressStatuses
    implements DataSourceStatusPickerState {
  const factory _UpdateInProgressStatuses(KtList<DataSource> dataSources,
          KtList<DataSourceStatus> dataSourceStatuses) =
      _$_UpdateInProgressStatuses;

  KtList<DataSource> get dataSources;
  KtList<DataSourceStatus> get dataSourceStatuses;
  @JsonKey(ignore: true)
  _$UpdateInProgressStatusesCopyWith<_UpdateInProgressStatuses> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateFailureStatusesCopyWith<$Res> {
  factory _$UpdateFailureStatusesCopyWith(_UpdateFailureStatuses value,
          $Res Function(_UpdateFailureStatuses) then) =
      __$UpdateFailureStatusesCopyWithImpl<$Res>;
  $Res call(
      {KtList<DataSource> dataSources,
      KtList<DataSourceStatus> dataSourceStatuses,
      DataSourceFailure dataSourceFailure});

  $DataSourceFailureCopyWith<$Res> get dataSourceFailure;
}

/// @nodoc
class __$UpdateFailureStatusesCopyWithImpl<$Res>
    extends _$DataSourceStatusPickerStateCopyWithImpl<$Res>
    implements _$UpdateFailureStatusesCopyWith<$Res> {
  __$UpdateFailureStatusesCopyWithImpl(_UpdateFailureStatuses _value,
      $Res Function(_UpdateFailureStatuses) _then)
      : super(_value, (v) => _then(v as _UpdateFailureStatuses));

  @override
  _UpdateFailureStatuses get _value => super._value as _UpdateFailureStatuses;

  @override
  $Res call({
    Object? dataSources = freezed,
    Object? dataSourceStatuses = freezed,
    Object? dataSourceFailure = freezed,
  }) {
    return _then(_UpdateFailureStatuses(
      dataSources == freezed
          ? _value.dataSources
          : dataSources // ignore: cast_nullable_to_non_nullable
              as KtList<DataSource>,
      dataSourceStatuses == freezed
          ? _value.dataSourceStatuses
          : dataSourceStatuses // ignore: cast_nullable_to_non_nullable
              as KtList<DataSourceStatus>,
      dataSourceFailure == freezed
          ? _value.dataSourceFailure
          : dataSourceFailure // ignore: cast_nullable_to_non_nullable
              as DataSourceFailure,
    ));
  }

  @override
  $DataSourceFailureCopyWith<$Res> get dataSourceFailure {
    return $DataSourceFailureCopyWith<$Res>(_value.dataSourceFailure, (value) {
      return _then(_value.copyWith(dataSourceFailure: value));
    });
  }
}

/// @nodoc

class _$_UpdateFailureStatuses implements _UpdateFailureStatuses {
  const _$_UpdateFailureStatuses(
      this.dataSources, this.dataSourceStatuses, this.dataSourceFailure);

  @override
  final KtList<DataSource> dataSources;
  @override
  final KtList<DataSourceStatus> dataSourceStatuses;
  @override
  final DataSourceFailure dataSourceFailure;

  @override
  String toString() {
    return 'DataSourceStatusPickerState.updateFailureStatuses(dataSources: $dataSources, dataSourceStatuses: $dataSourceStatuses, dataSourceFailure: $dataSourceFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateFailureStatuses &&
            (identical(other.dataSources, dataSources) ||
                other.dataSources == dataSources) &&
            (identical(other.dataSourceStatuses, dataSourceStatuses) ||
                other.dataSourceStatuses == dataSourceStatuses) &&
            (identical(other.dataSourceFailure, dataSourceFailure) ||
                other.dataSourceFailure == dataSourceFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, dataSources, dataSourceStatuses, dataSourceFailure);

  @JsonKey(ignore: true)
  @override
  _$UpdateFailureStatusesCopyWith<_UpdateFailureStatuses> get copyWith =>
      __$UpdateFailureStatusesCopyWithImpl<_UpdateFailureStatuses>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgressSources,
    required TResult Function(KtList<DataSource> dataSources)
        loadSuccessSources,
    required TResult Function(DataSourceFailure dataSourceFailure)
        loadFailureSources,
    required TResult Function(KtList<DataSource> dataSources)
        loadInProgressStatuses,
    required TResult Function(KtList<DataSourceStatus> dataSourceStatuses,
            KtList<DataSource> dataSources)
        loadSuccessAll,
    required TResult Function(
            KtList<DataSource> dataSources, DataSourceFailure dataSourceFailure)
        loadFailureStatuses,
    required TResult Function(KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses)
        updateInProgressStatuses,
    required TResult Function(
            KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses,
            DataSourceFailure dataSourceFailure)
        updateFailureStatuses,
  }) {
    return updateFailureStatuses(
        dataSources, dataSourceStatuses, dataSourceFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgressSources,
    TResult Function(KtList<DataSource> dataSources)? loadSuccessSources,
    TResult Function(DataSourceFailure dataSourceFailure)? loadFailureSources,
    TResult Function(KtList<DataSource> dataSources)? loadInProgressStatuses,
    TResult Function(KtList<DataSourceStatus> dataSourceStatuses,
            KtList<DataSource> dataSources)?
        loadSuccessAll,
    TResult Function(KtList<DataSource> dataSources,
            DataSourceFailure dataSourceFailure)?
        loadFailureStatuses,
    TResult Function(KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses)?
        updateInProgressStatuses,
    TResult Function(
            KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses,
            DataSourceFailure dataSourceFailure)?
        updateFailureStatuses,
  }) {
    return updateFailureStatuses?.call(
        dataSources, dataSourceStatuses, dataSourceFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgressSources,
    TResult Function(KtList<DataSource> dataSources)? loadSuccessSources,
    TResult Function(DataSourceFailure dataSourceFailure)? loadFailureSources,
    TResult Function(KtList<DataSource> dataSources)? loadInProgressStatuses,
    TResult Function(KtList<DataSourceStatus> dataSourceStatuses,
            KtList<DataSource> dataSources)?
        loadSuccessAll,
    TResult Function(KtList<DataSource> dataSources,
            DataSourceFailure dataSourceFailure)?
        loadFailureStatuses,
    TResult Function(KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses)?
        updateInProgressStatuses,
    TResult Function(
            KtList<DataSource> dataSources,
            KtList<DataSourceStatus> dataSourceStatuses,
            DataSourceFailure dataSourceFailure)?
        updateFailureStatuses,
    required TResult orElse(),
  }) {
    if (updateFailureStatuses != null) {
      return updateFailureStatuses(
          dataSources, dataSourceStatuses, dataSourceFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgressSources value)
        loadInProgressSources,
    required TResult Function(_LoadSuccessSources value) loadSuccessSources,
    required TResult Function(_LoadFailureSources value) loadFailureSources,
    required TResult Function(_LoadInProgressStatuses value)
        loadInProgressStatuses,
    required TResult Function(_LoadSuccessAll value) loadSuccessAll,
    required TResult Function(_LoadFailureStatuses value) loadFailureStatuses,
    required TResult Function(_UpdateInProgressStatuses value)
        updateInProgressStatuses,
    required TResult Function(_UpdateFailureStatuses value)
        updateFailureStatuses,
  }) {
    return updateFailureStatuses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgressSources value)? loadInProgressSources,
    TResult Function(_LoadSuccessSources value)? loadSuccessSources,
    TResult Function(_LoadFailureSources value)? loadFailureSources,
    TResult Function(_LoadInProgressStatuses value)? loadInProgressStatuses,
    TResult Function(_LoadSuccessAll value)? loadSuccessAll,
    TResult Function(_LoadFailureStatuses value)? loadFailureStatuses,
    TResult Function(_UpdateInProgressStatuses value)? updateInProgressStatuses,
    TResult Function(_UpdateFailureStatuses value)? updateFailureStatuses,
  }) {
    return updateFailureStatuses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgressSources value)? loadInProgressSources,
    TResult Function(_LoadSuccessSources value)? loadSuccessSources,
    TResult Function(_LoadFailureSources value)? loadFailureSources,
    TResult Function(_LoadInProgressStatuses value)? loadInProgressStatuses,
    TResult Function(_LoadSuccessAll value)? loadSuccessAll,
    TResult Function(_LoadFailureStatuses value)? loadFailureStatuses,
    TResult Function(_UpdateInProgressStatuses value)? updateInProgressStatuses,
    TResult Function(_UpdateFailureStatuses value)? updateFailureStatuses,
    required TResult orElse(),
  }) {
    if (updateFailureStatuses != null) {
      return updateFailureStatuses(this);
    }
    return orElse();
  }
}

abstract class _UpdateFailureStatuses implements DataSourceStatusPickerState {
  const factory _UpdateFailureStatuses(
      KtList<DataSource> dataSources,
      KtList<DataSourceStatus> dataSourceStatuses,
      DataSourceFailure dataSourceFailure) = _$_UpdateFailureStatuses;

  KtList<DataSource> get dataSources;
  KtList<DataSourceStatus> get dataSourceStatuses;
  DataSourceFailure get dataSourceFailure;
  @JsonKey(ignore: true)
  _$UpdateFailureStatusesCopyWith<_UpdateFailureStatuses> get copyWith =>
      throw _privateConstructorUsedError;
}
