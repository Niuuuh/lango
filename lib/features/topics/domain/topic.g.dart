// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Topic _$TopicFromJson(Map<String, dynamic> json) => _Topic(
  id: json['id'] as String,
  name: json['name'] as String,
  description: json['description'] as String?,
);

Map<String, dynamic> _$TopicToJson(_Topic instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
};
