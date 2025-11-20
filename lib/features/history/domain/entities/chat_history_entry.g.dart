// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_history_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatHistoryEntry _$ChatHistoryEntryFromJson(Map<String, dynamic> json) =>
    _ChatHistoryEntry(
      languageId: json['languageId'] as String,
      topicId: json['topicId'] as String,
      date: DateTime.parse(json['date'] as String),
      messages: (json['messages'] as List<dynamic>)
          .map((e) => ChatMessage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ChatHistoryEntryToJson(_ChatHistoryEntry instance) =>
    <String, dynamic>{
      'languageId': instance.languageId,
      'topicId': instance.topicId,
      'date': instance.date.toIso8601String(),
      'messages': instance.messages,
    };
