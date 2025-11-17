// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assistant_chat_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AssistantChatMessage _$AssistantChatMessageFromJson(
  Map<String, dynamic> json,
) => _AssistantChatMessage(
  type: $enumDecode(_$MessageTypeEnumMap, json['type']),
  segments: (json['segments'] as List<dynamic>)
      .map((e) => MessageSegment.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$AssistantChatMessageToJson(
  _AssistantChatMessage instance,
) => <String, dynamic>{
  'type': _$MessageTypeEnumMap[instance.type]!,
  'segments': instance.segments,
};

const _$MessageTypeEnumMap = {
  MessageType.action: 'action',
  MessageType.inCharacter: 'in_character',
  MessageType.outOfCharacter: 'out_of_character',
};
