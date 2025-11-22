import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/presentation/widgets/button.dart';
import '../bloc/onboarding_bloc.dart';
import '../bloc/onboarding_event.dart';

class GreetBackButton extends StatelessWidget {
  const GreetBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
  }
}
