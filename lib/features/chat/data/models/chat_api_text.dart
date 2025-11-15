import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'chat_api_format.dart';

part 'chat_api_text.freezed.dart';
part 'chat_api_text.g.dart';

@freezed
abstract class ChatApiText with _$ChatApiText {
  const factory ChatApiText({
    required ChatApiFormat format,
  }) = _ChatApiText;

  factory ChatApiText.fromJson(Map<String, Object?> json) =>
      _$ChatApiTextFromJson(json);
}
