import 'package:flutter/material.dart';

import '../../../../core/presentation/widgets/emoji.dart';
import '../../../../core/presentation/widgets/shaded_container.dart';
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
      child: ShadedContainer(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
          children: [
            if (topic.emoji != null) AspectRatio(
              aspectRatio: 1.5,
              child: Center(
                child: Emoji(
                  topic.emoji!,
                  style: TextStyle(fontSize: 48),
                ),
              ),
            ),
            Text(
              topic.title,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
