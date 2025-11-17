import 'package:flutter/material.dart';
import 'package:lango/core/dependency_injection/service_locator.dart';
import 'package:lango/features/chat/presentation/screens/chat_screen.dart';

void main() {
  setupServiceLocator();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ChatScreen(),
    );
  }
}
