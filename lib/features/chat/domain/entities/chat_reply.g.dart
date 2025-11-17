// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_reply.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatReply _$ChatReplyFromJson(Map<String, dynamic> json) => _ChatReply(
  messages: (json['messages'] as List<dynamic>)
      .map((e) => AssistantChatMessage.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ChatReplyToJson(_ChatReply instance) =>
    <String, dynamic>{'messages': instance.messages};
