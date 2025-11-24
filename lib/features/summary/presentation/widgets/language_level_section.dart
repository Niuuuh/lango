import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/presentation/widgets/shaded_container.dart';

class LanguageLevelSection extends StatelessWidget {
  const LanguageLevelSection({
    super.key,
    required this.level,
    required this.reason,
  });

  final String level;
  final String reason;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox.square(
          dimension: 80,
          child: ShadedContainer(
            elevation: 0,
            color: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 2,
              children: [
                Text(
                  "Level",
                  style: TextStyle(
                    fontSize: 16,
                    height: 1,
                  ),
                ),
                Text(
                  level,
                  style: TextStyle(
                    fontSize: 32,
                    height: 1,
                  ),
                ),
              ],
            ),
          ),
        ),
        Gap(16),
        Flexible(
          child: Text(
            reason,
            style: TextStyle(
              fontSize: 20,
              height: 1.2,
            ),
          ),
        ),
      ],
    );
  }
}
