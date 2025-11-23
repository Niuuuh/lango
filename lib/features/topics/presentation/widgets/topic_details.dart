import 'package:flutter/material.dart';

import '../../../../app/theme.dart';
import '../../../../core/presentation/widgets/emoji.dart';
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
          SizedBox.square(
            dimension: 230,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: LingoColors.secondaryContainer,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Emoji(
                  topic.emoji!,
                  style: TextStyle(
                    fontSize: 110,
                    shadows: [
                      Shadow(
                        color: LingoColors.shadow,
                        offset: Offset(1, 4),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        Text(
          topic.title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40,
          ),
          textAlign: TextAlign.center,
        ),
        if (topic.description != null)
          Text(
            topic.description!,
            style: TextStyle(
              fontSize: 22,
            ),
            textAlign: TextAlign.center,
          ),
      ],
    );
  }
}
