sealed class ChatEvent {
  const ChatEvent();
}

final class ChatStarted extends ChatEvent {
  const ChatStarted();
}

final class ChatMessageSent extends ChatEvent {
  final String message;

  const ChatMessageSent(this.message);
}
