import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lango/core/presentation/cubit/user_state.dart';
import 'package:lango/features/chat/presentation/bloc/chat_bloc.dart';

import '../../../../app/service_locator.dart';
import '../../../../core/presentation/cubit/user_cubit.dart';
import '../../../language/domain/entities/language.dart';
import '../../../topics/domain/topic.dart';
import '../bloc/chat_event.dart';
import '../widgets/chat_list_view.dart';
import '../widgets/input_bar.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key, required this.topic});

  final Topic topic;

  @override
  Widget build(BuildContext context) {
    final language = context.select<UserCubit, Language>((cubit) {
      return cubit.state.whenOrNull(success: (user) => user.targetLanguage)!;
    });
    return BlocProvider(
      create: (context) {
        return getIt<ChatBloc>(param1: language, param2: topic)..add(const ChatStarted());
      },
      child: Scaffold(
        appBar: AppBar(
          leading: CloseButton(),
          title: Text(topic.name),
        ),
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
