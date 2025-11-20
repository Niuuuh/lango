import 'package:bloc/bloc.dart';

import '../../../../core/presentation/cubit/user_cubit.dart';
import 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  final UserCubit userCubit;

  OnboardingCubit({required this.userCubit}) : super(OnboardingState.initial());

  Future<void> submit(String name) async {
    if (name.trim().isEmpty) return;
    emit(OnboardingState.loading());
    final user = await userCubit.create(name);
    emit(OnboardingState.success(user));
  }
}
