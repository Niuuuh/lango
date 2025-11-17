import 'package:flutter_test/flutter_test.dart';
import 'package:lango/features/chat/data/repository/mock_chat_repository.dart';
import 'package:lango/features/chat/domain/entities/chat_message.dart';
import 'package:lango/features/chat/domain/entities/message_type.dart';

void main() {
  test("assistant starts roleplay with an action and in-character message", () async {
    final chatRepository = MockChatRepository();
    final reply = await chatRepository.reply([]);
    expect(reply.messages, isNotEmpty);
    expect(reply.messages, everyElement(isA<AssistantChatMessage>()));
    final assistantMessages = reply.messages.cast<AssistantChatMessage>();
    expect(assistantMessages[0].type, equals(MessageType.action));
    expect(assistantMessages[1].type, equals(MessageType.inCharacter));
  });
}
