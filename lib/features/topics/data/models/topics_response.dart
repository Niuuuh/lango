import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/topic.dart';

part 'topics_response.freezed.dart';
part 'topics_response.g.dart';

@freezed
abstract class TopicsResponse with _$TopicsResponse {
  const factory TopicsResponse({
    required List<Topic> topics,
  }) = _TopicsResponse;

  factory TopicsResponse.fromJson(Map<String, dynamic> json) => _$TopicsResponseFromJson(json);
}
