import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habit_tracker/features/habit/domain/entities/habit.dart';
import 'package:habit_tracker/features/habit/domain/use_cases/habit_usecases/add_habit.dart';
import 'package:habit_tracker/features/habit/domain/use_cases/habit_usecases/delete_habit.dart';
import 'package:habit_tracker/features/habit/domain/use_cases/habit_usecases/get_habits.dart';
import 'package:habit_tracker/features/habit/domain/use_cases/habit_usecases/update_habit.dart';

part 'habits_event.dart';
part 'habits_state.dart';
part 'habits_bloc.freezed.dart';

class HabitBloc extends Bloc<HabitEvent, HabitState> {
  final GetHabitsUseCase getHabitsUseCase;
  final AddHabitUseCase addHabitUseCase;
  final UpdateHabitUseCase updateHabitUseCase;
  final DeleteHabitUseCase deleteHabitUseCase;

  HabitBloc({
    required this.getHabitsUseCase,
    required this.addHabitUseCase,
    required this.updateHabitUseCase,
    required this.deleteHabitUseCase,
  }) : super(const HabitState(habitStatus: HabitStatus.init, habits: [])) {
    on<_LoadHabitsEvent>(_onLoadHabits);
    on<_AddHabitEvent>(_onAddHabit);
    on<_UpdateHabitEvent>(_onUpdateHabit);
    on<_DeleteHabitEvent>(_onDeleteHabit);
  }
  Future<void> _onLoadHabits(
    _LoadHabitsEvent event,
    Emitter<HabitState> emit,
  ) async {
    emit(state.copyWith(habitStatus: HabitStatus.loading));
    try {
      final habits = await getHabitsUseCase();
      emit(state.copyWith(habitStatus: HabitStatus.loaded, habits: habits));
    } catch (e) {
      emit(
        state.copyWith(
          habitStatus: HabitStatus.failed,
          errorMessage: e.toString(),
        ),
      );
    }
  }

  Future<void> _onAddHabit(
    _AddHabitEvent event,
    Emitter<HabitState> emit,
  ) async {
    try {
      await addHabitUseCase(event.habit);
      add(const HabitEvent.loadHabits());
    } catch (e) {
      // we can handle adding error.
    }
  }

  Future<void> _onUpdateHabit(
    _UpdateHabitEvent event,
    Emitter<HabitState> emit,
  ) async {
    try {
      await updateHabitUseCase(event.habit);
      add(const HabitEvent.loadHabits());
    } catch (e) {}
  }

  Future<void> _onDeleteHabit(
    _DeleteHabitEvent event,
    Emitter<HabitState> emit,
  ) async {
    try {
      await deleteHabitUseCase(event.id);
      add(const HabitEvent.loadHabits());
    } catch (e) {}
  }
}
