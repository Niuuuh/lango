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
    );

Map<String, dynamic> _$ChatApiResponseToJson(_ChatApiResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'error': instance.error,
      'output': instance.output,
    };
