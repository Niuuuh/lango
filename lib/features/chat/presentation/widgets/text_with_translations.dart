import 'package:flutter/material.dart';

import '../../domain/entities/message_segment.dart';
import 'vocabulary_span.dart';

class TextWithTranslations extends StatelessWidget {
  const TextWithTranslations({
    super.key,
    required this.segments,
    required this.style,
  });

  final List<MessageSegment> segments;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    final defaultStyle = DefaultTextStyle.of(context).style;
    final effectiveStyle = defaultStyle.merge(style);

    final vocabularyStyle = TextStyle(
      decoration: TextDecoration.underline,
      decorationStyle: TextDecorationStyle.dashed,
      decorationColor: effectiveStyle.color?.withValues(alpha: 0.5),
    );
    final effectiveVocabularyStyle = effectiveStyle.merge(vocabularyStyle);

    return Text.rich(
      style: effectiveStyle,
      TextSpan(
        children: [
          for (final segment in segments)
            ...[
              segment.translation != null ? VocabularySpan(
                text: segment.text,
                translation: segment.translation!,
                style: effectiveVocabularyStyle,
              ) : TextSpan(text: segment.text),
              TextSpan(text: ' '),
            ],
        ],
      ),
    );
  }
}
