import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/session_summary.dart';

part 'summary_state.freezed.dart';

@freezed
sealed class SummaryState with _$SummaryState {
  const factory SummaryState.initial() = SummaryInitial;

  const factory SummaryState.loading() = SummaryLoading;

  const factory SummaryState.success({
    required SessionSummary summary,
  }) = SummarySuccess;

  const factory SummaryState.failure({
    required Exception error,
  }) = SummaryFailure;
}
