import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/router.dart';
import '../../../../app/service_locator.dart';
import '../../../../core/presentation/widgets/character.dart';
import '../bloc/onboarding_bloc.dart';
import '../bloc/onboarding_event.dart';
import '../bloc/onboarding_state.dart';
import '../bloc/typing_cubit.dart';
import '../widgets/greeting_back_button.dart';
import '../widgets/greeting_character.dart';
import '../widgets/name_input_field.dart';
import '../widgets/typing_character.dart';

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
                        greeting: () => GreetingCharacter(
                          greeting: Text("Hii, I'm Lingo"),
                        ),
                        askingName: () => TypingCharacter(
                          prompt: Text("What's your name?"),
                        ),
                        orElse: () => Character(),
                      ),
                    ),
                    ?state.whenOrNull(
                      greeting: () => GreetBackButton(),
                      askingName: () => NameInputField(),
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
