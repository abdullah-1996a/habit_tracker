import 'package:habit_tracker/features/habit/data/respository_impl/completion_repository.dart';

class DeleteCompletionUseCase {
  final CompletionRepository repo;
  DeleteCompletionUseCase(this.repo);

  Future<void> call(String id) {
    return repo.deleteCompletion(id);
  }
}
