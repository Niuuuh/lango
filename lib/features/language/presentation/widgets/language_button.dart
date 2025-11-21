import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/router.dart';
import '../../../../core/presentation/cubit/user_cubit.dart';
import '../../../../core/presentation/cubit/user_state.dart';
import '../../../../core/utils/string_utils.dart';
import '../../domain/entities/language.dart';
import 'language_icon.dart';

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
