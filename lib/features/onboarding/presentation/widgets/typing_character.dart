import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/domain/entities/character_animation.dart';
import '../../../../core/presentation/widgets/character.dart';
import '../../../../core/presentation/widgets/character_bubble.dart';
import '../bloc/typing_cubit.dart';
import '../bloc/typing_state.dart';

class TypingCharacter extends StatelessWidget {
  const TypingCharacter({
    super.key,
    this.prompt,
  });

  final Widget? prompt;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TypingBloc, TypingState>(
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 40,
          children: [
            if (prompt != null && state.status == TypingStatus.initial)
              CharacterBubble(child: prompt!),
            Stack(
              children: [
                Opacity(
                  opacity: state.status == TypingStatus.typing ? 1 : 0,
                  child: Character(action: CharacterAnimation.writingOnPaper),
                ),
                Opacity(
                  opacity: state.status == TypingStatus.typing ? 0 : 1,
                  child: Character(action: CharacterAnimation.idle),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
