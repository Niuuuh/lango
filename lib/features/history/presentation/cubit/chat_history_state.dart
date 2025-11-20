import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/chat_history.dart';

part 'chat_history_state.freezed.dart';

@freezed
sealed class ChatHistoryState with _$ChatHistoryState {
  const factory ChatHistoryState.initial() = ChatHistoryInitial;

  const factory ChatHistoryState.loading() = ChatHistoryLoading;

  const factory ChatHistoryState.success({
    required ChatHistory history,
  }) = ChatHistorySuccess;

  const factory ChatHistoryState.failure() = ChatHistoryFailure;
}
