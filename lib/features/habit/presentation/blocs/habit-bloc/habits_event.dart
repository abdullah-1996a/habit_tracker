part of 'habits_bloc.dart';

@freezed
class HabitEvent with _$HabitEvent {
  const factory HabitEvent.loadHabits() = _LoadHabitsEvent;
  const factory HabitEvent.addHabit(Habit habit) = _AddHabitEvent;
  const factory HabitEvent.updateHabit(Habit habit) = _UpdateHabitEvent;
  const factory HabitEvent.deleteHabit(String id) = _DeleteHabitEvent;
}
