import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_api_error.freezed.dart';
part 'chat_api_error.g.dart';

@freezed
abstract class ChatApiError with _$ChatApiError {
  const factory ChatApiError({
    required String message,
    required String type,
    required String? param,
    required String? code,
  }) = _ChatApiError;

  factory ChatApiError.fromJson(Map<String, Object?> json) =>
      _$ChatApiErrorFromJson(json);
}
