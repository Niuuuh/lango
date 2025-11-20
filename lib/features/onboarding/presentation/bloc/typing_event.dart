import 'package:freezed_annotation/freezed_annotation.dart';

part 'typing_event.freezed.dart';

@freezed
sealed class TypingEvent with _$TypingEvent {
  const factory TypingEvent.started() = TypingStarted;
  const factory TypingEvent.changed(String text) = TypingChanged;
}
