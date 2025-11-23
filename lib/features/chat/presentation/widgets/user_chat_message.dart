import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';

import '../../../../app/theme.dart';
import '../../../../core/presentation/widgets/shaded_bubble.dart';
import '../../domain/entities/chat_message.dart';

class UserChatMessage extends StatelessWidget {
  const UserChatMessage({
    super.key,
    required this.message,
  });

  final ChatMessageUser message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 4, bottom: 8, left: 60),
      child: Align(
        alignment: Alignment.centerRight,
        child: ShadedBubble(
          color: LingoColors.primaryContainer,
          nip: BubbleNip.rightTop,
          child: Text(
            message.text,
            style: TextStyle(
              color: LingoColors.onPrimaryContainer,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
