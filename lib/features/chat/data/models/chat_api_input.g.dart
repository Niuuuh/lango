// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_api_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatApiInput _$ChatApiInputFromJson(Map<String, dynamic> json) =>
    _ChatApiInput(
      model: $enumDecode(_$ChatApiModelEnumMap, json['model']),
      input: (json['input'] as List<dynamic>)
          .map((e) => ChatApiInputMessage.fromJson(e as Map<String, dynamic>))
          .toList(),
      text: json['text'] == null
          ? null
          : ChatApiText.fromJson(json['text'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChatApiInputToJson(_ChatApiInput instance) =>
    <String, dynamic>{
      'model': _$ChatApiModelEnumMap[instance.model]!,
      'input': instance.input,
      'text': instance.text,
    };

const _$ChatApiModelEnumMap = {
  ChatApiModel.gpt4oMini: 'gpt-4o-mini',
  ChatApiModel.gpt4o: 'gpt-4o',
};
