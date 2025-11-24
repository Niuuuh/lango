import 'package:flutter/material.dart';

import '../../../../app/router.dart';
import '../../../../app/theme.dart';
import '../../../../core/presentation/widgets/shaded_container.dart';
import '../../../../core/utils/context_extension.dart';
import '../../../../core/utils/string_extension.dart';
import 'language_icon.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({super.key});

  @override
  Widget build(BuildContext context) {
    final language = context.targetLanguage;
    return GestureDetector(
      onTap: () => context.goToLanguageSearch(),
      child: ShadedContainer(
        borderRadius: BorderRadius.circular(30),
        borderWidth: 0,
        elevation: 3,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          spacing: 10,
          children: [
            if (language != null) LanguageIcon(language: language),
            Text(
              language?.name.toTitleCase() ?? "Select language",
              style: TextStyle(
                color: LingoColors.onPrimaryContainer,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
