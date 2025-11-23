import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';

import '../../../app/theme.dart';
import 'shaded_bubble.dart';

class CharacterBubble extends StatelessWidget {
  const CharacterBubble({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ShadedBubble(
      color: LingoColors.secondaryContainer,
      nip: BubbleNip.leftTop,
      child: DefaultTextStyle.merge(
        style: TextStyle(
          fontSize: 24,
        ),
        child: child,
      ),
    );
  }
}
