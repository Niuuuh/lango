import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lango/features/chat/domain/entities/assistant_chat_message.dart';

part 'chat_reply.freezed.dart';
part 'chat_reply.g.dart';

@freezed
abstract class ChatReply with _$ChatReply {
  const factory ChatReply({
    required List<AssistantChatMessage> messages,
  }) = _ChatReply;

  factory ChatReply.fromJson(Map<String, Object?> json) =>
      _$ChatReplyFromJson(json);
}
