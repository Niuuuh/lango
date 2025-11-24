import 'package:flutter/material.dart';

import '../../../app/theme.dart';

class Skeleton extends StatelessWidget {
  const Skeleton({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: ColorFiltered(
        colorFilter: ColorFilter.mode(
          LingoColors.surfaceVariant,
          BlendMode.srcATop,
        ),
        child: child,
      ),
    );
  }
}

class Bone extends StatelessWidget {
  const Bone({
    super.key,
    this.width,
    this.height,
    this.margin = EdgeInsets.zero,
  });

  final double? width;
  final double? height;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: SizedBox(
        width: width,
        height: height,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: LingoColors.surfaceVariant,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
