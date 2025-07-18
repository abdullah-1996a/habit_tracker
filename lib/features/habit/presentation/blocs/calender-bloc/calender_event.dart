part of 'calender_bloc.dart';

@freezed
class CalendarEvent with _$CalendarEvent {
  /// Load all completions for a given habit
  const factory CalendarEvent.load(String habitId) = _LoadCalendar;

  /// Toggle completion on or off for a specific date
  const factory CalendarEvent.toggle(String habitId, DateTime date) =
      _ToggleCompletion;
}
