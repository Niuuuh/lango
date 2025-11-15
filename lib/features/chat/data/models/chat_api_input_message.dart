import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lango/features/chat/data/models/chat_api_role.dart';

part 'chat_api_input_message.freezed.dart';
part 'chat_api_input_message.g.dart';

// todo: use union
@freezed
abstract class ChatApiInputMessage with _$ChatApiInputMessage {
  const factory ChatApiInputMessage({
    required String content,
    required ChatApiRole role,
  }) = _ChatApiInputMessage;

  factory ChatApiInputMessage.fromJson(Map<String, Object?> json) =>
      _$ChatApiInputMessageFromJson(json);
}
