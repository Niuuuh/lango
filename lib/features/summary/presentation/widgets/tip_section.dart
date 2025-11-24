import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TipSection extends StatelessWidget {
  const TipSection({
    super.key,
    required this.tip,
  });

  final String tip;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(Icons.lightbulb_outline_rounded, size: 30),
        Gap(16),
        Flexible(
          child: Text(
            tip,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}
