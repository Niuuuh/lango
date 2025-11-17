import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'chat_api_content.dart';
import 'chat_api_role.dart';
import 'chat_api_status.dart';

part 'chat_api_output.freezed.dart';
part 'chat_api_output.g.dart';

@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
abstract class ChatApiOutput with _$ChatApiOutput {
  const factory ChatApiOutput.message({
    required String id,
    required ChatApiStatus status,
    required List<ChatApiContent> content,
    required ChatApiRole role,
  }) = ChatApiOutputMessage;

  factory ChatApiOutput.fromJson(Map<String, dynamic> json)
  => _$ChatApiOutputFromJson(json);
}
