import 'package:flutter/material.dart';

import '../../../app/theme.dart';

class ShadedContainer extends StatelessWidget {
  const ShadedContainer({
    super.key,
    this.color = LingoColors.primaryContainer,
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    this.borderRadius = const BorderRadius.all(Radius.circular(40)),
    this.borderWidth = 2,
    this.elevation = 4,
    required this.child,
  });

  final Color color;
  final EdgeInsets padding;
  final BorderRadius borderRadius;
  final double borderWidth;
  final double elevation;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: elevation,
      ),
      child: DecoratedBox(
        decoration: ShapeDecoration(
          color: color,
          shape: ContinuousRectangleBorder(
            borderRadius: borderRadius,
            side: borderWidth > 0 ? BorderSide(
              width: borderWidth,
              color: LingoColors.shadow,
            ) : BorderSide.none,
          ),
          shadows: [
            BoxShadow(
              color: LingoColors.shadow,
              offset: Offset(0, elevation),
            ),
          ],
        ),
        child: Padding(
          padding: padding,
          child: child,
        ),
      ),
    );
  }
}
