// lib/presentation/screens/habit_calendar/habit_calendar_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_tracker/features/habit/domain/entities/habit.dart';
import 'package:habit_tracker/features/habit/presentation/blocs/calender-bloc/calender_bloc.dart';
import 'package:habit_tracker/inject_container.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:get_it/get_it.dart';

class HabitCalendarScreen extends StatefulWidget {
  final Habit habit;

  const HabitCalendarScreen({Key? key, required this.habit}) : super(key: key);

  @override
  _HabitCalendarScreenState createState() => _HabitCalendarScreenState();
}

class _HabitCalendarScreenState extends State<HabitCalendarScreen> {
  DateTime _focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${widget.habit.name} Calendar')),
      body: BlocBuilder<CalendarBloc, CalenderState>(
        bloc: sl<CalendarBloc>()..add(CalendarEvent.load(widget.habit.id)),
        builder: (context, state) {
          if (state.calenderStatus == CalenderStatus.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.calenderStatus == CalenderStatus.failed) {
            return Center(child: Text('Error: ${state.error}'));
          }
          if (state.calenderStatus == CalenderStatus.loaded) {
            // Build a set of completed dates (no time component)
            final completedDays =
                state.completions
                    .map((c) => DateTime(c.date.year, c.date.month, c.date.day))
                    .toSet();

            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: TableCalendar(
                firstDay: DateTime.utc(2000, 1, 1),
                lastDay: DateTime.utc(2100, 12, 31),
                focusedDay: _focusedDay,
                selectedDayPredicate: (day) => completedDays.contains(day),
                onDaySelected: (selectedDay, focusedDay) {
                  setState(() => _focusedDay = focusedDay);
                  sl<CalendarBloc>().add(
                    CalendarEvent.toggle(widget.habit.id, selectedDay),
                  );
                },
                calendarStyle: const CalendarStyle(
                  // highlight selected days
                  isTodayHighlighted: true,
                  todayDecoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.tealAccent,
                  ),
                  selectedDecoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.teal,
                  ),
                ),
                calendarBuilders: CalendarBuilders(
                  markerBuilder: (context, date, events) {
                    if (completedDays.contains(
                      DateTime(date.year, date.month, date.day),
                    )) {
                      return const Positioned(
                        bottom: 4,
                        child: Icon(
                          Icons.check_circle,
                          size: 16,
                          color: Colors.green,
                        ),
                      );
                    }
                    return null;
                  },
                ),
              ),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
