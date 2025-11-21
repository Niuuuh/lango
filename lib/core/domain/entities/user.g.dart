// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  name: json['name'] as String,
  level: json['level'] as String? ?? "C1",
  sourceLanguage:
      $enumDecodeNullable(_$LanguageEnumMap, json['sourceLanguage']) ??
      Language.english,
  targetLanguage: $enumDecodeNullable(
    _$LanguageEnumMap,
    json['targetLanguage'],
  ),
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'name': instance.name,
  'level': instance.level,
  'sourceLanguage': _$LanguageEnumMap[instance.sourceLanguage]!,
  'targetLanguage': _$LanguageEnumMap[instance.targetLanguage],
};

const _$LanguageEnumMap = {
  Language.english: 'english',
  Language.spanish: 'spanish',
  Language.french: 'french',
  Language.german: 'german',
  Language.russian: 'russian',
  Language.italian: 'italian',
  Language.chinese: 'chinese',
  Language.japanese: 'japanese',
  Language.portuguese: 'portuguese',
  Language.arabic: 'arabic',
  Language.hindi: 'hindi',
};
