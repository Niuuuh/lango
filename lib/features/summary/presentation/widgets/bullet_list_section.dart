import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/presentation/widgets/shaded_container.dart';
import 'bullet_list.dart';

class BulletListSection extends StatelessWidget {
  const BulletListSection({
    super.key,
    required this.title,
    required this.items,
    required this.color,
  });

  final String title;
  final List<String> items;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle.merge(
      style: TextStyle(
        color: Color.lerp(Colors.black, color, 0.5),
      ),
      child: ShadedContainer(
        elevation: 0,
        padding: EdgeInsets.only(left: 24, right: 24, top: 16, bottom: 24),
        color: color.withValues(alpha: 0.3),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Gap(6),
            BulletList(
              items: items,
              style: TextStyle(
                fontSize: 20,
                height: 1.2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
