// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_api_input_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatApiInputMessage _$ChatApiInputMessageFromJson(Map<String, dynamic> json) =>
    _ChatApiInputMessage(
      content: json['content'] as String,
      role: $enumDecode(_$ChatApiRoleEnumMap, json['role']),
    );

Map<String, dynamic> _$ChatApiInputMessageToJson(
  _ChatApiInputMessage instance,
) => <String, dynamic>{
  'content': instance.content,
  'role': _$ChatApiRoleEnumMap[instance.role]!,
};

const _$ChatApiRoleEnumMap = {
  ChatApiRole.system: 'system',
  ChatApiRole.developer: 'developer',
  ChatApiRole.user: 'user',
  ChatApiRole.assistant: 'assistant',
};
