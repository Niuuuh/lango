import 'package:flutter/material.dart';

import '../../domain/topic.dart';

class TopicCard extends StatelessWidget {
  const TopicCard({
    super.key,
    required this.topic,
    this.onTap,
  });

  final Topic topic;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Material(
        color: Colors.grey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(topic.title),
            if (topic.description != null) Text(topic.description!),
          ],
        ),
      ),
    );
  }
}
