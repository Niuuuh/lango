import 'package:flutter/material.dart';
import 'package:lango/core/utils/context_extension.dart';
import 'package:lango/features/chat/domain/entities/chat_message.dart';

import '../../../chat/presentation/widgets/assistant_message_bubble.dart';
import '../../../chat/presentation/widgets/user_message_bubble.dart';
import '../../domain/entities/chat_history_entry.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({
    super.key,
    required this.entry,
  });

  final ChatHistoryEntry entry;

  @override
  Widget build(BuildContext context) {
    final topic = context.topic!;
    return Scaffold(
      appBar: AppBar(title: Text(topic.title)),
      body: SafeArea(
        child: ListView.builder(
          itemCount: entry.messages.length,
          itemBuilder: (context, index) {
            final message = entry.messages[index];
            return message.map(
              user: (userMessage) {
                return UserMessageBubble(message: userMessage);
              },
              assistant: (assistantMessage) {
                return AssistantMessageBubble(message: assistantMessage);
              },
            );
          },
        ),
      ),
    );
  }
}
