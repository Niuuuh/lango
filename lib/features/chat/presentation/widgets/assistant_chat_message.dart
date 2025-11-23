import 'package:flutter/material.dart';

import '../../domain/entities/chat_message.dart';
import '../../domain/entities/message_type.dart';
import 'action_chat_message.dart';
import 'character_chat_message.dart';

class AssistantChatMessage extends StatelessWidget {
  const AssistantChatMessage({
    super.key,
    required this.message,
  });

  final ChatMessageAssistant message;

  @override
  Widget build(BuildContext context) {
    return switch (message.type) {
      MessageType.action => ActionChatMessage(message: message),
      MessageType.inCharacter || MessageType.outOfCharacter =>
          CharacterChatMessage(message: message),
    };
  }
}
