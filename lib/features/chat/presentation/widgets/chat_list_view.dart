import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/chat_bloc.dart';
import '../bloc/chat_state.dart';
import 'chat_message_list_skeleton.dart';
import 'chat_message_list_view.dart';

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
        state.whenOrNull(
          success: (messages) => _scrollToBottom(),
          failure: (messages, error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Error sending message.')),
            );
            if (kDebugMode) throw error;
          },
        );
      },
      builder: (context, state) {
        if (state.messages.isEmpty) {
          return ChatMessageListSkeleton();
        }
        return ChatMessageListView(
          messages: state.messages,
          scrollController: _scrollController,
          padding: EdgeInsets.only(bottom: screenSize.width * 0.8),
        );
      }
    );
  }
}
