import 'package:habit_tracker/features/habit/data/respository_impl/completion_repository.dart';
import 'package:habit_tracker/features/habit/domain/entities/completion/completion.dart';

class AddCompletionUseCase {
  final CompletionRepository repo;
  AddCompletionUseCase(this.repo);

  Future<void> call(Completion c) {
    return repo.addCompletion(c);
  }
}
