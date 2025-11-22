import 'package:bloc/bloc.dart';

import '../../../../core/presentation/cubit/user_cubit.dart';
import 'onboarding_event.dart';
import 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  final UserCubit userCubit;

  OnboardingBloc({required this.userCubit}) : super(OnboardingState.initial()) {
    on<OnboardingStarted>((event, emit) {
      emit(OnboardingState.greeting());
    });

    on<OnboardingGreetBackPressed>((event, emit) {
      emit(OnboardingState.askingName());
    });

    on<OnboardingSubmitNamePressed>((event, emit) async {
      final name = event.name.trim();
      if (name.isEmpty) return;
      emit(OnboardingState.submittingName());
      await userCubit.create(name);
      emit(OnboardingState.askingLanguage());
    });

    on<OnboardingSearchLanguagePressed>((event, emit) async {
      emit(OnboardingState.success());
    });
  }
}
