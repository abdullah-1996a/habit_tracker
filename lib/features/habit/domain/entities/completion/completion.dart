import 'package:freezed_annotation/freezed_annotation.dart';

part 'completion.freezed.dart';

@freezed
class Completion with _$Completion {
  const factory Completion({
    required String id,
    required String habitId,
    required DateTime date,
  }) = _Completion;
}
