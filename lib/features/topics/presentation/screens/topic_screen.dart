import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../../../app/router.dart';
import '../../../../app/theme.dart';
import '../../../../core/presentation/widgets/button.dart';
import '../../../history/presentation/widgets/chat_history_list.dart';
import '../bloc/topic_cubit.dart';
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
        child: Padding(
          padding: EdgeInsets.all(24),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: TopicDetails(topic: topic),
              ),
              SliverGap(60),
              SliverToBoxAdapter(
                child: Button.secondary(
                  onPressed: () => context.goToChat(topic),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Start', style: TextStyle(fontSize: 24)),
                      Gap(6),
                      Icon(Icons.play_arrow_rounded, size: 30),
                    ],
                  ),
                ),
              ),
              SliverGap(16),
              ChatHistoryList(topic: topic),
            ],
          ),
        ),
      ),
    );
  }
}
