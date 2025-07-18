part of 'habits_bloc.dart';

enum HabitStatus { init, loading, loaded, failed }

@freezed
abstract class HabitState with _$HabitState {
  const factory HabitState({
    required HabitStatus habitStatus,
    required List<Habit> habits,
    Habit? habit,
    String? errorMessage,
  }) = _HabitState;
}
