import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/topic.dart';

part 'selected_topic_state.freezed.dart';

@freezed
sealed class SelectedTopicState with _$SelectedTopicState {
  const SelectedTopicState._();

  const factory SelectedTopicState.initial() = SelectedTopicInitial;

  const factory SelectedTopicState.loading() = SelectedTopicLoading;

  const factory SelectedTopicState.success(Topic topic) = SelectedTopicSuccess;

  const factory SelectedTopicState.failure(String message) = SelectedTopicFailure;
}
