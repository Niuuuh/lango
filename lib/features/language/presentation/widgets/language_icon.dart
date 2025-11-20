import 'package:flutter/material.dart';

import '../../domain/entities/language.dart';

class LanguageIcon extends StatelessWidget {
  const LanguageIcon({
    super.key,
    required this.language,
  });

  final Language language;

  @override
  Widget build(BuildContext context) {
    return Text(language.emoji, style: const TextStyle(fontSize: 24));
  }
}
