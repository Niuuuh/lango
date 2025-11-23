// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatMessageUser _$ChatMessageUserFromJson(Map<String, dynamic> json) =>
    ChatMessageUser(
      text: json['text'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ChatMessageUserToJson(ChatMessageUser instance) =>
    <String, dynamic>{'text': instance.text, 'runtimeType': instance.$type};

ChatMessageAssistant _$ChatMessageAssistantFromJson(
  Map<String, dynamic> json,
) => ChatMessageAssistant(
  type: $enumDecode(_$MessageTypeEnumMap, json['type']),
  segments: (json['segments'] as List<dynamic>)
      .map((e) => MessageSegment.fromJson(e as Map<String, dynamic>))
      .toList(),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$ChatMessageAssistantToJson(
  ChatMessageAssistant instance,
) => <String, dynamic>{
  'type': _$MessageTypeEnumMap[instance.type]!,
  'segments': instance.segments,
  'runtimeType': instance.$type,
};

const _$MessageTypeEnumMap = {
  MessageType.action: 'action',
  MessageType.inCharacter: 'in_character',
  MessageType.outOfCharacter: 'out_of_character',
};
