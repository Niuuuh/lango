// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserChatMessage _$UserChatMessageFromJson(Map<String, dynamic> json) =>
    UserChatMessage(
      text: json['text'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$UserChatMessageToJson(UserChatMessage instance) =>
    <String, dynamic>{'text': instance.text, 'runtimeType': instance.$type};

AssistantChatMessage _$AssistantChatMessageFromJson(
  Map<String, dynamic> json,
) => AssistantChatMessage(
  type: $enumDecode(_$MessageTypeEnumMap, json['type']),
  segments: (json['segments'] as List<dynamic>)
      .map((e) => MessageSegment.fromJson(e as Map<String, dynamic>))
      .toList(),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$AssistantChatMessageToJson(
  AssistantChatMessage instance,
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
