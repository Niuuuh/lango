import 'package:flutter/material.dart';

import '../../../../app/theme.dart';
import '../../../../core/utils/string_extension.dart';
import '../../domain/entities/language.dart';
import 'language_icon.dart';

class LanguageListTile extends StatelessWidget {
  const LanguageListTile({
    super.key,
    required this.language,
    this.onTap,
  });

  final Language language;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: LanguageIcon(language: language, size: 30),
      title: Text(
        language.name.toSentenceCase(),
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(16),
      ),
      visualDensity: VisualDensity(vertical: 1),
      splashColor: LingoColors.surfaceContainer,
      onTap: onTap,
    );
  }
}
