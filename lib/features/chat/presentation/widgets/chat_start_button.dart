import 'package:flutter/material.dart';

class ChatStartButton extends StatelessWidget {
  const ChatStartButton({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text("Start"),
    );
  }
}
