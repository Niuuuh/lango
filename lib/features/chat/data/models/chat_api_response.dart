import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'chat_api_error.dart';
import 'chat_api_output.dart';

part 'chat_api_response.freezed.dart';
part 'chat_api_response.g.dart';

@freezed
abstract class ChatApiResponse with _$ChatApiResponse {
  const factory ChatApiResponse({
    String? id,
    ChatApiError? error,
    List<ChatApiOutput>? output,

  }) = _ChatApiResponse;

  factory ChatApiResponse.fromJson(Map<String, Object?> json) =>
      _$ChatApiResponseFromJson(json);
}
