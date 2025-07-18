// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'habits_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HabitEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadHabits,
    required TResult Function(Habit habit) addHabit,
    required TResult Function(Habit habit) updateHabit,
    required TResult Function(String id) deleteHabit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadHabits,
    TResult? Function(Habit habit)? addHabit,
    TResult? Function(Habit habit)? updateHabit,
    TResult? Function(String id)? deleteHabit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadHabits,
    TResult Function(Habit habit)? addHabit,
    TResult Function(Habit habit)? updateHabit,
    TResult Function(String id)? deleteHabit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadHabitsEvent value) loadHabits,
    required TResult Function(_AddHabitEvent value) addHabit,
    required TResult Function(_UpdateHabitEvent value) updateHabit,
    required TResult Function(_DeleteHabitEvent value) deleteHabit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadHabitsEvent value)? loadHabits,
    TResult? Function(_AddHabitEvent value)? addHabit,
    TResult? Function(_UpdateHabitEvent value)? updateHabit,
    TResult? Function(_DeleteHabitEvent value)? deleteHabit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadHabitsEvent value)? loadHabits,
    TResult Function(_AddHabitEvent value)? addHabit,
    TResult Function(_UpdateHabitEvent value)? updateHabit,
    TResult Function(_DeleteHabitEvent value)? deleteHabit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitEventCopyWith<$Res> {
  factory $HabitEventCopyWith(
          HabitEvent value, $Res Function(HabitEvent) then) =
      _$HabitEventCopyWithImpl<$Res, HabitEvent>;
}

/// @nodoc
class _$HabitEventCopyWithImpl<$Res, $Val extends HabitEvent>
    implements $HabitEventCopyWith<$Res> {
  _$HabitEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadHabitsEventImplCopyWith<$Res> {
  factory _$$LoadHabitsEventImplCopyWith(_$LoadHabitsEventImpl value,
          $Res Function(_$LoadHabitsEventImpl) then) =
      __$$LoadHabitsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadHabitsEventImplCopyWithImpl<$Res>
    extends _$HabitEventCopyWithImpl<$Res, _$LoadHabitsEventImpl>
    implements _$$LoadHabitsEventImplCopyWith<$Res> {
  __$$LoadHabitsEventImplCopyWithImpl(
      _$LoadHabitsEventImpl _value, $Res Function(_$LoadHabitsEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadHabitsEventImpl implements _LoadHabitsEvent {
  const _$LoadHabitsEventImpl();

  @override
  String toString() {
    return 'HabitEvent.loadHabits()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadHabitsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadHabits,
    required TResult Function(Habit habit) addHabit,
    required TResult Function(Habit habit) updateHabit,
    required TResult Function(String id) deleteHabit,
  }) {
    return loadHabits();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadHabits,
    TResult? Function(Habit habit)? addHabit,
    TResult? Function(Habit habit)? updateHabit,
    TResult? Function(String id)? deleteHabit,
  }) {
    return loadHabits?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadHabits,
    TResult Function(Habit habit)? addHabit,
    TResult Function(Habit habit)? updateHabit,
    TResult Function(String id)? deleteHabit,
    required TResult orElse(),
  }) {
    if (loadHabits != null) {
      return loadHabits();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadHabitsEvent value) loadHabits,
    required TResult Function(_AddHabitEvent value) addHabit,
    required TResult Function(_UpdateHabitEvent value) updateHabit,
    required TResult Function(_DeleteHabitEvent value) deleteHabit,
  }) {
    return loadHabits(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadHabitsEvent value)? loadHabits,
    TResult? Function(_AddHabitEvent value)? addHabit,
    TResult? Function(_UpdateHabitEvent value)? updateHabit,
    TResult? Function(_DeleteHabitEvent value)? deleteHabit,
  }) {
    return loadHabits?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadHabitsEvent value)? loadHabits,
    TResult Function(_AddHabitEvent value)? addHabit,
    TResult Function(_UpdateHabitEvent value)? updateHabit,
    TResult Function(_DeleteHabitEvent value)? deleteHabit,
    required TResult orElse(),
  }) {
    if (loadHabits != null) {
      return loadHabits(this);
    }
    return orElse();
  }
}

abstract class _LoadHabitsEvent implements HabitEvent {
  const factory _LoadHabitsEvent() = _$LoadHabitsEventImpl;
}

/// @nodoc
abstract class _$$AddHabitEventImplCopyWith<$Res> {
  factory _$$AddHabitEventImplCopyWith(
          _$AddHabitEventImpl value, $Res Function(_$AddHabitEventImpl) then) =
      __$$AddHabitEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Habit habit});

  $HabitCopyWith<$Res> get habit;
}

/// @nodoc
class __$$AddHabitEventImplCopyWithImpl<$Res>
    extends _$HabitEventCopyWithImpl<$Res, _$AddHabitEventImpl>
    implements _$$AddHabitEventImplCopyWith<$Res> {
  __$$AddHabitEventImplCopyWithImpl(
      _$AddHabitEventImpl _value, $Res Function(_$AddHabitEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? habit = null,
  }) {
    return _then(_$AddHabitEventImpl(
      null == habit
          ? _value.habit
          : habit // ignore: cast_nullable_to_non_nullable
              as Habit,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $HabitCopyWith<$Res> get habit {
    return $HabitCopyWith<$Res>(_value.habit, (value) {
      return _then(_value.copyWith(habit: value));
    });
  }
}

/// @nodoc

class _$AddHabitEventImpl implements _AddHabitEvent {
  const _$AddHabitEventImpl(this.habit);

  @override
  final Habit habit;

  @override
  String toString() {
    return 'HabitEvent.addHabit(habit: $habit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddHabitEventImpl &&
            (identical(other.habit, habit) || other.habit == habit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, habit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddHabitEventImplCopyWith<_$AddHabitEventImpl> get copyWith =>
      __$$AddHabitEventImplCopyWithImpl<_$AddHabitEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadHabits,
    required TResult Function(Habit habit) addHabit,
    required TResult Function(Habit habit) updateHabit,
    required TResult Function(String id) deleteHabit,
  }) {
    return addHabit(habit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadHabits,
    TResult? Function(Habit habit)? addHabit,
    TResult? Function(Habit habit)? updateHabit,
    TResult? Function(String id)? deleteHabit,
  }) {
    return addHabit?.call(habit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadHabits,
    TResult Function(Habit habit)? addHabit,
    TResult Function(Habit habit)? updateHabit,
    TResult Function(String id)? deleteHabit,
    required TResult orElse(),
  }) {
    if (addHabit != null) {
      return addHabit(habit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadHabitsEvent value) loadHabits,
    required TResult Function(_AddHabitEvent value) addHabit,
    required TResult Function(_UpdateHabitEvent value) updateHabit,
    required TResult Function(_DeleteHabitEvent value) deleteHabit,
  }) {
    return addHabit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadHabitsEvent value)? loadHabits,
    TResult? Function(_AddHabitEvent value)? addHabit,
    TResult? Function(_UpdateHabitEvent value)? updateHabit,
    TResult? Function(_DeleteHabitEvent value)? deleteHabit,
  }) {
    return addHabit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadHabitsEvent value)? loadHabits,
    TResult Function(_AddHabitEvent value)? addHabit,
    TResult Function(_UpdateHabitEvent value)? updateHabit,
    TResult Function(_DeleteHabitEvent value)? deleteHabit,
    required TResult orElse(),
  }) {
    if (addHabit != null) {
      return addHabit(this);
    }
    return orElse();
  }
}

abstract class _AddHabitEvent implements HabitEvent {
  const factory _AddHabitEvent(final Habit habit) = _$AddHabitEventImpl;

  Habit get habit;
  @JsonKey(ignore: true)
  _$$AddHabitEventImplCopyWith<_$AddHabitEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateHabitEventImplCopyWith<$Res> {
  factory _$$UpdateHabitEventImplCopyWith(_$UpdateHabitEventImpl value,
          $Res Function(_$UpdateHabitEventImpl) then) =
      __$$UpdateHabitEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Habit habit});

  $HabitCopyWith<$Res> get habit;
}

/// @nodoc
class __$$UpdateHabitEventImplCopyWithImpl<$Res>
    extends _$HabitEventCopyWithImpl<$Res, _$UpdateHabitEventImpl>
    implements _$$UpdateHabitEventImplCopyWith<$Res> {
  __$$UpdateHabitEventImplCopyWithImpl(_$UpdateHabitEventImpl _value,
      $Res Function(_$UpdateHabitEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? habit = null,
  }) {
    return _then(_$UpdateHabitEventImpl(
      null == habit
          ? _value.habit
          : habit // ignore: cast_nullable_to_non_nullable
              as Habit,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $HabitCopyWith<$Res> get habit {
    return $HabitCopyWith<$Res>(_value.habit, (value) {
      return _then(_value.copyWith(habit: value));
    });
  }
}

/// @nodoc

class _$UpdateHabitEventImpl implements _UpdateHabitEvent {
  const _$UpdateHabitEventImpl(this.habit);

  @override
  final Habit habit;

  @override
  String toString() {
    return 'HabitEvent.updateHabit(habit: $habit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateHabitEventImpl &&
            (identical(other.habit, habit) || other.habit == habit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, habit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateHabitEventImplCopyWith<_$UpdateHabitEventImpl> get copyWith =>
      __$$UpdateHabitEventImplCopyWithImpl<_$UpdateHabitEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadHabits,
    required TResult Function(Habit habit) addHabit,
    required TResult Function(Habit habit) updateHabit,
    required TResult Function(String id) deleteHabit,
  }) {
    return updateHabit(habit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadHabits,
    TResult? Function(Habit habit)? addHabit,
    TResult? Function(Habit habit)? updateHabit,
    TResult? Function(String id)? deleteHabit,
  }) {
    return updateHabit?.call(habit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadHabits,
    TResult Function(Habit habit)? addHabit,
    TResult Function(Habit habit)? updateHabit,
    TResult Function(String id)? deleteHabit,
    required TResult orElse(),
  }) {
    if (updateHabit != null) {
      return updateHabit(habit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadHabitsEvent value) loadHabits,
    required TResult Function(_AddHabitEvent value) addHabit,
    required TResult Function(_UpdateHabitEvent value) updateHabit,
    required TResult Function(_DeleteHabitEvent value) deleteHabit,
  }) {
    return updateHabit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadHabitsEvent value)? loadHabits,
    TResult? Function(_AddHabitEvent value)? addHabit,
    TResult? Function(_UpdateHabitEvent value)? updateHabit,
    TResult? Function(_DeleteHabitEvent value)? deleteHabit,
  }) {
    return updateHabit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadHabitsEvent value)? loadHabits,
    TResult Function(_AddHabitEvent value)? addHabit,
    TResult Function(_UpdateHabitEvent value)? updateHabit,
    TResult Function(_DeleteHabitEvent value)? deleteHabit,
    required TResult orElse(),
  }) {
    if (updateHabit != null) {
      return updateHabit(this);
    }
    return orElse();
  }
}

abstract class _UpdateHabitEvent implements HabitEvent {
  const factory _UpdateHabitEvent(final Habit habit) = _$UpdateHabitEventImpl;

  Habit get habit;
  @JsonKey(ignore: true)
  _$$UpdateHabitEventImplCopyWith<_$UpdateHabitEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteHabitEventImplCopyWith<$Res> {
  factory _$$DeleteHabitEventImplCopyWith(_$DeleteHabitEventImpl value,
          $Res Function(_$DeleteHabitEventImpl) then) =
      __$$DeleteHabitEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteHabitEventImplCopyWithImpl<$Res>
    extends _$HabitEventCopyWithImpl<$Res, _$DeleteHabitEventImpl>
    implements _$$DeleteHabitEventImplCopyWith<$Res> {
  __$$DeleteHabitEventImplCopyWithImpl(_$DeleteHabitEventImpl _value,
      $Res Function(_$DeleteHabitEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteHabitEventImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteHabitEventImpl implements _DeleteHabitEvent {
  const _$DeleteHabitEventImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'HabitEvent.deleteHabit(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteHabitEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteHabitEventImplCopyWith<_$DeleteHabitEventImpl> get copyWith =>
      __$$DeleteHabitEventImplCopyWithImpl<_$DeleteHabitEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadHabits,
    required TResult Function(Habit habit) addHabit,
    required TResult Function(Habit habit) updateHabit,
    required TResult Function(String id) deleteHabit,
  }) {
    return deleteHabit(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadHabits,
    TResult? Function(Habit habit)? addHabit,
    TResult? Function(Habit habit)? updateHabit,
    TResult? Function(String id)? deleteHabit,
  }) {
    return deleteHabit?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadHabits,
    TResult Function(Habit habit)? addHabit,
    TResult Function(Habit habit)? updateHabit,
    TResult Function(String id)? deleteHabit,
    required TResult orElse(),
  }) {
    if (deleteHabit != null) {
      return deleteHabit(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadHabitsEvent value) loadHabits,
    required TResult Function(_AddHabitEvent value) addHabit,
    required TResult Function(_UpdateHabitEvent value) updateHabit,
    required TResult Function(_DeleteHabitEvent value) deleteHabit,
  }) {
    return deleteHabit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadHabitsEvent value)? loadHabits,
    TResult? Function(_AddHabitEvent value)? addHabit,
    TResult? Function(_UpdateHabitEvent value)? updateHabit,
    TResult? Function(_DeleteHabitEvent value)? deleteHabit,
  }) {
    return deleteHabit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadHabitsEvent value)? loadHabits,
    TResult Function(_AddHabitEvent value)? addHabit,
    TResult Function(_UpdateHabitEvent value)? updateHabit,
    TResult Function(_DeleteHabitEvent value)? deleteHabit,
    required TResult orElse(),
  }) {
    if (deleteHabit != null) {
      return deleteHabit(this);
    }
    return orElse();
  }
}

abstract class _DeleteHabitEvent implements HabitEvent {
  const factory _DeleteHabitEvent(final String id) = _$DeleteHabitEventImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$DeleteHabitEventImplCopyWith<_$DeleteHabitEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HabitState {
  HabitStatus get habitStatus => throw _privateConstructorUsedError;
  List<Habit> get habits => throw _privateConstructorUsedError;
  Habit? get habit => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HabitStateCopyWith<HabitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitStateCopyWith<$Res> {
  factory $HabitStateCopyWith(
          HabitState value, $Res Function(HabitState) then) =
      _$HabitStateCopyWithImpl<$Res, HabitState>;
  @useResult
  $Res call(
      {HabitStatus habitStatus,
      List<Habit> habits,
      Habit? habit,
      String? errorMessage});

  $HabitCopyWith<$Res>? get habit;
}

/// @nodoc
class _$HabitStateCopyWithImpl<$Res, $Val extends HabitState>
    implements $HabitStateCopyWith<$Res> {
  _$HabitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? habitStatus = null,
    Object? habits = null,
    Object? habit = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      habitStatus: null == habitStatus
          ? _value.habitStatus
          : habitStatus // ignore: cast_nullable_to_non_nullable
              as HabitStatus,
      habits: null == habits
          ? _value.habits
          : habits // ignore: cast_nullable_to_non_nullable
              as List<Habit>,
      habit: freezed == habit
          ? _value.habit
          : habit // ignore: cast_nullable_to_non_nullable
              as Habit?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HabitCopyWith<$Res>? get habit {
    if (_value.habit == null) {
      return null;
    }

    return $HabitCopyWith<$Res>(_value.habit!, (value) {
      return _then(_value.copyWith(habit: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HabitStateImplCopyWith<$Res>
    implements $HabitStateCopyWith<$Res> {
  factory _$$HabitStateImplCopyWith(
          _$HabitStateImpl value, $Res Function(_$HabitStateImpl) then) =
      __$$HabitStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {HabitStatus habitStatus,
      List<Habit> habits,
      Habit? habit,
      String? errorMessage});

  @override
  $HabitCopyWith<$Res>? get habit;
}

/// @nodoc
class __$$HabitStateImplCopyWithImpl<$Res>
    extends _$HabitStateCopyWithImpl<$Res, _$HabitStateImpl>
    implements _$$HabitStateImplCopyWith<$Res> {
  __$$HabitStateImplCopyWithImpl(
      _$HabitStateImpl _value, $Res Function(_$HabitStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? habitStatus = null,
    Object? habits = null,
    Object? habit = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$HabitStateImpl(
      habitStatus: null == habitStatus
          ? _value.habitStatus
          : habitStatus // ignore: cast_nullable_to_non_nullable
              as HabitStatus,
      habits: null == habits
          ? _value._habits
          : habits // ignore: cast_nullable_to_non_nullable
              as List<Habit>,
      habit: freezed == habit
          ? _value.habit
          : habit // ignore: cast_nullable_to_non_nullable
              as Habit?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$HabitStateImpl implements _HabitState {
  const _$HabitStateImpl(
      {required this.habitStatus,
      required final List<Habit> habits,
      this.habit,
      this.errorMessage})
      : _habits = habits;

  @override
  final HabitStatus habitStatus;
  final List<Habit> _habits;
  @override
  List<Habit> get habits {
    if (_habits is EqualUnmodifiableListView) return _habits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_habits);
  }

  @override
  final Habit? habit;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'HabitState(habitStatus: $habitStatus, habits: $habits, habit: $habit, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HabitStateImpl &&
            (identical(other.habitStatus, habitStatus) ||
                other.habitStatus == habitStatus) &&
            const DeepCollectionEquality().equals(other._habits, _habits) &&
            (identical(other.habit, habit) || other.habit == habit) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, habitStatus,
      const DeepCollectionEquality().hash(_habits), habit, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HabitStateImplCopyWith<_$HabitStateImpl> get copyWith =>
      __$$HabitStateImplCopyWithImpl<_$HabitStateImpl>(this, _$identity);
}

abstract class _HabitState implements HabitState {
  const factory _HabitState(
      {required final HabitStatus habitStatus,
      required final List<Habit> habits,
      final Habit? habit,
      final String? errorMessage}) = _$HabitStateImpl;

  @override
  HabitStatus get habitStatus;
  @override
  List<Habit> get habits;
  @override
  Habit? get habit;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$HabitStateImplCopyWith<_$HabitStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
