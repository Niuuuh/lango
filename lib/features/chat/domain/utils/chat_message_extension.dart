import '../entities/chat_message.dart';

extension ChatMessageExtension on ChatMessage {
  String get text {
    return map(
      user: (userMessage) => userMessage.text,
      assistant: (assistantMessage) => assistantMessage.segments
          .map((segment) => segment.text)
          .join(" "),
    );
  }

  String get role {
    return map(
      user: (_) => "user",
      assistant: (_) => "assistant",
    );
  }
}
