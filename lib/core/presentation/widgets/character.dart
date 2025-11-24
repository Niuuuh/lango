import 'package:flutter/material.dart';
import 'package:gif_view/gif_view.dart';

import '../../domain/entities/character_animation.dart';
import '../../utils/string_extension.dart';

enum CharacterDirection {
  left,
  right,
}

class Character extends StatelessWidget {
  const Character({
    super.key,
    this.action = CharacterAnimation.idle,
    this.direction = CharacterDirection.left,
    this.loop = true,
    this.width = 200,
  });

  final CharacterAnimation action;
  final CharacterDirection direction;
  final bool loop;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scaleX: direction == CharacterDirection.left ? 1 : -1,
      child: SizedBox(
        width: width,
        child: GifView.asset(
          'assets/character/${action.name.toKebabCase()}.gif',
          loop: loop,
          filterQuality: FilterQuality.none,
          fit: BoxFit.fitWidth,
          frameRate: 10,
        ),
      ),
    );
  }
}
