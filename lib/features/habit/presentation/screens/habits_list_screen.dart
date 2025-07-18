import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_tracker/features/habit/domain/entities/habit.dart';
import 'package:habit_tracker/features/habit/presentation/blocs/habit-bloc/habits_bloc.dart';
import 'package:habit_tracker/features/habit/presentation/screens/add_edit_habit_screen.dart';
import 'package:habit_tracker/features/habit/presentation/screens/habit_calender_screen.dart';
import 'package:habit_tracker/features/habit/presentation/screens/habits_state_screen.dart';
import 'package:habit_tracker/inject_container.dart';

class HabitListScreen extends StatelessWidget {
  const HabitListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Your Habits')),
      body: BlocBuilder<HabitBloc, HabitState>(
        bloc: sl<HabitBloc>()..add(HabitEvent.loadHabits()),
        builder: (context, state) {
          if (state.habitStatus == HabitStatus.loading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state.habitStatus == HabitStatus.loaded) {
            final List<Habit> habits = state.habits;
            if (habits.isEmpty) {
              return const Center(child: Text('No habits yet'));
            }
            return ListView.builder(
              itemCount: habits.length,
              itemBuilder: (context, i) {
                final h = habits[i];
                return ListTile(
                  title: Text(h.name),
                  subtitle: Text(h.recurrenceType.name),
                  onTap:
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => HabitCalendarScreen(habit: h),
                        ),
                      ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.bar_chart),
                        onPressed:
                            () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => HabitStatsScreen(habit: h),
                              ),
                            ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed:
                            () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => AddEditHabitScreen(habit: h),
                              ),
                            ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          sl<HabitBloc>().add(HabitEvent.deleteHabit(h.id));
                        },
                      ),
                    ],
                  ),
                );
              },
            );
          } else if (state.habitStatus == HabitStatus.failed) {
            return Center(child: Text('Error: ${state.errorMessage}'));
          }
          return const SizedBox.shrink();
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const AddEditHabitScreen()),
            ),
        child: const Icon(Icons.add),
      ),
    );
  }
}
