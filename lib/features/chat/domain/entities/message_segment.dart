import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_segment.freezed.dart';
part 'message_segment.g.dart';

@freezed
abstract class MessageSegment with _$MessageSegment {
  const factory MessageSegment({
    required String text,
    String? translation,
  }) = _MessageSegment;

  factory MessageSegment.fromJson(Map<String, Object?> json) =>
      _$MessageSegmentFromJson(json);
}
