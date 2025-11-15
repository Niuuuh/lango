import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'chat_api_content.dart';
import 'chat_api_role.dart';

part 'chat_api_output.freezed.dart';
part 'chat_api_output.g.dart';

abstract class ChatApiOutputType {
  static const String message = "message";
}

@freezed
abstract class ChatApiOutput with _$ChatApiOutput {
  const factory ChatApiOutput({
    required String id,
    required String type,
    required String status,
    required List<ChatApiContent> content,
    required ChatApiRole role,
  }) = _ChatApiOutput;

  factory ChatApiOutput.fromJson(Map<String, Object?> json) =>
      _$ChatApiOutputFromJson(json);
}
