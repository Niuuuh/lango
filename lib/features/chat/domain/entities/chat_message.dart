import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/domain/entities/character_animation.dart';
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
    CharacterAnimation? animation,
    required List<MessageSegment> segments,
  }) = ChatMessageAssistant;

  factory ChatMessage.fromJson(Map<String, Object?> json) =>
      _$ChatMessageFromJson(json);
}
