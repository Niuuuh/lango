import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/domain/entities/user.dart';
import '../../../chat/domain/entities/chat_message.dart';
import '../../../topics/domain/topic.dart';

part 'summary_event.freezed.dart';

@freezed
sealed class SummaryEvent with _$SummaryEvent {
  const factory SummaryEvent.started({
    required User user,
    required Topic topic,
    required List<ChatMessage> messages,
  }) = SummaryStarted;
}
