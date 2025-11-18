import 'package:flutter/material.dart';
import 'package:lango/features/topics/domain/topic.dart';

class TopicDetails extends StatelessWidget {
  const TopicDetails({super.key, required this.topic});

  final Topic topic;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          topic.name,
          style: textTheme.headlineMedium,
        ),
        if (topic.description != null)
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              topic.description!,
              style: textTheme.bodyMedium,
            ),
          ),
      ],
    );
  }
}
