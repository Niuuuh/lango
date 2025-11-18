import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:lango/app/router.dart';
import 'package:lango/features/topics/presentation/bloc/topics_cubit.dart';
import 'package:lango/features/topics/presentation/widgets/topic_card.dart';

import '../bloc/topics_state.dart';

class TopicsGrid extends StatelessWidget {
  const TopicsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopicsCubit, TopicsState>(
      builder: (context, state) {
        return state.maybeWhen(
          success: (topics) {
            return SliverMasonryGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childCount: topics.length,
              itemBuilder: (context, index) {
                final topic = topics[index];
                return TopicCard(
                  topic: topic,
                  onTap: () => context.goToTopic(topic.id),
                );
              },
            );
          },
          failure: (message) {
            return SliverToBoxAdapter(child: Text('Error: $message'));
          },
          orElse: () {
            return SliverMasonryGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childCount: 5,
              itemBuilder: (context, index) {
                return AspectRatio(
                  aspectRatio: 2/3, // todo: vary aspect ratio
                  child: Material(
                    color: Colors.grey,
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
