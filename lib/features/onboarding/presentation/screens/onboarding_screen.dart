import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/router.dart';
import '../../../../app/service_locator.dart';
import '../../../../core/presentation/widgets/button.dart';
import '../../../../core/presentation/widgets/character.dart';
import '../../../language/presentation/bloc/language_search_cubit.dart';
import '../../../language/presentation/widgets/language_search_field.dart';
import '../bloc/onboarding_bloc.dart';
import '../bloc/onboarding_event.dart';
import '../bloc/onboarding_state.dart';
import '../bloc/typing_cubit.dart';
import '../widgets/name_input_field.dart';
import '../widgets/speaking_character.dart';
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
        BlocProvider(create: (context) => getIt<LanguageSearchCubit>()),
      ],
      child: BlocConsumer<OnboardingBloc, OnboardingState>(
        listener: (context, state) {
          if (state is OnboardingSuccess) {
            context.goToLanguageSearch();
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
                        greeting: () => SpeakingCharacter(
                          text: Text("Hii, I'm Lingo"),
                          action: CharacterAction.rollingTowardsAndGreetingYou,
                        ),
                        askingName: () => TypingCharacter(
                          prompt: Text("What's your name?"),
                        ),
                        askingLanguage: () => SpeakingCharacter(
                          text: Text("Which language do you want to learn?"),
                        ),
                        orElse: () => Character(),
                      ),
                    ),
                    ?state.whenOrNull(
                      greeting: () => Button.primary(
                        width: 300,
                        onPressed: () {
                          context.read<OnboardingBloc>()
                              .add(OnboardingEvent.greetBackPressed());
                        },
                        child: Text('Greet back'),
                      ),
                      askingName: () => NameInputField(
                        onSubmitted: (name) {
                          context.read<OnboardingBloc>()
                            .add(OnboardingEvent.submitNamePressed(name));
                        },
                      ),
                      askingLanguage: () => LanguageSearchField(
                        onTap: () {
                          context.read<OnboardingBloc>()
                            .add(OnboardingEvent.searchLanguagePressed());
                        },
                      ),
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
