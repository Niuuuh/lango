import 'dart:math';

import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';

import '../../../../app/theme.dart';
import '../../../../core/domain/entities/character_animation.dart';
import '../../../../core/presentation/widgets/character.dart';
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

  bool _withAChanceOfOneIn(int chance) {
    return Random(message.hashCode).nextInt(chance) == 0;
  }

  @override
  Widget build(BuildContext context) {
    final isInCharacter = message.type == MessageType.inCharacter;

    return Padding(
      padding: EdgeInsets.only(top: 8, bottom: 8, right: 32),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Character(
            action: _withAChanceOfOneIn(3)
                ? message.animation ?? CharacterAnimation.idle
                : CharacterAnimation.idle,
            direction: CharacterDirection.right,
            width: 64,
          ),
          Expanded(
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
        ],
      ),
    );
  }
}
