import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/theme.dart';
import '../bloc/onboarding_bloc.dart';
import '../bloc/onboarding_state.dart';
import '../bloc/typing_cubit.dart';
import '../bloc/typing_event.dart';

class NameInputField extends StatelessWidget {
  const NameInputField({
    super.key,
    this.onSubmitted,
  });

  final void Function(String name)? onSubmitted;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingBloc, OnboardingState>(
      builder: (context, state) {
        return TextField(
          style: TextStyle(
            color: LingoColors.onSurfaceContainer,
            fontSize: 24,
          ),
          decoration: InputDecoration(
            hintText: 'Your name',
          ),
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.done,
          onTap: () {
            context.read<TypingBloc>().add(TypingEvent.started());
          },
          onChanged: (name) {
            context.read<TypingBloc>().add(TypingEvent.changed(name));
          },
          onSubmitted: onSubmitted,
        );
      }
    );
  }
}
