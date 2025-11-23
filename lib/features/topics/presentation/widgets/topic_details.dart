import 'package:flutter/material.dart';

import '../../domain/topic.dart';

class TopicDetails extends StatelessWidget {
  const TopicDetails({super.key, required this.topic});

  final Topic topic;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 16,
      children: [
        if (topic.emoji != null)
          Text(
            topic.emoji!,
            style: TextStyle(fontSize: 80),
          ),
        Text(
          topic.title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40,
          ),
        ),
        if (topic.description != null)
          Text(
            topic.description!,
            style: TextStyle(
              fontSize: 22,
            ),
          ),
      ],
    );
  }
}
