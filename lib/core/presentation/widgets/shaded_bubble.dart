import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';

import '../../../app/theme.dart';
import 'shaded_bubble_painter.dart';

class ShadedBubble extends StatelessWidget {
  const ShadedBubble({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(12),
    this.color = LingoColors.secondaryContainer,
    this.nip = BubbleNip.leftTop,
  });

  final Widget child;
  final EdgeInsets padding;
  final Color color;
  final BubbleNip nip;

  @override
  Widget build(BuildContext context) {
    final double nipWidth = 20;
    return CustomPaint(
      painter: ShadedBubblePainter(
        clipper: BubbleClipper(
          radius: Radius.circular(12),
          showNip: true,
          nip: nip,
          nipWidth: nipWidth,
          nipHeight: 16,
          nipOffset: 0,
          nipRadius: 4,
          stick: false,
          padding: EdgeInsets.zero,
        ),
        color: color,
        borderColor: LingoColors.shadow,
        borderWidth: 2,
        shadowColor: LingoColors.shadow,
        shadowOffset: Offset(0, 4),
      ),
      child: Padding(
        padding: padding + EdgeInsets.symmetric(horizontal: nipWidth),
        child: child,
      ),
    );
  }
}
