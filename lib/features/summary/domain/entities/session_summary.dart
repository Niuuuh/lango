import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_summary.freezed.dart';
part 'session_summary.g.dart';

@freezed
abstract class SessionSummary with _$SessionSummary {
  const factory SessionSummary({
    required String name,
    required String vibe,
    required String cefr,
    required String reason,
    required List<String> strengths,
    required List<String> weaknesses,
    required String tip,
  }) = _SessionSummary;

  factory SessionSummary.fromJson(Map<String, Object?> json) =>
      _$SessionSummaryFromJson(json);
}
