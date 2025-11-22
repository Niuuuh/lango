import 'package:flutter/material.dart';

import '../../../../app/theme.dart';
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
      child: DecoratedBox(
        decoration: ShapeDecoration(
          color: LingoColors.primaryContainer,
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(40),
            side: BorderSide(
              color: LingoColors.shadow,
              width: 2,
            ),
          ),
          shadows: [
            BoxShadow(
              color: LingoColors.shadow,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 8,
            children: [
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
      ),
    );
  }
}
