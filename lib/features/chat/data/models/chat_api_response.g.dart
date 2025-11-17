// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatApiResponse _$ChatApiResponseFromJson(Map<String, dynamic> json) =>
    _ChatApiResponse(
      id: json['id'] as String?,
      error: json['error'] == null
          ? null
          : ChatApiError.fromJson(json['error'] as Map<String, dynamic>),
      output: (json['output'] as List<dynamic>?)
          ?.map((e) => ChatApiOutput.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: $enumDecodeNullable(_$ChatApiStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$ChatApiResponseToJson(_ChatApiResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'error': instance.error,
      'output': instance.output,
      'status': _$ChatApiStatusEnumMap[instance.status],
    };

const _$ChatApiStatusEnumMap = {
  ChatApiStatus.completed: 'completed',
  ChatApiStatus.failed: 'failed',
  ChatApiStatus.inProgress: 'in_progress',
  ChatApiStatus.cancelled: 'cancelled',
  ChatApiStatus.queued: 'queued',
  ChatApiStatus.incomplete: 'incomplete',
};
