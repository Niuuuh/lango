import 'package:flutter_test/flutter_test.dart';
import 'package:lango/features/chat/data/repository/mock_chat_repository.dart';
import 'package:lango/features/chat/domain/entities/message_type.dart';

void main() {
  test("reply message", () async {
    final chatRepository = MockChatRepository();
    final reply = await chatRepository.reply([]);
    expect(reply.messages, isNotEmpty);
    expect(reply.messages[0].type, equals(MessageType.action));
    expect(reply.messages[1].type, equals(MessageType.inCharacter));
  });
}