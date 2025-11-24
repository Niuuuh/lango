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
