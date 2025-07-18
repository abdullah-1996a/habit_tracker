import 'package:bloc/bloc.dart';
import 'package:habit_tracker/features/habit/domain/entities/completion/completion.dart';
import 'package:habit_tracker/features/habit/domain/use_cases/completion_usecases/add_completion.dart';
import 'package:habit_tracker/features/habit/domain/use_cases/completion_usecases/delete_completion.dart';
import 'package:habit_tracker/features/habit/domain/use_cases/completion_usecases/get_completions.dart';
import 'package:uuid/uuid.dart';
import 'package:collection/collection.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'calender_event.dart';
part 'calender_state.dart';
part 'calender_bloc.freezed.dart';

class CalendarBloc extends Bloc<CalendarEvent, CalenderState> {
  final GetCompletionsUseCase getUseCase;
  final AddCompletionUseCase addUseCase;
  final DeleteCompletionUseCase deleteUseCase;
  final _uuid = Uuid();

  CalendarBloc({
    required this.getUseCase,
    required this.addUseCase,
    required this.deleteUseCase,
  }) : super(
         CalenderState(calenderStatus: CalenderStatus.init, completions: []),
       ) {
    on<_LoadCalendar>(_onLoad);
    on<_ToggleCompletion>(_onToggle);
  }

  Future<void> _onLoad(_LoadCalendar event, Emitter<CalenderState> emit) async {
    try {
      final list = await getUseCase(event.habitId);
      emit(
        state.copyWith(
          completions: list,
          calenderStatus: CalenderStatus.loaded,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          error: e.toString(),
          calenderStatus: CalenderStatus.failed,
        ),
      );
    }
  }

  Future<void> _onToggle(
    _ToggleCompletion event,
    Emitter<CalenderState> emit,
  ) async {
    final current = state.completions;

    // Check if there's already a completion for that day
    final existing = current.firstWhereOrNull(
      (c) =>
          c.date.year == event.date.year &&
          c.date.month == event.date.month &&
          c.date.day == event.date.day,
    );

    if (existing != null) {
      // Undo completion
      await deleteUseCase(existing.id);
    } else {
      // Add new completion
      final newC = Completion(
        id: _uuid.v4(),
        habitId: event.habitId,
        date: event.date,
      );
      await addUseCase(newC);
    }

    // Refresh the calendar view
    add(CalendarEvent.load(event.habitId));
  }
}
