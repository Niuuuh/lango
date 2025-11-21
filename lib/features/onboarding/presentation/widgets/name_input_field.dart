import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/onboarding_bloc.dart';
import '../bloc/onboarding_event.dart';
import '../bloc/onboarding_state.dart';
import '../bloc/typing_cubit.dart';
import '../bloc/typing_event.dart';

class NameInputField extends StatelessWidget {
  const NameInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingBloc, OnboardingState>(
      builder: (context, state) {
        return TextField(
          decoration: const InputDecoration(
            hintText: 'Your name',
            border: OutlineInputBorder(),
          ),
          textInputAction: TextInputAction.done,
          onTap: () {
            context.read<TypingBloc>().add(TypingEvent.started());
          },
          onChanged: (name) {
            context.read<TypingBloc>().add(TypingEvent.changed(name));
          },
          onSubmitted: (name) {
            context.read<OnboardingBloc>()
                .add(OnboardingEvent.submitNamePressed(name));
          },
        );
      }
    );
  }
}
