import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'chat_api_input_message.dart';
import 'chat_api_text.dart';

part 'chat_api_input.freezed.dart';
part 'chat_api_input.g.dart';

@freezed
abstract class ChatApiInput with _$ChatApiInput {
  const factory ChatApiInput({
    required String model,
    required List<ChatApiInputMessage> input,
    ChatApiText? text,
  }) = _ChatApiInput;

  factory ChatApiInput.fromJson(Map<String, Object?> json) =>
      _$ChatApiInputFromJson(json);
}
