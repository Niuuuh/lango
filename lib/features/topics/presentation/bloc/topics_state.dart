import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/topic.dart';

part 'topics_state.freezed.dart';

@freezed
sealed class TopicsState with _$TopicsState {
  const TopicsState._();

  const factory TopicsState.initial() = TopicsInitial;

  const factory TopicsState.loading() = TopicsLoading;

  const factory TopicsState.success(List<Topic> topics) = TopicsSuccess;

  const factory TopicsState.failure(String message) = TopicsFailure;
}
