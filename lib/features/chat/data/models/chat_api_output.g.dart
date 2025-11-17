// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_api_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatApiOutputMessage _$ChatApiOutputMessageFromJson(
  Map<String, dynamic> json,
) => ChatApiOutputMessage(
  id: json['id'] as String,
  status: $enumDecode(_$ChatApiStatusEnumMap, json['status']),
  content: (json['content'] as List<dynamic>)
      .map((e) => ChatApiContent.fromJson(e as Map<String, dynamic>))
      .toList(),
  role: $enumDecode(_$ChatApiRoleEnumMap, json['role']),
);

Map<String, dynamic> _$ChatApiOutputMessageToJson(
  ChatApiOutputMessage instance,
) => <String, dynamic>{
  'id': instance.id,
  'status': _$ChatApiStatusEnumMap[instance.status]!,
  'content': instance.content,
  'role': _$ChatApiRoleEnumMap[instance.role]!,
};

const _$ChatApiStatusEnumMap = {
  ChatApiStatus.completed: 'completed',
  ChatApiStatus.failed: 'failed',
  ChatApiStatus.inProgress: 'in_progress',
  ChatApiStatus.cancelled: 'cancelled',
  ChatApiStatus.queued: 'queued',
  ChatApiStatus.incomplete: 'incomplete',
};

const _$ChatApiRoleEnumMap = {
  ChatApiRole.system: 'system',
  ChatApiRole.developer: 'developer',
  ChatApiRole.user: 'user',
  ChatApiRole.assistant: 'assistant',
};
