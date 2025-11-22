import 'package:flutter/material.dart';

import '../../../../core/presentation/widgets/character.dart';
import '../../../../core/presentation/widgets/character_bubble.dart';

class GreetingCharacter extends StatelessWidget {
  const GreetingCharacter({
    super.key,
    this.greeting,
  });

  final Widget? greeting;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 40,
      children: [
        if (greeting != null)
          CharacterBubble(child: greeting!),
        Character(
          action: CharacterAction.rollingTowardsAndGreetingYou,
        ),
      ],
    );
  }
}
