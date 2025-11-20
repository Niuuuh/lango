import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../chat/domain/entities/chat_message.dart';

part 'chat_history_entry.freezed.dart';
part 'chat_history_entry.g.dart';

@freezed
abstract class ChatHistoryEntry with _$ChatHistoryEntry {
  const factory ChatHistoryEntry({
    required String languageId,
    required String topicId,
    required DateTime date,
    required List<ChatMessage> messages,
  }) = _ChatHistoryEntry;

  factory ChatHistoryEntry.fromJson(Map<String, Object?> json) =>
      _$ChatHistoryEntryFromJson(json);
}
