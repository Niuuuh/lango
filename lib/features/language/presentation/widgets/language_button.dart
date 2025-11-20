import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lango/app/router.dart';
import 'package:lango/core/utils/string_utils.dart';
import 'package:lango/features/language/presentation/widgets/language_icon.dart';

import '../../../../core/presentation/cubit/user_cubit.dart';
import '../../../../core/presentation/cubit/user_state.dart';
import '../../domain/entities/language.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<UserCubit, UserState, Language?>(
      selector: (state) {
        return state.whenOrNull(
          success: (user) => user.targetLanguage,
        );
      },
      builder: (context, language) {
        if (language == null) {
          return ElevatedButton(
            onPressed: () {
              context.goToLanguages();
            },
            child: const Text('Select Language'),
          );
        }
        return ElevatedButton.icon(
          onPressed: () {
            context.goToLanguages();
          },
          icon: LanguageIcon(language: language),
          label: Text(language.name.toSentenceCase()),
        );
      }
    );
  }
}
