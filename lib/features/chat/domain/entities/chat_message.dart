import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'message_segment.dart';
import 'message_type.dart';

part 'chat_message.freezed.dart';
part 'chat_message.g.dart';

@Freezed(fallbackUnion: 'assistant')
abstract class ChatMessage with _$ChatMessage {
  const factory ChatMessage.user({
    required String text,
  }) = ChatMessageUser;

  const factory ChatMessage.assistant({
    required MessageType type,
    required List<MessageSegment> segments,
  }) = ChatMessageAssistant;

  factory ChatMessage.fromJson(Map<String, Object?> json) =>
      _$ChatMessageFromJson(json);
}
