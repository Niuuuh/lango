import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/domain/entities/user.dart';

part 'onboarding_state.freezed.dart';

@freezed
sealed class OnboardingState with _$OnboardingState {
  const factory OnboardingState.initial() = OnboardingInitial;

  const factory OnboardingState.loading() = OnboardingLoading;

  const factory OnboardingState.success(User user) = OnboardingSuccess;
}
