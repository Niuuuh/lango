// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topics_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TopicsResponse _$TopicsResponseFromJson(Map<String, dynamic> json) =>
    _TopicsResponse(
      topics: (json['topics'] as List<dynamic>)
          .map((e) => Topic.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TopicsResponseToJson(_TopicsResponse instance) =>
    <String, dynamic>{'topics': instance.topics};
