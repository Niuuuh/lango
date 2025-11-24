import 'package:flutter/material.dart';

class BulletList extends StatelessWidget {
  const BulletList({
    super.key,
    required this.items,
    this.style,
  });

  final List<String> items;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    final effectiveStyle = DefaultTextStyle.of(context).style.merge(style);
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 6,
      children: [
        for (final item in items) ...[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("• ", style: effectiveStyle),
              Expanded(
                child: Text(item, style: effectiveStyle),
              ),
            ],
          ),
        ],
      ],
    );
  }
}
