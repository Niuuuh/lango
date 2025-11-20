import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lango/features/history/domain/entities/chat_history_entry.dart';

part 'chat_history.freezed.dart';
part 'chat_history.g.dart';

@freezed
abstract class ChatHistory with _$ChatHistory {
  const factory ChatHistory({
    required List<ChatHistoryEntry> entries,
  }) = _ChatHistory;

  factory ChatHistory.fromJson(Map<String, Object?> json) =>
      _$ChatHistoryFromJson(json);
}
