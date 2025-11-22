import 'package:flutter/material.dart';

class Bold extends StatelessWidget {
  const Bold({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final color = DefaultTextStyle.of(context).style.color
        ?? TextTheme.of(context).bodyMedium?.color
        ?? Colors.black;
    return DefaultTextStyle.merge(
      style: TextStyle(
        shadows: [
          Shadow(
            color: color,
            offset: Offset(0.5, 0.5),
          )
        ],
      ),
      child: child,
    );
  }
}
