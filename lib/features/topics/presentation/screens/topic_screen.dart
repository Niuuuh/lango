import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lango/features/topics/presentation/bloc/selected_topic_cubit.dart';
import 'package:lango/features/topics/presentation/bloc/selected_topic_state.dart';

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
