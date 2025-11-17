// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_segment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MessageSegment _$MessageSegmentFromJson(Map<String, dynamic> json) =>
    _MessageSegment(
      text: json['text'] as String,
      translation: json['translation'] as String?,
    );

Map<String, dynamic> _$MessageSegmentToJson(_MessageSegment instance) =>
    <String, dynamic>{
      'text': instance.text,
      'translation': instance.translation,
    };
