import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../../../app/service_locator.dart';
import '../../../../core/utils/context_extension.dart';
import '../bloc/chat_bloc.dart';
import '../bloc/chat_event.dart';
import '../widgets/chat_list_view.dart';
import '../widgets/input_bar.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.user!;
    final topic = context.topic!;
    return BlocProvider(
      create: (context) => getIt<ChatBloc>(param1: user, param2: topic)
          ..add(const ChatEvent.started()),
      child: Scaffold(
        appBar: AppBar(
          leading: CloseButton(),
          title: Text(topic.title),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(8).copyWith(top: 0),
            child: Column(
              children: [
                Expanded(child: ChatListView()),
                Gap(8),
                InputBar(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
