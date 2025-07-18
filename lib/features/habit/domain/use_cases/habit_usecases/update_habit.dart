import 'package:habit_tracker/features/habit/data/respository_impl/habit_repository.dart';
import 'package:habit_tracker/features/habit/domain/entities/habit.dart';

class UpdateHabitUseCase {
  final HabitRepository repository;

  UpdateHabitUseCase(this.repository);

  Future<void> call(Habit habit) async {
    return repository.updateHabit(habit);
  }
}
