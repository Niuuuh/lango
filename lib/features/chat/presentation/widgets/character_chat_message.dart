import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';

import '../../../../app/theme.dart';
import '../../../../core/presentation/widgets/shaded_bubble.dart';
import '../../domain/entities/chat_message.dart';
import '../../domain/entities/message_type.dart';
import 'text_with_translations.dart';

class CharacterChatMessage extends StatelessWidget {
  const CharacterChatMessage({
    super.key,
    required this.message,
  });

  final ChatMessageAssistant message;

  @override
  Widget build(BuildContext context) {
    final isInCharacter = message.type == MessageType.inCharacter;

    return Padding(
      padding: EdgeInsets.only(top: 4, bottom: 8, right: 60),
      child: Align(
        alignment: Alignment.centerLeft,
        child: ShadedBubble(
          nip: BubbleNip.leftTop,
          child: TextWithTranslations(
            segments: message.segments,
            style: TextStyle(
              color: LingoColors.onSecondaryContainer,
              fontSize: 18,
              fontStyle: isInCharacter ? FontStyle.normal : FontStyle.italic,
            ),
          ),
        ),
      ),
    );
  }
}
