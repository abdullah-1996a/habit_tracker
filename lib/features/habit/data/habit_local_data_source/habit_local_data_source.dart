import 'package:isar/isar.dart';
import '../models/habit_model.dart';

class HabitLocalDataSource {
  final Isar isar;

  HabitLocalDataSource(this.isar);

  Future<void> addHabit(HabitModel habit) async {
    await isar.writeTxn(() async {
      await isar.habitModels.put(habit);
    });
  }

  Future<List<HabitModel>> getAllHabits() async {
    return await isar.habitModels.where().findAll();
  }

  Future<void> deleteHabit(String id) async {
    await isar.writeTxn(() async {
      final toDelete =
          await isar.habitModels.filter().idEqualTo(id).findFirst();
      if (toDelete != null) {
        await isar.habitModels.delete(toDelete.isarId);
      }
    });
  }

  Future<void> updateHabit(HabitModel habit) async {
    await isar.writeTxn(() async {
      final existing =
          await isar.habitModels.filter().idEqualTo(habit.id).findFirst();

      if (existing != null) {
        habit.isarId = existing.isarId;
      }

      await isar.habitModels.put(habit);
    });
  }
}
