import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/chat_message.dart';

part 'chat_state.freezed.dart';

@freezed
sealed class ChatState with _$ChatState {
  const factory ChatState.initial({
    @Default([]) List<ChatMessage> messages,
  }) = ChatInitial;

  const factory ChatState.loading({
    required List<ChatMessage> messages,
  }) = ChatLoading;

  const factory ChatState.success({
    required List<ChatMessage> messages,
  }) = ChatSuccess;

  const factory ChatState.closing({
    required List<ChatMessage> messages,
  }) = ChatClosing;

  const factory ChatState.failure({
    required List<ChatMessage> messages,
    required Exception error,
  }) = ChatFailure;
}
