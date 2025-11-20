import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lango/features/onboarding/presentation/bloc/onboarding_cubit.dart';

import '../bloc/onboarding_state.dart';
import '../bloc/typing_cubit.dart';
import '../bloc/typing_event.dart';

class NameInputField extends StatelessWidget {
  const NameInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingCubit, OnboardingState>(
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
            context.read<OnboardingCubit>().submit(name);
          },
        );
      }
    );
  }
}
