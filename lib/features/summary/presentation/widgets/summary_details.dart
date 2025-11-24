import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../domain/entities/session_summary.dart';
import 'bullet_list_section.dart';
import 'language_level_section.dart';
import 'tip_section.dart';

class SummaryDetails extends StatelessWidget {
  const SummaryDetails({
    super.key,
    required this.summary,
  });

  final SessionSummary summary;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(32),
        Text(
          summary.vibe,
          style: TextStyle(
            fontSize: 40,
          ),
        ),
        Gap(32),
        LanguageLevelSection(
          level: summary.cefr,
          reason: summary.reason,
        ),
        Gap(24),
        BulletListSection(
          title: "Strengths",
          items: summary.strengths,
          color: Colors.green,
        ),
        Gap(16),
        BulletListSection(
          title: "Weaknesses",
          items: summary.weaknesses,
          color: Colors.red,
        ),
        Gap(24),
        TipSection(
          tip: summary.tip,
        ),
      ],
    );
  }
}
