import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_api_content.freezed.dart';
part 'chat_api_content.g.dart';

@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
abstract class ChatApiContent with _$ChatApiContent {
  const factory ChatApiContent.outputText({
    required String text,
  }) = ChatApiOutputText;

  const factory ChatApiContent.refusal({
    required String refusal,
  }) = ChatApiRefusal;

  factory ChatApiContent.fromJson(Map<String, dynamic> json)
  => _$ChatApiContentFromJson(json);
}