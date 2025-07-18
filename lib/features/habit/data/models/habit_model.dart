import 'package:isar/isar.dart';
import '../../domain/entities/habit.dart';

part 'habit_model.g.dart';

/// Isar collection for persisting Habit entities locally.
@collection
class HabitModel {
  /// Auto‑incremented primary key for Isar.
  Id isarId = Isar.autoIncrement;

  /// Unique identifier carried over from the domain entity.
  late String id;

  late String name;

  /// Optional description.
  String? description;

  /// Stores the index of [RecurrenceType] enum (daily, weekly, everyXDays).
  late int recurrenceType;

  /// For “every X days” recurrence.
  int? interval;

  /// For weekly recurrence: list of weekday indices (0 = Sunday … 6 = Saturday).
  List<int>? daysOfWeek;

  late DateTime creationDate;

  /// Convert this data model back into the domain [Habit] entity.
  Habit toEntity() {
    return Habit(
      id: id,
      name: name,
      description: description,
      recurrenceType: RecurrenceType.values[recurrenceType],
      interval: interval,
      daysOfWeek: daysOfWeek,
      creationDate: creationDate,
    );
  }

  /// Create a [HabitModel] from a domain [Habit] entity.
  static HabitModel fromEntity(Habit habit) {
    return HabitModel()
      ..id = habit.id
      ..name = habit.name
      ..description = habit.description
      ..recurrenceType = habit.recurrenceType.index
      ..interval = habit.interval
      ..daysOfWeek = habit.daysOfWeek
      ..creationDate = habit.creationDate;
  }
}
