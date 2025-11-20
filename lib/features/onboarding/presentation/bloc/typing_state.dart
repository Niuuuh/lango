import 'package:freezed_annotation/freezed_annotation.dart';

part 'typing_state.freezed.dart';

enum TypingStatus { initial, idle, typing }

@freezed
sealed class TypingState with _$TypingState {
  static const initial = TypingState(status: TypingStatus.initial, text: '');

  const factory TypingState({
    required TypingStatus status,
    required String text,
  }) = _TypingState;
}
