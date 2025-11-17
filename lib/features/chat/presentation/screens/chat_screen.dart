import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lango/features/chat/presentation/bloc/chat_bloc.dart';

import '../../../../core/dependency_injection/service_locator.dart';
import '../bloc/chat_event.dart';
import '../bloc/chat_state.dart';
import '../widgets/chat_list_view.dart';
import '../widgets/input_bar.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ChatBloc>()..add(const ChatStarted()),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(child: ChatListView()),
              InputBar(),
            ],
          ),
        ),
      ),
    );
  }
}
