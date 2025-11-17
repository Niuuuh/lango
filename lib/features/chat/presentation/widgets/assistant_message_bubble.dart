import 'package:flutter/material.dart';

import '../../domain/entities/chat_message.dart';

class AssistantMessageBubble extends StatelessWidget {
  const AssistantMessageBubble({super.key, required this.message});

  final AssistantChatMessage message;

  @override
  Widget build(BuildContext context) {
    final vocabularyStyle = TextStyle(
      decoration: TextDecoration.underline,
      decorationStyle: TextDecorationStyle.dashed,
    );
    return ListTile(
      title: Text.rich(
        TextSpan(
          children: [
            for (final segment in message.segments)
              ...[
                TextSpan(
                  text: segment.text,
                  style: segment.translation != null ? vocabularyStyle : null,
                ),
                TextSpan(text: ' '),
              ],
          ],
        ),
      ),
    );
  }
}
