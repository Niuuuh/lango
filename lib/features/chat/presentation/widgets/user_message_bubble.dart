import 'package:flutter/material.dart';

import '../../domain/entities/chat_message.dart';

class UserMessageBubble extends StatelessWidget {
  const UserMessageBubble({super.key, required this.message});

  final UserChatMessage message;

  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text(message.text));
  }
}
