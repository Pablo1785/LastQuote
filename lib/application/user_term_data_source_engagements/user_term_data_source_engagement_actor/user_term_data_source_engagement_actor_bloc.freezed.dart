// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_term_data_source_engagement_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserTermDataSourceEngagementActorEventTearOff {
  const _$UserTermDataSourceEngagementActorEventTearOff();

  _AddedElementToUpdate addedElementToUpdate(String termId,
      bool isInitialInterest, Map<String, bool> termInitialInterestStatuses) {
    return _AddedElementToUpdate(
      termId,
      isInitialInterest,
      termInitialInterestStatuses,
    );
  }

  _RemovedElementFromUpdate removedElementFromUpdate(
      String termId, Map<String, bool> termInitialInterestStatuses) {
    return _RemovedElementFromUpdate(
      termId,
      termInitialInterestStatuses,
    );
  }

  _BatchUpdateInitialInterestsStarted batchUpdateInitialInterestsStarted(
      Map<String, bool> termInitialInterestStatuses) {
    return _BatchUpdateInitialInterestsStarted(
      termInitialInterestStatuses,
    );
  }
}

/// @nodoc
const $UserTermDataSourceEngagementActorEvent =
    _$UserTermDataSourceEngagementActorEventTearOff();

/// @nodoc
mixin _$UserTermDataSourceEngagementActorEvent {
  Map<String, bool> get termInitialInterestStatuses =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String termId, bool isInitialInterest,
            Map<String, bool> termInitialInterestStatuses)
        addedElementToUpdate,
    required TResult Function(
            String termId, Map<String, bool> termInitialInterestStatuses)
        removedElementFromUpdate,
    required TResult Function(Map<String, bool> termInitialInterestStatuses)
        batchUpdateInitialInterestsStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String termId, bool isInitialInterest,
            Map<String, bool> termInitialInterestStatuses)?
        addedElementToUpdate,
    TResult Function(
            String termId, Map<String, bool> termInitialInterestStatuses)?
        removedElementFromUpdate,
    TResult Function(Map<String, bool> termInitialInterestStatuses)?
        batchUpdateInitialInterestsStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String termId, bool isInitialInterest,
            Map<String, bool> termInitialInterestStatuses)?
        addedElementToUpdate,
    TResult Function(
            String termId, Map<String, bool> termInitialInterestStatuses)?
        removedElementFromUpdate,
    TResult Function(Map<String, bool> termInitialInterestStatuses)?
        batchUpdateInitialInterestsStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddedElementToUpdate value) addedElementToUpdate,
    required TResult Function(_RemovedElementFromUpdate value)
        removedElementFromUpdate,
    required TResult Function(_BatchUpdateInitialInterestsStarted value)
        batchUpdateInitialInterestsStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddedElementToUpdate value)? addedElementToUpdate,
    TResult Function(_RemovedElementFromUpdate value)? removedElementFromUpdate,
    TResult Function(_BatchUpdateInitialInterestsStarted value)?
        batchUpdateInitialInterestsStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddedElementToUpdate value)? addedElementToUpdate,
    TResult Function(_RemovedElementFromUpdate value)? removedElementFromUpdate,
    TResult Function(_BatchUpdateInitialInterestsStarted value)?
        batchUpdateInitialInterestsStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserTermDataSourceEngagementActorEventCopyWith<
          UserTermDataSourceEngagementActorEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTermDataSourceEngagementActorEventCopyWith<$Res> {
  factory $UserTermDataSourceEngagementActorEventCopyWith(
          UserTermDataSourceEngagementActorEvent value,
          $Res Function(UserTermDataSourceEngagementActorEvent) then) =
      _$UserTermDataSourceEngagementActorEventCopyWithImpl<$Res>;
  $Res call({Map<String, bool> termInitialInterestStatuses});
}

/// @nodoc
class _$UserTermDataSourceEngagementActorEventCopyWithImpl<$Res>
    implements $UserTermDataSourceEngagementActorEventCopyWith<$Res> {
  _$UserTermDataSourceEngagementActorEventCopyWithImpl(this._value, this._then);

  final UserTermDataSourceEngagementActorEvent _value;
  // ignore: unused_field
  final $Res Function(UserTermDataSourceEngagementActorEvent) _then;

  @override
  $Res call({
    Object? termInitialInterestStatuses = freezed,
  }) {
    return _then(_value.copyWith(
      termInitialInterestStatuses: termInitialInterestStatuses == freezed
          ? _value.termInitialInterestStatuses
          : termInitialInterestStatuses // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
    ));
  }
}

/// @nodoc
abstract class _$AddedElementToUpdateCopyWith<$Res>
    implements $UserTermDataSourceEngagementActorEventCopyWith<$Res> {
  factory _$AddedElementToUpdateCopyWith(_AddedElementToUpdate value,
          $Res Function(_AddedElementToUpdate) then) =
      __$AddedElementToUpdateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String termId,
      bool isInitialInterest,
      Map<String, bool> termInitialInterestStatuses});
}

/// @nodoc
class __$AddedElementToUpdateCopyWithImpl<$Res>
    extends _$UserTermDataSourceEngagementActorEventCopyWithImpl<$Res>
    implements _$AddedElementToUpdateCopyWith<$Res> {
  __$AddedElementToUpdateCopyWithImpl(
      _AddedElementToUpdate _value, $Res Function(_AddedElementToUpdate) _then)
      : super(_value, (v) => _then(v as _AddedElementToUpdate));

  @override
  _AddedElementToUpdate get _value => super._value as _AddedElementToUpdate;

  @override
  $Res call({
    Object? termId = freezed,
    Object? isInitialInterest = freezed,
    Object? termInitialInterestStatuses = freezed,
  }) {
    return _then(_AddedElementToUpdate(
      termId == freezed
          ? _value.termId
          : termId // ignore: cast_nullable_to_non_nullable
              as String,
      isInitialInterest == freezed
          ? _value.isInitialInterest
          : isInitialInterest // ignore: cast_nullable_to_non_nullable
              as bool,
      termInitialInterestStatuses == freezed
          ? _value.termInitialInterestStatuses
          : termInitialInterestStatuses // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
    ));
  }
}

/// @nodoc

class _$_AddedElementToUpdate implements _AddedElementToUpdate {
  const _$_AddedElementToUpdate(
      this.termId, this.isInitialInterest, this.termInitialInterestStatuses);

  @override
  final String termId;
  @override
  final bool isInitialInterest;
  @override
  final Map<String, bool> termInitialInterestStatuses;

  @override
  String toString() {
    return 'UserTermDataSourceEngagementActorEvent.addedElementToUpdate(termId: $termId, isInitialInterest: $isInitialInterest, termInitialInterestStatuses: $termInitialInterestStatuses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddedElementToUpdate &&
            (identical(other.termId, termId) || other.termId == termId) &&
            (identical(other.isInitialInterest, isInitialInterest) ||
                other.isInitialInterest == isInitialInterest) &&
            const DeepCollectionEquality().equals(
                other.termInitialInterestStatuses,
                termInitialInterestStatuses));
  }

  @override
  int get hashCode => Object.hash(runtimeType, termId, isInitialInterest,
      const DeepCollectionEquality().hash(termInitialInterestStatuses));

  @JsonKey(ignore: true)
  @override
  _$AddedElementToUpdateCopyWith<_AddedElementToUpdate> get copyWith =>
      __$AddedElementToUpdateCopyWithImpl<_AddedElementToUpdate>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String termId, bool isInitialInterest,
            Map<String, bool> termInitialInterestStatuses)
        addedElementToUpdate,
    required TResult Function(
            String termId, Map<String, bool> termInitialInterestStatuses)
        removedElementFromUpdate,
    required TResult Function(Map<String, bool> termInitialInterestStatuses)
        batchUpdateInitialInterestsStarted,
  }) {
    return addedElementToUpdate(
        termId, isInitialInterest, termInitialInterestStatuses);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String termId, bool isInitialInterest,
            Map<String, bool> termInitialInterestStatuses)?
        addedElementToUpdate,
    TResult Function(
            String termId, Map<String, bool> termInitialInterestStatuses)?
        removedElementFromUpdate,
    TResult Function(Map<String, bool> termInitialInterestStatuses)?
        batchUpdateInitialInterestsStarted,
  }) {
    return addedElementToUpdate?.call(
        termId, isInitialInterest, termInitialInterestStatuses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String termId, bool isInitialInterest,
            Map<String, bool> termInitialInterestStatuses)?
        addedElementToUpdate,
    TResult Function(
            String termId, Map<String, bool> termInitialInterestStatuses)?
        removedElementFromUpdate,
    TResult Function(Map<String, bool> termInitialInterestStatuses)?
        batchUpdateInitialInterestsStarted,
    required TResult orElse(),
  }) {
    if (addedElementToUpdate != null) {
      return addedElementToUpdate(
          termId, isInitialInterest, termInitialInterestStatuses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddedElementToUpdate value) addedElementToUpdate,
    required TResult Function(_RemovedElementFromUpdate value)
        removedElementFromUpdate,
    required TResult Function(_BatchUpdateInitialInterestsStarted value)
        batchUpdateInitialInterestsStarted,
  }) {
    return addedElementToUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddedElementToUpdate value)? addedElementToUpdate,
    TResult Function(_RemovedElementFromUpdate value)? removedElementFromUpdate,
    TResult Function(_BatchUpdateInitialInterestsStarted value)?
        batchUpdateInitialInterestsStarted,
  }) {
    return addedElementToUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddedElementToUpdate value)? addedElementToUpdate,
    TResult Function(_RemovedElementFromUpdate value)? removedElementFromUpdate,
    TResult Function(_BatchUpdateInitialInterestsStarted value)?
        batchUpdateInitialInterestsStarted,
    required TResult orElse(),
  }) {
    if (addedElementToUpdate != null) {
      return addedElementToUpdate(this);
    }
    return orElse();
  }
}

abstract class _AddedElementToUpdate
    implements UserTermDataSourceEngagementActorEvent {
  const factory _AddedElementToUpdate(String termId, bool isInitialInterest,
      Map<String, bool> termInitialInterestStatuses) = _$_AddedElementToUpdate;

  String get termId;
  bool get isInitialInterest;
  @override
  Map<String, bool> get termInitialInterestStatuses;
  @override
  @JsonKey(ignore: true)
  _$AddedElementToUpdateCopyWith<_AddedElementToUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RemovedElementFromUpdateCopyWith<$Res>
    implements $UserTermDataSourceEngagementActorEventCopyWith<$Res> {
  factory _$RemovedElementFromUpdateCopyWith(_RemovedElementFromUpdate value,
          $Res Function(_RemovedElementFromUpdate) then) =
      __$RemovedElementFromUpdateCopyWithImpl<$Res>;
  @override
  $Res call({String termId, Map<String, bool> termInitialInterestStatuses});
}

/// @nodoc
class __$RemovedElementFromUpdateCopyWithImpl<$Res>
    extends _$UserTermDataSourceEngagementActorEventCopyWithImpl<$Res>
    implements _$RemovedElementFromUpdateCopyWith<$Res> {
  __$RemovedElementFromUpdateCopyWithImpl(_RemovedElementFromUpdate _value,
      $Res Function(_RemovedElementFromUpdate) _then)
      : super(_value, (v) => _then(v as _RemovedElementFromUpdate));

  @override
  _RemovedElementFromUpdate get _value =>
      super._value as _RemovedElementFromUpdate;

  @override
  $Res call({
    Object? termId = freezed,
    Object? termInitialInterestStatuses = freezed,
  }) {
    return _then(_RemovedElementFromUpdate(
      termId == freezed
          ? _value.termId
          : termId // ignore: cast_nullable_to_non_nullable
              as String,
      termInitialInterestStatuses == freezed
          ? _value.termInitialInterestStatuses
          : termInitialInterestStatuses // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
    ));
  }
}

/// @nodoc

class _$_RemovedElementFromUpdate implements _RemovedElementFromUpdate {
  const _$_RemovedElementFromUpdate(
      this.termId, this.termInitialInterestStatuses);

  @override
  final String termId;
  @override
  final Map<String, bool> termInitialInterestStatuses;

  @override
  String toString() {
    return 'UserTermDataSourceEngagementActorEvent.removedElementFromUpdate(termId: $termId, termInitialInterestStatuses: $termInitialInterestStatuses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemovedElementFromUpdate &&
            (identical(other.termId, termId) || other.termId == termId) &&
            const DeepCollectionEquality().equals(
                other.termInitialInterestStatuses,
                termInitialInterestStatuses));
  }

  @override
  int get hashCode => Object.hash(runtimeType, termId,
      const DeepCollectionEquality().hash(termInitialInterestStatuses));

  @JsonKey(ignore: true)
  @override
  _$RemovedElementFromUpdateCopyWith<_RemovedElementFromUpdate> get copyWith =>
      __$RemovedElementFromUpdateCopyWithImpl<_RemovedElementFromUpdate>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String termId, bool isInitialInterest,
            Map<String, bool> termInitialInterestStatuses)
        addedElementToUpdate,
    required TResult Function(
            String termId, Map<String, bool> termInitialInterestStatuses)
        removedElementFromUpdate,
    required TResult Function(Map<String, bool> termInitialInterestStatuses)
        batchUpdateInitialInterestsStarted,
  }) {
    return removedElementFromUpdate(termId, termInitialInterestStatuses);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String termId, bool isInitialInterest,
            Map<String, bool> termInitialInterestStatuses)?
        addedElementToUpdate,
    TResult Function(
            String termId, Map<String, bool> termInitialInterestStatuses)?
        removedElementFromUpdate,
    TResult Function(Map<String, bool> termInitialInterestStatuses)?
        batchUpdateInitialInterestsStarted,
  }) {
    return removedElementFromUpdate?.call(termId, termInitialInterestStatuses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String termId, bool isInitialInterest,
            Map<String, bool> termInitialInterestStatuses)?
        addedElementToUpdate,
    TResult Function(
            String termId, Map<String, bool> termInitialInterestStatuses)?
        removedElementFromUpdate,
    TResult Function(Map<String, bool> termInitialInterestStatuses)?
        batchUpdateInitialInterestsStarted,
    required TResult orElse(),
  }) {
    if (removedElementFromUpdate != null) {
      return removedElementFromUpdate(termId, termInitialInterestStatuses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddedElementToUpdate value) addedElementToUpdate,
    required TResult Function(_RemovedElementFromUpdate value)
        removedElementFromUpdate,
    required TResult Function(_BatchUpdateInitialInterestsStarted value)
        batchUpdateInitialInterestsStarted,
  }) {
    return removedElementFromUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddedElementToUpdate value)? addedElementToUpdate,
    TResult Function(_RemovedElementFromUpdate value)? removedElementFromUpdate,
    TResult Function(_BatchUpdateInitialInterestsStarted value)?
        batchUpdateInitialInterestsStarted,
  }) {
    return removedElementFromUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddedElementToUpdate value)? addedElementToUpdate,
    TResult Function(_RemovedElementFromUpdate value)? removedElementFromUpdate,
    TResult Function(_BatchUpdateInitialInterestsStarted value)?
        batchUpdateInitialInterestsStarted,
    required TResult orElse(),
  }) {
    if (removedElementFromUpdate != null) {
      return removedElementFromUpdate(this);
    }
    return orElse();
  }
}

abstract class _RemovedElementFromUpdate
    implements UserTermDataSourceEngagementActorEvent {
  const factory _RemovedElementFromUpdate(
          String termId, Map<String, bool> termInitialInterestStatuses) =
      _$_RemovedElementFromUpdate;

  String get termId;
  @override
  Map<String, bool> get termInitialInterestStatuses;
  @override
  @JsonKey(ignore: true)
  _$RemovedElementFromUpdateCopyWith<_RemovedElementFromUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BatchUpdateInitialInterestsStartedCopyWith<$Res>
    implements $UserTermDataSourceEngagementActorEventCopyWith<$Res> {
  factory _$BatchUpdateInitialInterestsStartedCopyWith(
          _BatchUpdateInitialInterestsStarted value,
          $Res Function(_BatchUpdateInitialInterestsStarted) then) =
      __$BatchUpdateInitialInterestsStartedCopyWithImpl<$Res>;
  @override
  $Res call({Map<String, bool> termInitialInterestStatuses});
}

/// @nodoc
class __$BatchUpdateInitialInterestsStartedCopyWithImpl<$Res>
    extends _$UserTermDataSourceEngagementActorEventCopyWithImpl<$Res>
    implements _$BatchUpdateInitialInterestsStartedCopyWith<$Res> {
  __$BatchUpdateInitialInterestsStartedCopyWithImpl(
      _BatchUpdateInitialInterestsStarted _value,
      $Res Function(_BatchUpdateInitialInterestsStarted) _then)
      : super(_value, (v) => _then(v as _BatchUpdateInitialInterestsStarted));

  @override
  _BatchUpdateInitialInterestsStarted get _value =>
      super._value as _BatchUpdateInitialInterestsStarted;

  @override
  $Res call({
    Object? termInitialInterestStatuses = freezed,
  }) {
    return _then(_BatchUpdateInitialInterestsStarted(
      termInitialInterestStatuses == freezed
          ? _value.termInitialInterestStatuses
          : termInitialInterestStatuses // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
    ));
  }
}

/// @nodoc

class _$_BatchUpdateInitialInterestsStarted
    implements _BatchUpdateInitialInterestsStarted {
  const _$_BatchUpdateInitialInterestsStarted(this.termInitialInterestStatuses);

  @override
  final Map<String, bool> termInitialInterestStatuses;

  @override
  String toString() {
    return 'UserTermDataSourceEngagementActorEvent.batchUpdateInitialInterestsStarted(termInitialInterestStatuses: $termInitialInterestStatuses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BatchUpdateInitialInterestsStarted &&
            const DeepCollectionEquality().equals(
                other.termInitialInterestStatuses,
                termInitialInterestStatuses));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(termInitialInterestStatuses));

  @JsonKey(ignore: true)
  @override
  _$BatchUpdateInitialInterestsStartedCopyWith<
          _BatchUpdateInitialInterestsStarted>
      get copyWith => __$BatchUpdateInitialInterestsStartedCopyWithImpl<
          _BatchUpdateInitialInterestsStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String termId, bool isInitialInterest,
            Map<String, bool> termInitialInterestStatuses)
        addedElementToUpdate,
    required TResult Function(
            String termId, Map<String, bool> termInitialInterestStatuses)
        removedElementFromUpdate,
    required TResult Function(Map<String, bool> termInitialInterestStatuses)
        batchUpdateInitialInterestsStarted,
  }) {
    return batchUpdateInitialInterestsStarted(termInitialInterestStatuses);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String termId, bool isInitialInterest,
            Map<String, bool> termInitialInterestStatuses)?
        addedElementToUpdate,
    TResult Function(
            String termId, Map<String, bool> termInitialInterestStatuses)?
        removedElementFromUpdate,
    TResult Function(Map<String, bool> termInitialInterestStatuses)?
        batchUpdateInitialInterestsStarted,
  }) {
    return batchUpdateInitialInterestsStarted
        ?.call(termInitialInterestStatuses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String termId, bool isInitialInterest,
            Map<String, bool> termInitialInterestStatuses)?
        addedElementToUpdate,
    TResult Function(
            String termId, Map<String, bool> termInitialInterestStatuses)?
        removedElementFromUpdate,
    TResult Function(Map<String, bool> termInitialInterestStatuses)?
        batchUpdateInitialInterestsStarted,
    required TResult orElse(),
  }) {
    if (batchUpdateInitialInterestsStarted != null) {
      return batchUpdateInitialInterestsStarted(termInitialInterestStatuses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddedElementToUpdate value) addedElementToUpdate,
    required TResult Function(_RemovedElementFromUpdate value)
        removedElementFromUpdate,
    required TResult Function(_BatchUpdateInitialInterestsStarted value)
        batchUpdateInitialInterestsStarted,
  }) {
    return batchUpdateInitialInterestsStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddedElementToUpdate value)? addedElementToUpdate,
    TResult Function(_RemovedElementFromUpdate value)? removedElementFromUpdate,
    TResult Function(_BatchUpdateInitialInterestsStarted value)?
        batchUpdateInitialInterestsStarted,
  }) {
    return batchUpdateInitialInterestsStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddedElementToUpdate value)? addedElementToUpdate,
    TResult Function(_RemovedElementFromUpdate value)? removedElementFromUpdate,
    TResult Function(_BatchUpdateInitialInterestsStarted value)?
        batchUpdateInitialInterestsStarted,
    required TResult orElse(),
  }) {
    if (batchUpdateInitialInterestsStarted != null) {
      return batchUpdateInitialInterestsStarted(this);
    }
    return orElse();
  }
}

abstract class _BatchUpdateInitialInterestsStarted
    implements UserTermDataSourceEngagementActorEvent {
  const factory _BatchUpdateInitialInterestsStarted(
          Map<String, bool> termInitialInterestStatuses) =
      _$_BatchUpdateInitialInterestsStarted;

  @override
  Map<String, bool> get termInitialInterestStatuses;
  @override
  @JsonKey(ignore: true)
  _$BatchUpdateInitialInterestsStartedCopyWith<
          _BatchUpdateInitialInterestsStarted>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$UserTermDataSourceEngagementActorStateTearOff {
  const _$UserTermDataSourceEngagementActorStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _PreparingForUpdate preparingForUpdate(
      Map<String, bool> termInitialInterestStatuses) {
    return _PreparingForUpdate(
      termInitialInterestStatuses,
    );
  }

  _UpdateInProgress updateInProgress() {
    return const _UpdateInProgress();
  }

  _UpdateFinished updateFinished() {
    return const _UpdateFinished();
  }
}

/// @nodoc
const $UserTermDataSourceEngagementActorState =
    _$UserTermDataSourceEngagementActorStateTearOff();

/// @nodoc
mixin _$UserTermDataSourceEngagementActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Map<String, bool> termInitialInterestStatuses)
        preparingForUpdate,
    required TResult Function() updateInProgress,
    required TResult Function() updateFinished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Map<String, bool> termInitialInterestStatuses)?
        preparingForUpdate,
    TResult Function()? updateInProgress,
    TResult Function()? updateFinished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Map<String, bool> termInitialInterestStatuses)?
        preparingForUpdate,
    TResult Function()? updateInProgress,
    TResult Function()? updateFinished,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PreparingForUpdate value) preparingForUpdate,
    required TResult Function(_UpdateInProgress value) updateInProgress,
    required TResult Function(_UpdateFinished value) updateFinished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PreparingForUpdate value)? preparingForUpdate,
    TResult Function(_UpdateInProgress value)? updateInProgress,
    TResult Function(_UpdateFinished value)? updateFinished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PreparingForUpdate value)? preparingForUpdate,
    TResult Function(_UpdateInProgress value)? updateInProgress,
    TResult Function(_UpdateFinished value)? updateFinished,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTermDataSourceEngagementActorStateCopyWith<$Res> {
  factory $UserTermDataSourceEngagementActorStateCopyWith(
          UserTermDataSourceEngagementActorState value,
          $Res Function(UserTermDataSourceEngagementActorState) then) =
      _$UserTermDataSourceEngagementActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserTermDataSourceEngagementActorStateCopyWithImpl<$Res>
    implements $UserTermDataSourceEngagementActorStateCopyWith<$Res> {
  _$UserTermDataSourceEngagementActorStateCopyWithImpl(this._value, this._then);

  final UserTermDataSourceEngagementActorState _value;
  // ignore: unused_field
  final $Res Function(UserTermDataSourceEngagementActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$UserTermDataSourceEngagementActorStateCopyWithImpl<$Res>
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
    return 'UserTermDataSourceEngagementActorState.initial()';
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
    required TResult Function(Map<String, bool> termInitialInterestStatuses)
        preparingForUpdate,
    required TResult Function() updateInProgress,
    required TResult Function() updateFinished,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Map<String, bool> termInitialInterestStatuses)?
        preparingForUpdate,
    TResult Function()? updateInProgress,
    TResult Function()? updateFinished,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Map<String, bool> termInitialInterestStatuses)?
        preparingForUpdate,
    TResult Function()? updateInProgress,
    TResult Function()? updateFinished,
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
    required TResult Function(_PreparingForUpdate value) preparingForUpdate,
    required TResult Function(_UpdateInProgress value) updateInProgress,
    required TResult Function(_UpdateFinished value) updateFinished,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PreparingForUpdate value)? preparingForUpdate,
    TResult Function(_UpdateInProgress value)? updateInProgress,
    TResult Function(_UpdateFinished value)? updateFinished,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PreparingForUpdate value)? preparingForUpdate,
    TResult Function(_UpdateInProgress value)? updateInProgress,
    TResult Function(_UpdateFinished value)? updateFinished,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UserTermDataSourceEngagementActorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$PreparingForUpdateCopyWith<$Res> {
  factory _$PreparingForUpdateCopyWith(
          _PreparingForUpdate value, $Res Function(_PreparingForUpdate) then) =
      __$PreparingForUpdateCopyWithImpl<$Res>;
  $Res call({Map<String, bool> termInitialInterestStatuses});
}

/// @nodoc
class __$PreparingForUpdateCopyWithImpl<$Res>
    extends _$UserTermDataSourceEngagementActorStateCopyWithImpl<$Res>
    implements _$PreparingForUpdateCopyWith<$Res> {
  __$PreparingForUpdateCopyWithImpl(
      _PreparingForUpdate _value, $Res Function(_PreparingForUpdate) _then)
      : super(_value, (v) => _then(v as _PreparingForUpdate));

  @override
  _PreparingForUpdate get _value => super._value as _PreparingForUpdate;

  @override
  $Res call({
    Object? termInitialInterestStatuses = freezed,
  }) {
    return _then(_PreparingForUpdate(
      termInitialInterestStatuses == freezed
          ? _value.termInitialInterestStatuses
          : termInitialInterestStatuses // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
    ));
  }
}

/// @nodoc

class _$_PreparingForUpdate implements _PreparingForUpdate {
  const _$_PreparingForUpdate(this.termInitialInterestStatuses);

  @override
  final Map<String, bool> termInitialInterestStatuses;

  @override
  String toString() {
    return 'UserTermDataSourceEngagementActorState.preparingForUpdate(termInitialInterestStatuses: $termInitialInterestStatuses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PreparingForUpdate &&
            const DeepCollectionEquality().equals(
                other.termInitialInterestStatuses,
                termInitialInterestStatuses));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(termInitialInterestStatuses));

  @JsonKey(ignore: true)
  @override
  _$PreparingForUpdateCopyWith<_PreparingForUpdate> get copyWith =>
      __$PreparingForUpdateCopyWithImpl<_PreparingForUpdate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Map<String, bool> termInitialInterestStatuses)
        preparingForUpdate,
    required TResult Function() updateInProgress,
    required TResult Function() updateFinished,
  }) {
    return preparingForUpdate(termInitialInterestStatuses);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Map<String, bool> termInitialInterestStatuses)?
        preparingForUpdate,
    TResult Function()? updateInProgress,
    TResult Function()? updateFinished,
  }) {
    return preparingForUpdate?.call(termInitialInterestStatuses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Map<String, bool> termInitialInterestStatuses)?
        preparingForUpdate,
    TResult Function()? updateInProgress,
    TResult Function()? updateFinished,
    required TResult orElse(),
  }) {
    if (preparingForUpdate != null) {
      return preparingForUpdate(termInitialInterestStatuses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PreparingForUpdate value) preparingForUpdate,
    required TResult Function(_UpdateInProgress value) updateInProgress,
    required TResult Function(_UpdateFinished value) updateFinished,
  }) {
    return preparingForUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PreparingForUpdate value)? preparingForUpdate,
    TResult Function(_UpdateInProgress value)? updateInProgress,
    TResult Function(_UpdateFinished value)? updateFinished,
  }) {
    return preparingForUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PreparingForUpdate value)? preparingForUpdate,
    TResult Function(_UpdateInProgress value)? updateInProgress,
    TResult Function(_UpdateFinished value)? updateFinished,
    required TResult orElse(),
  }) {
    if (preparingForUpdate != null) {
      return preparingForUpdate(this);
    }
    return orElse();
  }
}

abstract class _PreparingForUpdate
    implements UserTermDataSourceEngagementActorState {
  const factory _PreparingForUpdate(
      Map<String, bool> termInitialInterestStatuses) = _$_PreparingForUpdate;

  Map<String, bool> get termInitialInterestStatuses;
  @JsonKey(ignore: true)
  _$PreparingForUpdateCopyWith<_PreparingForUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateInProgressCopyWith<$Res> {
  factory _$UpdateInProgressCopyWith(
          _UpdateInProgress value, $Res Function(_UpdateInProgress) then) =
      __$UpdateInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$UpdateInProgressCopyWithImpl<$Res>
    extends _$UserTermDataSourceEngagementActorStateCopyWithImpl<$Res>
    implements _$UpdateInProgressCopyWith<$Res> {
  __$UpdateInProgressCopyWithImpl(
      _UpdateInProgress _value, $Res Function(_UpdateInProgress) _then)
      : super(_value, (v) => _then(v as _UpdateInProgress));

  @override
  _UpdateInProgress get _value => super._value as _UpdateInProgress;
}

/// @nodoc

class _$_UpdateInProgress implements _UpdateInProgress {
  const _$_UpdateInProgress();

  @override
  String toString() {
    return 'UserTermDataSourceEngagementActorState.updateInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _UpdateInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Map<String, bool> termInitialInterestStatuses)
        preparingForUpdate,
    required TResult Function() updateInProgress,
    required TResult Function() updateFinished,
  }) {
    return updateInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Map<String, bool> termInitialInterestStatuses)?
        preparingForUpdate,
    TResult Function()? updateInProgress,
    TResult Function()? updateFinished,
  }) {
    return updateInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Map<String, bool> termInitialInterestStatuses)?
        preparingForUpdate,
    TResult Function()? updateInProgress,
    TResult Function()? updateFinished,
    required TResult orElse(),
  }) {
    if (updateInProgress != null) {
      return updateInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PreparingForUpdate value) preparingForUpdate,
    required TResult Function(_UpdateInProgress value) updateInProgress,
    required TResult Function(_UpdateFinished value) updateFinished,
  }) {
    return updateInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PreparingForUpdate value)? preparingForUpdate,
    TResult Function(_UpdateInProgress value)? updateInProgress,
    TResult Function(_UpdateFinished value)? updateFinished,
  }) {
    return updateInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PreparingForUpdate value)? preparingForUpdate,
    TResult Function(_UpdateInProgress value)? updateInProgress,
    TResult Function(_UpdateFinished value)? updateFinished,
    required TResult orElse(),
  }) {
    if (updateInProgress != null) {
      return updateInProgress(this);
    }
    return orElse();
  }
}

abstract class _UpdateInProgress
    implements UserTermDataSourceEngagementActorState {
  const factory _UpdateInProgress() = _$_UpdateInProgress;
}

/// @nodoc
abstract class _$UpdateFinishedCopyWith<$Res> {
  factory _$UpdateFinishedCopyWith(
          _UpdateFinished value, $Res Function(_UpdateFinished) then) =
      __$UpdateFinishedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UpdateFinishedCopyWithImpl<$Res>
    extends _$UserTermDataSourceEngagementActorStateCopyWithImpl<$Res>
    implements _$UpdateFinishedCopyWith<$Res> {
  __$UpdateFinishedCopyWithImpl(
      _UpdateFinished _value, $Res Function(_UpdateFinished) _then)
      : super(_value, (v) => _then(v as _UpdateFinished));

  @override
  _UpdateFinished get _value => super._value as _UpdateFinished;
}

/// @nodoc

class _$_UpdateFinished implements _UpdateFinished {
  const _$_UpdateFinished();

  @override
  String toString() {
    return 'UserTermDataSourceEngagementActorState.updateFinished()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _UpdateFinished);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Map<String, bool> termInitialInterestStatuses)
        preparingForUpdate,
    required TResult Function() updateInProgress,
    required TResult Function() updateFinished,
  }) {
    return updateFinished();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Map<String, bool> termInitialInterestStatuses)?
        preparingForUpdate,
    TResult Function()? updateInProgress,
    TResult Function()? updateFinished,
  }) {
    return updateFinished?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Map<String, bool> termInitialInterestStatuses)?
        preparingForUpdate,
    TResult Function()? updateInProgress,
    TResult Function()? updateFinished,
    required TResult orElse(),
  }) {
    if (updateFinished != null) {
      return updateFinished();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PreparingForUpdate value) preparingForUpdate,
    required TResult Function(_UpdateInProgress value) updateInProgress,
    required TResult Function(_UpdateFinished value) updateFinished,
  }) {
    return updateFinished(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PreparingForUpdate value)? preparingForUpdate,
    TResult Function(_UpdateInProgress value)? updateInProgress,
    TResult Function(_UpdateFinished value)? updateFinished,
  }) {
    return updateFinished?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PreparingForUpdate value)? preparingForUpdate,
    TResult Function(_UpdateInProgress value)? updateInProgress,
    TResult Function(_UpdateFinished value)? updateFinished,
    required TResult orElse(),
  }) {
    if (updateFinished != null) {
      return updateFinished(this);
    }
    return orElse();
  }
}

abstract class _UpdateFinished
    implements UserTermDataSourceEngagementActorState {
  const factory _UpdateFinished() = _$_UpdateFinished;
}
