// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_api_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatApiOutputText _$ChatApiOutputTextFromJson(Map<String, dynamic> json) =>
    ChatApiOutputText(
      text: json['text'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$ChatApiOutputTextToJson(ChatApiOutputText instance) =>
    <String, dynamic>{'text': instance.text, 'type': instance.$type};

ChatApiRefusal _$ChatApiRefusalFromJson(Map<String, dynamic> json) =>
    ChatApiRefusal(
      refusal: json['refusal'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$ChatApiRefusalToJson(ChatApiRefusal instance) =>
    <String, dynamic>{'refusal': instance.refusal, 'type': instance.$type};
