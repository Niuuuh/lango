import 'package:freezed_annotation/freezed_annotation.dart';

part 'typing_state.freezed.dart';

enum TypingStatus { initial, idle, typing }

@freezed
sealed class TypingState with _$TypingState {
  const factory TypingState({
    @Default(TypingStatus.initial) TypingStatus status,
    @Default('') String text,
  }) = _TypingState;
}
