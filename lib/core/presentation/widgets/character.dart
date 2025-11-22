import 'package:flutter/material.dart';

import '../../utils/string_extension.dart';

enum CharacterAction {
  idle,
  rollingTowardsAndGreetingYou,
  writingOnPaper;

  @override
  String toString() => name.toKebabCase();
}

class Character extends StatelessWidget {
  const Character({
    super.key,
    this.action = CharacterAction.idle,
    this.width = 200,
  });

  final CharacterAction action;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Image.asset(
        'assets/character/$action.gif',
        gaplessPlayback: true,
        filterQuality: FilterQuality.none,
        scale: 0.1,
      ),
    );
  }
}
