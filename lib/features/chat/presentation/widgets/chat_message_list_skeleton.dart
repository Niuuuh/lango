import 'package:flutter/material.dart';

import '../../../../app/theme.dart';
import '../../../../core/presentation/widgets/skeleton.dart';
import '../../domain/entities/chat_message.dart';
import '../../domain/entities/message_segment.dart';
import '../../domain/entities/message_type.dart';
import 'assistant_chat_message.dart';

class ChatMessageListSkeleton extends StatelessWidget {
  const ChatMessageListSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeleton(
      child: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.all(19),
              width: 200,
              height: 18,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: LingoColors.surfaceVariant,
              ),
            ),
          ),
          AssistantChatMessage(
            message: ChatMessageAssistant(
              type: MessageType.inCharacter,
              segments: [
                MessageSegment(
                  text: "This is a skeleton message used as a placeholder",
                  translation: null,
                ),
              ],
            )
          ),
          AssistantChatMessage(
            message: ChatMessageAssistant(
              type: MessageType.inCharacter,
              segments: [
                MessageSegment(
                  text: "while the actual message is loading.",
                  translation: null,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
