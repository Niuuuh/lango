import 'package:flutter/material.dart';

class VocabularySpan extends WidgetSpan {
  VocabularySpan({
    required String text,
    required String translation,
    TextStyle? style,
  }) : super(
    child: Tooltip(
      message: translation,
      triggerMode: TooltipTriggerMode.tap,
      preferBelow: false,
      child: Text(text, style: style),
    ),
  );
}
