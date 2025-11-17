import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lango/features/chat/domain/entities/chat_message.dart';
import 'package:lango/features/chat/presentation/widgets/user_message_bubble.dart';

import '../bloc/chat_bloc.dart';
import '../bloc/chat_state.dart';
import 'assistant_message_bubble.dart';

class ChatListView extends StatefulWidget {
  const ChatListView({super.key});

  @override
  State<ChatListView> createState() => _ChatListViewState();
}

class _ChatListViewState extends State<ChatListView> {
  final _scrollController = ScrollController();

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: Duration(milliseconds: 250),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return BlocConsumer<ChatBloc, ChatState>(
      listener: (context, state) {
        if (state is ChatSuccess) {
          _scrollToBottom();
        }
      },
      builder: (context, state) {
        return ListView.builder(
          controller: _scrollController,
          padding: EdgeInsets.only(bottom: screenSize.width * 0.8),
          itemCount: state.messages.length,
          itemBuilder: (context, index) {
            final message = state.messages[index];
            return message.map(
              user: (userMessage) => UserMessageBubble(message: userMessage),
              assistant: (assistantMessage) => AssistantMessageBubble(message: assistantMessage),
            );
          },
        );
      }
    );
  }
}
