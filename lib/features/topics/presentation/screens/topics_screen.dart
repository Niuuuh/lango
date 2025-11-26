import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../language/presentation/widgets/language_button.dart';
import '../../../onboarding/presentation/widgets/speaking_character.dart';
import '../widgets/topics_grid.dart';

class TopicsScreen extends StatelessWidget {
  const TopicsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: LanguageButton(),
            ),
            Gap(16),
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverPadding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    sliver: SliverToBoxAdapter(
                      child: Transform.scale(
                        scale: 0.9,
                        child: SpeakingCharacter(
                          spacing: 30,
                          text: Text("Let's talk about..."),
                        ),
                      ),
                    ),
                  ),
                  SliverGap(16),
                  SliverPadding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    sliver: TopicsGrid(),
                  ),
                  SliverGap(24),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
