import 'package:habit_tracker/features/habit/data/completion_local_data_source/completion_local_data_source.dart';
import 'package:habit_tracker/features/habit/data/models/completion-model/completion_model.dart';
import 'package:habit_tracker/features/habit/domain/entities/completion/completion.dart';

abstract class CompletionRepository {
  Future<void> addCompletion(Completion c);
  Future<List<Completion>> getCompletions(String habitId);
  Future<void> deleteCompletion(String id);
}

class CompletionRepositoryImpl implements CompletionRepository {
  final CompletionLocalDataSource localDs;

  CompletionRepositoryImpl(this.localDs);

  @override
  Future<void> addCompletion(Completion completion) async {
    final model = CompletionModel.fromEntity(completion);
    await localDs.add(model);
  }

  @override
  Future<List<Completion>> getCompletions(String habitId) async {
    final models = await localDs.getByHabit(habitId);
    return models.map((m) => m.toEntity()).toList();
  }

  @override
  Future<void> deleteCompletion(String id) async {
    await localDs.deleteById(id);
  }
}
