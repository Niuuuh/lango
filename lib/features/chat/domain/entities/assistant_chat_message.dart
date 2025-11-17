import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lango/features/chat/domain/entities/chat_message.dart';
import 'package:lango/features/chat/domain/entities/message_type.dart';

import 'message_role.dart';
import 'message_segment.dart';

part 'assistant_chat_message.freezed.dart';
part 'assistant_chat_message.g.dart';

@freezed
abstract class AssistantChatMessage with _$AssistantChatMessage {
  const factory AssistantChatMessage({
    required MessageType type,
    required List<MessageSegment> segments,
  }) = _AssistantChatMessage;

  factory AssistantChatMessage.fromJson(Map<String, Object?> json) =>
      _$AssistantChatMessageFromJson(json);

  ChatMessage toChatMessage() {
    String combinedText = segments.map((segment) => segment.text).join(' ');
    return ChatMessage(
      type: type,
      role: MessageRole.assistant,
      text: combinedText,
    );
  }
}
