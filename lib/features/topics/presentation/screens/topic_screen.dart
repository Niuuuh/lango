import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:lango/app/router.dart';
import 'package:lango/features/topics/presentation/bloc/selected_topic_cubit.dart';
import 'package:lango/features/topics/presentation/bloc/selected_topic_state.dart';

import '../../../history/presentation/widgets/chat_history_list.dart';
import '../../../chat/presentation/widgets/chat_start_button.dart';
import '../widgets/topic_details.dart';

class TopicScreen extends StatelessWidget {
  const TopicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectedTopicCubit, SelectedTopicState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(),
          body: SafeArea(
            child: state.maybeWhen(
              success: (topic) {
                return CustomScrollView(
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
                );
              },
              failure: (message) => Center(child: Text(message)),
              orElse: () => Center(child: CircularProgressIndicator()),
            ),
          ),
        );
      }
    );
  }
}
