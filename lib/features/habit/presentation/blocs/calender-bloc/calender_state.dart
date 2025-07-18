part of 'calender_bloc.dart';

enum CalenderStatus { init, loading, loaded, failed }

@freezed
class CalenderState with _$CalenderState {
  const factory CalenderState({
    required CalenderStatus calenderStatus,
    required List<Completion> completions,
    String? error,
  }) = _CalenderState;
}
