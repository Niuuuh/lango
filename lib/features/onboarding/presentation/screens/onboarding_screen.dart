import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/router.dart';
import '../../../../app/service_locator.dart';
import '../../../../core/presentation/widgets/character.dart';
import '../bloc/onboarding_bloc.dart';
import '../bloc/onboarding_event.dart';
import '../bloc/onboarding_state.dart';
import '../bloc/typing_cubit.dart';
import '../bloc/typing_state.dart';
import '../widgets/name_input_field.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<OnboardingBloc>()
          ..add(OnboardingEvent.started())),
        BlocProvider(create: (context) => getIt<TypingBloc>()),
      ],
      child: BlocConsumer<OnboardingBloc, OnboardingState>(
        listener: (context, state) {
          if (state is OnboardingSuccess) {
            context.goToLanguages();
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: state.maybeWhen(
                      greeting: () {
                        return Character(
                          action: CharacterAction.rollingTowardsAndGreetingYou,
                        );
                      },
                      askingName: () {
                        return BlocBuilder<TypingBloc, TypingState>(
                          builder: (context, typing) {
                            return Character(
                              action: typing.status == TypingStatus.typing
                                  ? CharacterAction.writingOnPaper
                                  : CharacterAction.idle
                            );
                          },
                        );
                      },
                      orElse: () {
                        return Character(
                          action: CharacterAction.idle,
                        );
                      },
                    ),
                  ),
                  ?state.whenOrNull(
                    greeting: () {
                      return ElevatedButton(
                        onPressed: () {
                          context.read<OnboardingBloc>()
                              .add(OnboardingEvent.greetBackPressed());
                        },
                        child: const Text('Greet back'),
                      );
                    },
                    askingName: () {
                      return NameInputField();
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
