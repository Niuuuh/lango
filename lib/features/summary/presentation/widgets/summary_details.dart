import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/presentation/widgets/skeleton.dart';
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

class SummaryDetailsSkeleton extends StatelessWidget {
  const SummaryDetailsSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(32),
        Center(
          child: Bone(width: 100, height: 40),
        ),
        Gap(32),
        Bone(width: double.infinity, height: 80),
        Gap(24),
        Bone(width: double.infinity, height: 120),
        Gap(16),
        Bone(width: double.infinity, height: 120),
        Gap(24),
        Bone(
          width: double.infinity,
          height: 30,
          margin: EdgeInsets.only(right: 60),
        ),
      ],
    );
  }
}
