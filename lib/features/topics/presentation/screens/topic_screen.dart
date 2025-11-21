import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../../../app/router.dart';
import '../../../chat/presentation/widgets/chat_start_button.dart';
import '../../../history/presentation/widgets/chat_history_list.dart';
import '../bloc/topic_cubit.dart';
import '../widgets/topic_details.dart';

class TopicScreen extends StatelessWidget {
  const TopicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final topic = context.read<TopicCubit>().state!;
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: TopicDetails(topic: topic),
            ),
            SliverGap(60),
            SliverToBoxAdapter(
              child: ChatStartButton(
                onPressed: () => context.goToChat(topic),
              ),
            ),
            ChatHistoryList(topic: topic),
          ],
        ),
      ),
    );
  }
}
