import 'package:habit_tracker/features/habit/data/habit_local_data_source/habit_local_data_source.dart';

import '../../domain/entities/habit.dart';

import '../models/habit_model.dart';

abstract class HabitRepository {
  Future<void> addHabit(Habit habit);
  Future<List<Habit>> getAllHabits();
  Future<void> updateHabit(Habit habit);
  Future<void> deleteHabit(String id);
}

class HabitRepositoryImpl implements HabitRepository {
  final HabitLocalDataSource localDataSource;

  HabitRepositoryImpl(this.localDataSource);

  @override
  Future<void> addHabit(Habit habit) async {
    final model = HabitModel.fromEntity(habit);
    await localDataSource.addHabit(model);
  }

  @override
  Future<List<Habit>> getAllHabits() async {
    final models = await localDataSource.getAllHabits();
    return models.map((e) => e.toEntity()).toList();
  }

  @override
  Future<void> deleteHabit(String id) async {
    await localDataSource.deleteHabit(id);
  }

  @override
  Future<void> updateHabit(Habit habit) async {
    final model = HabitModel.fromEntity(habit);
    await localDataSource.updateHabit(model);
  }
}
