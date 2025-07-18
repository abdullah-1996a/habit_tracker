// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calender_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CalendarEvent {
  String get habitId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String habitId) load,
    required TResult Function(String habitId, DateTime date) toggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String habitId)? load,
    TResult? Function(String habitId, DateTime date)? toggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String habitId)? load,
    TResult Function(String habitId, DateTime date)? toggle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCalendar value) load,
    required TResult Function(_ToggleCompletion value) toggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCalendar value)? load,
    TResult? Function(_ToggleCompletion value)? toggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCalendar value)? load,
    TResult Function(_ToggleCompletion value)? toggle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalendarEventCopyWith<CalendarEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarEventCopyWith<$Res> {
  factory $CalendarEventCopyWith(
          CalendarEvent value, $Res Function(CalendarEvent) then) =
      _$CalendarEventCopyWithImpl<$Res, CalendarEvent>;
  @useResult
  $Res call({String habitId});
}

/// @nodoc
class _$CalendarEventCopyWithImpl<$Res, $Val extends CalendarEvent>
    implements $CalendarEventCopyWith<$Res> {
  _$CalendarEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? habitId = null,
  }) {
    return _then(_value.copyWith(
      habitId: null == habitId
          ? _value.habitId
          : habitId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadCalendarImplCopyWith<$Res>
    implements $CalendarEventCopyWith<$Res> {
  factory _$$LoadCalendarImplCopyWith(
          _$LoadCalendarImpl value, $Res Function(_$LoadCalendarImpl) then) =
      __$$LoadCalendarImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String habitId});
}

/// @nodoc
class __$$LoadCalendarImplCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res, _$LoadCalendarImpl>
    implements _$$LoadCalendarImplCopyWith<$Res> {
  __$$LoadCalendarImplCopyWithImpl(
      _$LoadCalendarImpl _value, $Res Function(_$LoadCalendarImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? habitId = null,
  }) {
    return _then(_$LoadCalendarImpl(
      null == habitId
          ? _value.habitId
          : habitId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadCalendarImpl implements _LoadCalendar {
  const _$LoadCalendarImpl(this.habitId);

  @override
  final String habitId;

  @override
  String toString() {
    return 'CalendarEvent.load(habitId: $habitId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadCalendarImpl &&
            (identical(other.habitId, habitId) || other.habitId == habitId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, habitId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadCalendarImplCopyWith<_$LoadCalendarImpl> get copyWith =>
      __$$LoadCalendarImplCopyWithImpl<_$LoadCalendarImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String habitId) load,
    required TResult Function(String habitId, DateTime date) toggle,
  }) {
    return load(habitId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String habitId)? load,
    TResult? Function(String habitId, DateTime date)? toggle,
  }) {
    return load?.call(habitId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String habitId)? load,
    TResult Function(String habitId, DateTime date)? toggle,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(habitId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCalendar value) load,
    required TResult Function(_ToggleCompletion value) toggle,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCalendar value)? load,
    TResult? Function(_ToggleCompletion value)? toggle,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCalendar value)? load,
    TResult Function(_ToggleCompletion value)? toggle,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _LoadCalendar implements CalendarEvent {
  const factory _LoadCalendar(final String habitId) = _$LoadCalendarImpl;

  @override
  String get habitId;
  @override
  @JsonKey(ignore: true)
  _$$LoadCalendarImplCopyWith<_$LoadCalendarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleCompletionImplCopyWith<$Res>
    implements $CalendarEventCopyWith<$Res> {
  factory _$$ToggleCompletionImplCopyWith(_$ToggleCompletionImpl value,
          $Res Function(_$ToggleCompletionImpl) then) =
      __$$ToggleCompletionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String habitId, DateTime date});
}

/// @nodoc
class __$$ToggleCompletionImplCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res, _$ToggleCompletionImpl>
    implements _$$ToggleCompletionImplCopyWith<$Res> {
  __$$ToggleCompletionImplCopyWithImpl(_$ToggleCompletionImpl _value,
      $Res Function(_$ToggleCompletionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? habitId = null,
    Object? date = null,
  }) {
    return _then(_$ToggleCompletionImpl(
      null == habitId
          ? _value.habitId
          : habitId // ignore: cast_nullable_to_non_nullable
              as String,
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ToggleCompletionImpl implements _ToggleCompletion {
  const _$ToggleCompletionImpl(this.habitId, this.date);

  @override
  final String habitId;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'CalendarEvent.toggle(habitId: $habitId, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleCompletionImpl &&
            (identical(other.habitId, habitId) || other.habitId == habitId) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, habitId, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleCompletionImplCopyWith<_$ToggleCompletionImpl> get copyWith =>
      __$$ToggleCompletionImplCopyWithImpl<_$ToggleCompletionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String habitId) load,
    required TResult Function(String habitId, DateTime date) toggle,
  }) {
    return toggle(habitId, date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String habitId)? load,
    TResult? Function(String habitId, DateTime date)? toggle,
  }) {
    return toggle?.call(habitId, date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String habitId)? load,
    TResult Function(String habitId, DateTime date)? toggle,
    required TResult orElse(),
  }) {
    if (toggle != null) {
      return toggle(habitId, date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCalendar value) load,
    required TResult Function(_ToggleCompletion value) toggle,
  }) {
    return toggle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCalendar value)? load,
    TResult? Function(_ToggleCompletion value)? toggle,
  }) {
    return toggle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCalendar value)? load,
    TResult Function(_ToggleCompletion value)? toggle,
    required TResult orElse(),
  }) {
    if (toggle != null) {
      return toggle(this);
    }
    return orElse();
  }
}

abstract class _ToggleCompletion implements CalendarEvent {
  const factory _ToggleCompletion(final String habitId, final DateTime date) =
      _$ToggleCompletionImpl;

  @override
  String get habitId;
  DateTime get date;
  @override
  @JsonKey(ignore: true)
  _$$ToggleCompletionImplCopyWith<_$ToggleCompletionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CalenderState {
  CalenderStatus get calenderStatus => throw _privateConstructorUsedError;
  List<Completion> get completions => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalenderStateCopyWith<CalenderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalenderStateCopyWith<$Res> {
  factory $CalenderStateCopyWith(
          CalenderState value, $Res Function(CalenderState) then) =
      _$CalenderStateCopyWithImpl<$Res, CalenderState>;
  @useResult
  $Res call(
      {CalenderStatus calenderStatus,
      List<Completion> completions,
      String? error});
}

/// @nodoc
class _$CalenderStateCopyWithImpl<$Res, $Val extends CalenderState>
    implements $CalenderStateCopyWith<$Res> {
  _$CalenderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calenderStatus = null,
    Object? completions = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      calenderStatus: null == calenderStatus
          ? _value.calenderStatus
          : calenderStatus // ignore: cast_nullable_to_non_nullable
              as CalenderStatus,
      completions: null == completions
          ? _value.completions
          : completions // ignore: cast_nullable_to_non_nullable
              as List<Completion>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalenderStateImplCopyWith<$Res>
    implements $CalenderStateCopyWith<$Res> {
  factory _$$CalenderStateImplCopyWith(
          _$CalenderStateImpl value, $Res Function(_$CalenderStateImpl) then) =
      __$$CalenderStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CalenderStatus calenderStatus,
      List<Completion> completions,
      String? error});
}

/// @nodoc
class __$$CalenderStateImplCopyWithImpl<$Res>
    extends _$CalenderStateCopyWithImpl<$Res, _$CalenderStateImpl>
    implements _$$CalenderStateImplCopyWith<$Res> {
  __$$CalenderStateImplCopyWithImpl(
      _$CalenderStateImpl _value, $Res Function(_$CalenderStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calenderStatus = null,
    Object? completions = null,
    Object? error = freezed,
  }) {
    return _then(_$CalenderStateImpl(
      calenderStatus: null == calenderStatus
          ? _value.calenderStatus
          : calenderStatus // ignore: cast_nullable_to_non_nullable
              as CalenderStatus,
      completions: null == completions
          ? _value._completions
          : completions // ignore: cast_nullable_to_non_nullable
              as List<Completion>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CalenderStateImpl implements _CalenderState {
  const _$CalenderStateImpl(
      {required this.calenderStatus,
      required final List<Completion> completions,
      this.error})
      : _completions = completions;

  @override
  final CalenderStatus calenderStatus;
  final List<Completion> _completions;
  @override
  List<Completion> get completions {
    if (_completions is EqualUnmodifiableListView) return _completions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_completions);
  }

  @override
  final String? error;

  @override
  String toString() {
    return 'CalenderState(calenderStatus: $calenderStatus, completions: $completions, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalenderStateImpl &&
            (identical(other.calenderStatus, calenderStatus) ||
                other.calenderStatus == calenderStatus) &&
            const DeepCollectionEquality()
                .equals(other._completions, _completions) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, calenderStatus,
      const DeepCollectionEquality().hash(_completions), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalenderStateImplCopyWith<_$CalenderStateImpl> get copyWith =>
      __$$CalenderStateImplCopyWithImpl<_$CalenderStateImpl>(this, _$identity);
}

abstract class _CalenderState implements CalenderState {
  const factory _CalenderState(
      {required final CalenderStatus calenderStatus,
      required final List<Completion> completions,
      final String? error}) = _$CalenderStateImpl;

  @override
  CalenderStatus get calenderStatus;
  @override
  List<Completion> get completions;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$CalenderStateImplCopyWith<_$CalenderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
