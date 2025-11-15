// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_api_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatApiError _$ChatApiErrorFromJson(Map<String, dynamic> json) =>
    _ChatApiError(
      message: json['message'] as String,
      type: json['type'] as String,
      param: json['param'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$ChatApiErrorToJson(_ChatApiError instance) =>
    <String, dynamic>{
      'message': instance.message,
      'type': instance.type,
      'param': instance.param,
      'code': instance.code,
    };
