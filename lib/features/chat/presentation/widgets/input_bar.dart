import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/theme.dart';
import '../../../../core/presentation/widgets/button.dart';
import '../../../../core/utils/context_extension.dart';
import '../../../../core/utils/string_extension.dart';
import '../bloc/chat_bloc.dart';
import '../bloc/chat_event.dart';
import '../bloc/chat_state.dart';
import 'loading_indicator.dart';

class InputBar extends StatefulWidget {
  const InputBar({super.key});

  @override
  State<InputBar> createState() => _InputBarState();
}

class _InputBarState extends State<InputBar> {
  final _controller = TextEditingController();

  void _submit(String value) {
    final message = value.trim();
    if (message.isEmpty) return;
    context.read<ChatBloc>().add(ChatEvent.messageSent(message));
  }

  @override
  Widget build(BuildContext context) {
    final language = context.targetLanguage!;

    return BlocConsumer<ChatBloc, ChatState>(
      listener: (context, state) {
        if (state is ChatSuccess) {
          _controller.clear();
        }
      },
      builder: (context, state) {
        if (state is ChatClosing) {
          return Padding(
            padding: EdgeInsets.all(16),
            child: Button.primary(
              width: double.infinity,
              onPressed: () => context.pop(),
              child: Center(child: Text("Continue")),
            ),
          );
        }
        final canSubmit = state is ChatSuccess || state is ChatFailure;
        return TextField(
          controller: _controller,
          style: TextStyle(
            color: LingoColors.onSurfaceContainer,
            fontSize: 20,
          ),
          decoration: InputDecoration(
            hintText: "Respond in ${language.name.toTitleCase()}",
            suffixIcon: state is ChatLoading ? Transform.translate(
              offset: Offset(-4, 0),
              child: LoadingIndicator(color: LingoColors.onSurfaceContainerVariant),
            ) : null,
          ),
          textInputAction: TextInputAction.send,
          keyboardType: TextInputType.text,
          onSubmitted: canSubmit ? _submit : null,
        );
      }
    );
  }
}

