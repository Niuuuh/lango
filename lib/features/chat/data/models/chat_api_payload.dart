import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'chat_api_input_message.dart';
import 'chat_api_text.dart';

part 'chat_api_payload.freezed.dart';
part 'chat_api_payload.g.dart';

@freezed
abstract class ChatApiPayload with _$ChatApiPayload {
  const factory ChatApiPayload({
    required String model,
    required List<ChatApiInputMessage> input,
    ChatApiText? text,
  }) = _ChatApiPayload;

  factory ChatApiPayload.fromJson(Map<String, Object?> json) =>
      _$ChatApiPayloadFromJson(json);
}
