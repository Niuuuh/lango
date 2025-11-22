import 'package:flutter/material.dart';

import '../../domain/entities/language.dart';

class LanguageIcon extends StatelessWidget {
  const LanguageIcon({
    super.key,
    required this.language,
    this.size = 24,
  });

  final Language language;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Text(
      language.emoji,
      style: TextStyle(fontSize: size),
    );
  }
}
