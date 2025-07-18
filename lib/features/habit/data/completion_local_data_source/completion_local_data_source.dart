import 'package:habit_tracker/features/habit/data/models/completion-model/completion_model.dart';
import 'package:isar/isar.dart';

class CompletionLocalDataSource {
  final Isar isar;

  CompletionLocalDataSource(this.isar);

  /// Inserts a new completion record.
  Future<void> add(CompletionModel model) async {
    await isar.writeTxn(() async {
      await isar.completionModels.put(model);
    });
  }

  /// Fetches all completions for a given habit.
  Future<List<CompletionModel>> getByHabit(String habitId) async {
    return await isar.completionModels
        .filter()
        .habitIdEqualTo(habitId)
        .findAll();
  }

  /// Deletes a completion by its domain ID.
  Future<void> deleteById(String id) async {
    await isar.writeTxn(() async {
      final existing =
          await isar.completionModels.filter().idEqualTo(id).findFirst();
      if (existing != null) {
        await isar.completionModels.delete(existing.isarId);
      }
    });
  }
}
