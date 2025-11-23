import 'package:flutter/material.dart';

import '../../../../core/utils/context_extension.dart';
import '../../../chat/presentation/widgets/chat_message_list_view.dart';
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
        child: Padding(
          padding: EdgeInsets.all(8),
          child: ChatMessageListView(
            messages: entry.messages,
          ),
        ),
      ),
    );
  }
}
