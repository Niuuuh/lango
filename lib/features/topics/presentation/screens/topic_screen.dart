import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../../../app/router.dart';
import '../../../../app/theme.dart';
import '../../../history/presentation/widgets/chat_history_list.dart';
import '../bloc/topic_cubit.dart';
import '../widgets/start_button.dart';
import '../widgets/topic_details.dart';

class TopicScreen extends StatelessWidget {
  const TopicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final topic = context.read<TopicCubit>().state!;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: LingoColors.primaryContainer,
      ),
      backgroundColor: LingoColors.primaryContainer,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              sliver: SliverToBoxAdapter(
                child: TopicDetails(topic: topic),
              ),
            ),
            SliverGap(48),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              sliver: SliverToBoxAdapter(
                child: StartButton(
                  onPressed: () => context.goToChat(topic),
                ),
              ),
            ),
            SliverGap(16),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              sliver: ChatHistoryList(topic: topic),
            ),
            SliverGap(32),
          ],
        ),
      ),
    );
  }
}
