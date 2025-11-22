import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/router.dart';
import '../../../../app/service_locator.dart';
import '../../../../app/theme.dart';
import '../../../../core/presentation/widgets/button.dart';
import '../../../../core/presentation/widgets/character.dart';
import '../../../../core/presentation/widgets/sharp_shadow_bubble.dart';
import '../bloc/onboarding_bloc.dart';
import '../bloc/onboarding_event.dart';
import '../bloc/onboarding_state.dart';
import '../bloc/typing_cubit.dart';
import '../bloc/typing_state.dart';
import '../widgets/name_input_field.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
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
              child: Padding(
                padding: EdgeInsets.all(24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(
                      child: state.maybeWhen(
                        greeting: () {
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            spacing: 24,
                            children: [
                              SharpShadowBubble(
                                color: LingoColors.secondaryContainer,
                                nip: BubbleNip.leftTop,
                                child: Text(
                                  "Hii, I'm Lingo",
                                  style: TextStyle(
                                    fontSize: 24,
                                  ),
                                ),
                              ),
                              Character(
                                action: CharacterAction.rollingTowardsAndGreetingYou,
                              ),
                            ],
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
                        return SizedBox(
                          width: 300,
                          child: Button.primary(
                            onPressed: () {
                              context.read<OnboardingBloc>()
                                  .add(OnboardingEvent.greetBackPressed());
                            },
                            child: const Text('Greet back'),
                          ),
                        );
                      },
                      askingName: () {
                        return NameInputField();
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
