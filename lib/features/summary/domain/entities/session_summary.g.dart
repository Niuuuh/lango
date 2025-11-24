// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SessionSummary _$SessionSummaryFromJson(Map<String, dynamic> json) =>
    _SessionSummary(
      name: json['name'] as String,
      vibe: json['vibe'] as String,
      cefr: json['cefr'] as String,
      reason: json['reason'] as String,
      strengths: (json['strengths'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      weaknesses: (json['weaknesses'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      tip: json['tip'] as String,
    );

Map<String, dynamic> _$SessionSummaryToJson(_SessionSummary instance) =>
    <String, dynamic>{
      'name': instance.name,
      'vibe': instance.vibe,
      'cefr': instance.cefr,
      'reason': instance.reason,
      'strengths': instance.strengths,
      'weaknesses': instance.weaknesses,
      'tip': instance.tip,
    };
