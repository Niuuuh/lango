import 'package:flutter/material.dart';

import '../../../../app/theme.dart';
import '../../domain/entities/chat_message.dart';
import 'text_with_translations.dart';

class ActionChatMessage extends StatelessWidget {
  const ActionChatMessage({
    super.key,
    required this.message,
  });

  final ChatMessageAssistant message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Align(
        alignment: Alignment.center,
        child: TextWithTranslations(
          segments: message.segments,
          style: TextStyle(
            color: LingoColors.onSurfaceVariant,
            fontSize: 18,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }
}
