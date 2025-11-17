import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/chat_message.dart';

part 'chat_state.freezed.dart';

@freezed
sealed class ChatState with _$ChatState {
  const ChatState._();

  const factory ChatState.initial() = ChatInitial;

  const factory ChatState.loading(List<ChatMessage> messages) = ChatLoading;

  const factory ChatState.success(List<ChatMessage> messages) = ChatSuccess;

  const factory ChatState.failure(
    List<ChatMessage> messages,
    Exception error,
  ) = ChatFailure;

  List<ChatMessage> get messages {
    return map(
      initial: (_) => [],
      loading: (state) => state.messages,
      success: (state) => state.messages,
      failure: (state) => state.messages,
    );
  }
}
