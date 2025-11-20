import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../bloc/chat_bloc.dart';
import '../bloc/chat_event.dart';
import '../bloc/chat_state.dart';

class InputBar extends StatefulWidget {
  const InputBar({super.key});

  @override
  State<InputBar> createState() => _InputBarState();
}

class _InputBarState extends State<InputBar> {
  final _controller = TextEditingController();

  void _onSubmitted(String value) {
    final message = value.trim();
    if (message.isEmpty) return;
    context.read<ChatBloc>().add(ChatMessageSent(message));
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatBloc, ChatState>(
      listener: (context, state) {
        if (state is ChatSuccess) {
          _controller.clear();
        }
      },
      builder: (context, state) {
        if (state is ChatClosing) {
          return ElevatedButton(
            onPressed: () => context.pop(),
            child: Text("Continue"),
          );
        }
        final canSubmit = state is ChatSuccess || state is ChatFailure;
        return TextField(
          controller: _controller,
          decoration: InputDecoration(
            hintText: "Respond in German...",
            suffixIcon: state is ChatLoading
                ? CircularProgressIndicator()
                : Icon(Icons.send),
          ),
          textInputAction: TextInputAction.send,
          keyboardType: TextInputType.text,
          onSubmitted: canSubmit ? _onSubmitted : null,
        );
      }
    );
  }
}
