import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/router.dart';
import '../../../../app/service_locator.dart';
import '../bloc/onboarding_cubit.dart';
import '../bloc/onboarding_state.dart';
import '../bloc/typing_cubit.dart';
import '../bloc/typing_state.dart';
import '../widgets/name_input_field.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<OnboardingCubit>(),
      child: BlocProvider(
        create: (context) => getIt<TypingBloc>(),
        child: BlocListener<OnboardingCubit, OnboardingState>(
          listener: (context, state) {
            if (state is OnboardingSuccess) {
              context.goToLanguages();
            }
          },
          child: Scaffold(
            body: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BlocBuilder<TypingBloc, TypingState>(
                    builder: (context, state) {
                      return Text(state.toString());
                    },
                  ),
                  NameInputField(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
