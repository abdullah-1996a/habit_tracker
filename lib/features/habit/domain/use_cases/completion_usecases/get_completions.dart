import 'package:habit_tracker/features/habit/data/respository_impl/completion_repository.dart';
import 'package:habit_tracker/features/habit/domain/entities/completion/completion.dart';

class GetCompletionsUseCase {
  final CompletionRepository repo;
  GetCompletionsUseCase(this.repo);

  Future<List<Completion>> call(String habitId) {
    return repo.getCompletions(habitId);
  }
}
