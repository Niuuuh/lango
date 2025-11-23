import 'package:flutter/material.dart';

class Emoji extends StatelessWidget {
  const Emoji(this.emoji, {super.key, this.style});

  final String emoji;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    final effectiveStyle = style ?? DefaultTextStyle.of(context).style;
    final shadow = effectiveStyle.shadows?.firstOrNull;
    return Stack(
      children: [
        if (shadow != null)
          ColorFiltered(
            colorFilter: ColorFilter.mode(shadow.color, BlendMode.srcIn),
            child: Text(emoji, style: effectiveStyle),
          ),
        DefaultTextStyle.merge(
          style: effectiveStyle.copyWith(shadows: []),
          child: Text(emoji),
        ),
      ],
    );
  }
}
