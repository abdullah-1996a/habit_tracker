import 'package:habit_tracker/features/habit/domain/entities/completion/completion.dart';
import 'package:isar/isar.dart';

part 'completion_model.g.dart';

@collection
class CompletionModel {
  /// Internal Isar primary key
  Id isarId = Isar.autoIncrement;

  /// Corresponds to Completion.id
  late String id;

  /// Which habit this completion belongs to
  late String habitId;

  /// The calendar date of completion
  late DateTime date;

  /// Convert Isar model → domain entity
  Completion toEntity() {
    return Completion(id: id, habitId: habitId, date: date);
  }

  /// Convert domain entity → Isar model
  static CompletionModel fromEntity(Completion c) {
    return CompletionModel()
      ..id = c.id
      ..habitId = c.habitId
      ..date = c.date;
  }
}
