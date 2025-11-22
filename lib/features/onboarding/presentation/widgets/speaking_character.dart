import 'package:flutter/material.dart';

import '../../../../core/presentation/widgets/character.dart';
import '../../../../core/presentation/widgets/character_bubble.dart';

class SpeakingCharacter extends StatelessWidget {
  const SpeakingCharacter({
    super.key,
    this.text,
    this.action = CharacterAction.idle,
    this.spacing = 40,
  });

  final Widget? text;
  final CharacterAction action;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: spacing,
      children: [
        if (text != null)
          CharacterBubble(child: text!),
        Character(action: action),
      ],
    );
  }
}
