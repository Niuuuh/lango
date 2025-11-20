import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lango/app/router.dart';

import '../cubit/user_cubit.dart';
import '../cubit/user_state.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocListener<UserCubit, UserState>(
          listener: (context, state) {
            state.maybeWhen(
              success: (user) {
                if (user.targetLanguage == null) {
                  context.goToLanguages();
                } else {
                  context.goToTopics();
                }
              },
              failure: (message) => context.goToOnboarding(),
              orElse: () {},
            );
          },
          child: SizedBox.shrink(),
        ),
      ),
    );
  }
}
