import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:habit_tracker/features/habit/domain/entities/habit.dart';
import 'package:habit_tracker/features/habit/presentation/blocs/calender-bloc/calender_bloc.dart';
import 'package:habit_tracker/inject_container.dart';

class HabitStatsScreen extends StatelessWidget {
  final Habit habit;

  const HabitStatsScreen({super.key, required this.habit});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${habit.name} Stats')),
      body: BlocBuilder<CalendarBloc, CalenderState>(
        bloc: sl<CalendarBloc>()..add(CalendarEvent.load(habit.id)),
        builder: (context, state) {
          if (state.calenderStatus == CalenderStatus.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.calenderStatus == CalenderStatus.failed) {
            return Center(child: Text('Error: ${state.error}'));
          }
          if (state.calenderStatus == CalenderStatus.loaded) {
            // Deduplicate by date (strip time)
            final uniqueDays =
                state.completions
                    .map((c) => DateTime(c.date.year, c.date.month, c.date.day))
                    .toSet();

            final now = DateTime.now();
            final totalDays =
                now.difference(habit.creationDate).inDays + 1; // inclusive
            final completedCount = uniqueDays.length;
            final completionRate =
                totalDays > 0
                    ? ((completedCount / totalDays) * 100).round()
                    : 0;

            final sevenDaysAgo = DateTime(
              now.year,
              now.month,
              now.day,
            ).subtract(const Duration(days: 6));
            final last7 =
                uniqueDays
                    .where((d) => !d.isBefore(sevenDaysAgo) && !d.isAfter(now))
                    .length;

            final thirtyDaysAgo = DateTime(
              now.year,
              now.month,
              now.day,
            ).subtract(const Duration(days: 29));
            final last30 =
                uniqueDays
                    .where((d) => !d.isBefore(thirtyDaysAgo) && !d.isAfter(now))
                    .length;

            return Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Overall completion rate:',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  Text(
                    '$completionRate%',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'Completed in last 7 days:',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  Text(
                    '$last7 / 7',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Completed in last 30 days:',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  Text(
                    '$last30 / 30',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
