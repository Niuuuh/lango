import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_event.freezed.dart';

@freezed
sealed class OnboardingEvent with _$OnboardingEvent {
  const factory OnboardingEvent.started() = OnboardingStarted;

  const factory OnboardingEvent.greetBackPressed() = OnboardingGreetBackPressed;

  const factory OnboardingEvent.submitNamePressed(String name)
    = OnboardingSubmitNamePressed;

  const factory OnboardingEvent.searchLanguagePressed()
    = OnboardingSearchLanguagePressed;
}
