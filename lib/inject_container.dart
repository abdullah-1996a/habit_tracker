import 'package:get_it/get_it.dart';
import 'package:habit_tracker/features/habit/data/completion_local_data_source/completion_local_data_source.dart';
import 'package:habit_tracker/features/habit/data/habit_local_data_source/habit_local_data_source.dart';
import 'package:habit_tracker/features/habit/data/models/completion-model/completion_model.dart';
import 'package:habit_tracker/features/habit/data/models/habit_model.dart';
import 'package:habit_tracker/features/habit/data/respository_impl/completion_repository.dart';
import 'package:habit_tracker/features/habit/data/respository_impl/habit_repository.dart';
import 'package:habit_tracker/features/habit/domain/use_cases/completion_usecases/add_completion.dart';
import 'package:habit_tracker/features/habit/domain/use_cases/completion_usecases/delete_completion.dart';
import 'package:habit_tracker/features/habit/domain/use_cases/completion_usecases/get_completions.dart';
import 'package:habit_tracker/features/habit/domain/use_cases/habit_usecases/add_habit.dart';
import 'package:habit_tracker/features/habit/domain/use_cases/habit_usecases/delete_habit.dart';
import 'package:habit_tracker/features/habit/domain/use_cases/habit_usecases/get_habits.dart';
import 'package:habit_tracker/features/habit/domain/use_cases/habit_usecases/update_habit.dart';
import 'package:habit_tracker/features/habit/presentation/blocs/calender-bloc/calender_bloc.dart';
import 'package:habit_tracker/features/habit/presentation/blocs/habit-bloc/habits_bloc.dart';
import 'package:isar/isar.dart';

import 'package:path_provider/path_provider.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // External
  final dir = await getApplicationDocumentsDirectory();
  final isar = await Isar.open([
    HabitModelSchema,
    CompletionModelSchema,
  ], directory: dir.path);
  sl.registerSingleton<Isar>(isar);

  // Data sources
  sl.registerLazySingleton(() => HabitLocalDataSource(sl()));
  sl.registerLazySingleton(() => CompletionLocalDataSource(sl()));

  // Repository
  sl.registerLazySingleton<HabitRepository>(() => HabitRepositoryImpl(sl()));
  sl.registerLazySingleton<CompletionRepository>(
    () => CompletionRepositoryImpl(sl()),
  );

  // Use Cases
  sl.registerLazySingleton(() => AddHabitUseCase(sl()));
  sl.registerLazySingleton(() => GetHabitsUseCase(sl()));
  sl.registerLazySingleton(() => DeleteHabitUseCase(sl()));
  sl.registerLazySingleton(() => UpdateHabitUseCase(sl()));
  //
  sl.registerLazySingleton(() => AddCompletionUseCase(sl()));
  sl.registerLazySingleton(() => GetCompletionsUseCase(sl()));
  sl.registerLazySingleton(() => DeleteCompletionUseCase(sl()));

  // Habits-Bloc
  sl.registerLazySingleton(
    () => HabitBloc(
      addHabitUseCase: sl(),
      deleteHabitUseCase: sl(),
      getHabitsUseCase: sl(),
      updateHabitUseCase: sl(),
    ),
  );
  //
  sl.registerFactory(
    () => CalendarBloc(getUseCase: sl(), addUseCase: sl(), deleteUseCase: sl()),
  );
}
