import 'package:flutter/material.dart';

import '../../../../app/theme.dart';
import '../../../../core/utils/context_extension.dart';
import '../../../../core/utils/string_extension.dart';
import 'language_icon.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({super.key});

  @override
  Widget build(BuildContext context) {
    final language = context.targetLanguage;
    return DecoratedBox(
      decoration: ShapeDecoration(
        color: LingoColors.primaryContainer,
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        shadows: [
          BoxShadow(
            color: LingoColors.shadow,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          spacing: 10,
          children: [
            if (language != null) LanguageIcon(language: language),
            Text(
              language?.name.toSentenceCase() ?? "Select language",
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
