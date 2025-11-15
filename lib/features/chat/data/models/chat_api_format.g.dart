// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_api_format.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatApiFormatText _$ChatApiFormatTextFromJson(Map<String, dynamic> json) =>
    ChatApiFormatText($type: json['type'] as String?);

Map<String, dynamic> _$ChatApiFormatTextToJson(ChatApiFormatText instance) =>
    <String, dynamic>{'type': instance.$type};

ChatApiFormatJsonSchema _$ChatApiFormatJsonSchemaFromJson(
  Map<String, dynamic> json,
) => ChatApiFormatJsonSchema(
  name: json['name'] as String,
  schema: json['schema'] as Map<String, dynamic>,
  description: json['description'] as String?,
  strict: json['strict'] as bool? ?? false,
  $type: json['type'] as String?,
);

Map<String, dynamic> _$ChatApiFormatJsonSchemaToJson(
  ChatApiFormatJsonSchema instance,
) => <String, dynamic>{
  'name': instance.name,
  'schema': instance.schema,
  'description': instance.description,
  'strict': instance.strict,
  'type': instance.$type,
};
