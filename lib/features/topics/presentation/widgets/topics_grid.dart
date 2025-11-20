import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:lango/app/router.dart';
import 'package:lango/features/topics/presentation/widgets/topic_card.dart';

import '../../domain/topic.dart';

class TopicsGrid extends StatelessWidget {
  const TopicsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverMasonryGrid.count(
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      childCount: Topic.values.length,
      itemBuilder: (context, index) {
        final topic = Topic.values[index];
        return TopicCard(
          topic: topic,
          onTap: () => context.goToTopic(topic),
        );
      },
    );
  }
}
