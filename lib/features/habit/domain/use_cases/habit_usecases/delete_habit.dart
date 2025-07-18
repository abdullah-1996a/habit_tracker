import 'package:habit_tracker/features/habit/data/respository_impl/habit_repository.dart';

class DeleteHabitUseCase {
  final HabitRepository repository;

  DeleteHabitUseCase(this.repository);

  Future<void> call(String id) async {
    return repository.deleteHabit(id);
  }
}
