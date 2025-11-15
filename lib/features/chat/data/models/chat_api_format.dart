import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_api_format.freezed.dart';
part 'chat_api_format.g.dart';

@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
abstract class ChatApiFormat with _$ChatApiFormat {
  const factory ChatApiFormat.text() = ChatApiFormatText;

  const factory ChatApiFormat.jsonSchema({
    required String name,
    required Map<String, dynamic> schema,
    String? description,
    @Default(false) bool strict,
  }) = ChatApiFormatJsonSchema;

  factory ChatApiFormat.fromJson(Map<String, dynamic> json)
  => _$ChatApiFormatFromJson(json);
}
