import 'package:habit_tracker/features/habit/data/respository_impl/habit_repository.dart';
import 'package:habit_tracker/features/habit/domain/entities/habit.dart';

class GetHabitsUseCase {
  final HabitRepository repository;

  GetHabitsUseCase(this.repository);

  Future<List<Habit>> call() async {
    return repository.getAllHabits();
  }
}
