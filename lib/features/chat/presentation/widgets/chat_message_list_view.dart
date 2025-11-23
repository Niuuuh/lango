import 'package:flutter/material.dart';

import '../../domain/entities/chat_message.dart';
import 'assistant_chat_message.dart';
import 'user_chat_message.dart';

class ChatMessageListView extends StatelessWidget {
  const ChatMessageListView({
    super.key,
    required this.messages,
    this.scrollController,
    this.padding = EdgeInsets.zero,
  });

  final List<ChatMessage> messages;
  final ScrollController? scrollController;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: scrollController,
      padding: padding,
      itemCount: messages.length,
      itemBuilder: (context, index) {
        final message = messages[index];
        return message.map(
          user: (userMessage) {
            return UserChatMessage(message: userMessage);
          },
          assistant: (assistantMessage) {
            return AssistantChatMessage(message: assistantMessage);
          },
        );
      },
    );
  }
}
