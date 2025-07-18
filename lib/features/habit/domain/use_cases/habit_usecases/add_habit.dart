import 'package:habit_tracker/features/habit/data/respository_impl/habit_repository.dart';
import 'package:habit_tracker/features/habit/domain/entities/habit.dart';

class AddHabitUseCase {
  final HabitRepository repository;

  AddHabitUseCase(this.repository);

  Future<void> call(Habit habit) async {
    return repository.addHabit(habit);
  }
}
