import 'package:freezed_annotation/freezed_annotation.dart';

part 'habit.freezed.dart';
part 'habit.g.dart';

/// Defines the recurrence patterns supported by a Habit.
enum RecurrenceType { daily, weekly, everyXDays }

@freezed
abstract class Habit with _$Habit {
  ///
  /// - [id]: a unique UUID string
  /// - [name]: the habit’s title
  /// - [description]: optional details
  /// - [recurrenceType]: one of daily, weekly, or everyXDays
  /// - [interval]: when [recurrenceType] is everyXDays, this is the “X”
  /// - [daysOfWeek]: when [recurrenceType] is weekly, indexes 0–6 (Sun–Sat)
  /// - [creationDate]
  const factory Habit({
    required String id,

    required String name,
    String? description,
    required RecurrenceType recurrenceType,
    int? interval,
    List<int>? daysOfWeek,
    required DateTime creationDate,
  }) = _Habit;

  factory Habit.fromJson(Map<String, dynamic> json) => _$HabitFromJson(json);
}
