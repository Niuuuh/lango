// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatHistory _$ChatHistoryFromJson(Map<String, dynamic> json) => _ChatHistory(
  entries: (json['entries'] as List<dynamic>)
      .map((e) => ChatHistoryEntry.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ChatHistoryToJson(_ChatHistory instance) =>
    <String, dynamic>{'entries': instance.entries};
