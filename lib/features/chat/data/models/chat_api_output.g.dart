// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_api_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatApiOutput _$ChatApiOutputFromJson(Map<String, dynamic> json) =>
    _ChatApiOutput(
      id: json['id'] as String,
      type: json['type'] as String,
      status: json['status'] as String,
      content: (json['content'] as List<dynamic>)
          .map((e) => ChatApiContent.fromJson(e as Map<String, dynamic>))
          .toList(),
      role: $enumDecode(_$ChatApiRoleEnumMap, json['role']),
    );

Map<String, dynamic> _$ChatApiOutputToJson(_ChatApiOutput instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'status': instance.status,
      'content': instance.content,
      'role': _$ChatApiRoleEnumMap[instance.role]!,
    };

const _$ChatApiRoleEnumMap = {
  ChatApiRole.user: 'user',
  ChatApiRole.assistant: 'assistant',
  ChatApiRole.system: 'system',
  ChatApiRole.developer: 'developer',
};
