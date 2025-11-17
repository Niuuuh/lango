// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatMessage _$ChatMessageFromJson(Map<String, dynamic> json) => _ChatMessage(
  type: $enumDecode(_$MessageTypeEnumMap, json['type']),
  role: $enumDecode(_$MessageRoleEnumMap, json['role']),
  text: json['text'] as String,
);

Map<String, dynamic> _$ChatMessageToJson(_ChatMessage instance) =>
    <String, dynamic>{
      'type': _$MessageTypeEnumMap[instance.type]!,
      'role': _$MessageRoleEnumMap[instance.role]!,
      'text': instance.text,
    };

const _$MessageTypeEnumMap = {
  MessageType.action: 'action',
  MessageType.inCharacter: 'in_character',
  MessageType.outOfCharacter: 'out_of_character',
};

const _$MessageRoleEnumMap = {
  MessageRole.user: 'user',
  MessageRole.assistant: 'assistant',
};
