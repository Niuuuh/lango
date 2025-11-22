import 'package:flutter/material.dart';

import '../../../../core/presentation/widgets/character.dart';
import '../../../../core/presentation/widgets/character_bubble.dart';

class TalkingCharacter extends StatelessWidget {
  const TalkingCharacter({
    super.key,
    this.text,
    this.action = CharacterAction.idle,
  });

  final Widget? text;
  final CharacterAction action;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 40,
      children: [
        if (text != null)
          CharacterBubble(child: text!),
        Character(action: action),
      ],
    );
  }
}
