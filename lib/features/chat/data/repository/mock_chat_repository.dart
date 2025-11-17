import 'package:lango/features/chat/data/repository/chat_repository.dart';
import 'package:lango/features/chat/domain/entities/chat_reply.dart';

import '../../domain/entities/chat_message.dart';
import '../../domain/entities/message_segment.dart';
import '../../domain/entities/message_type.dart';

class MockChatRepository implements ChatRepository {
  @override
  Future<ChatReply> replyMessage() async {
    Future.delayed(const Duration(milliseconds: 500));
    return ChatReply(
      messages: [
        ChatMessage(
          type: MessageType.action,
          segments: [
            MessageSegment(
              text: "Bugcat jumps into a suitcase.",
              translation: null,
            ),
          ],
        ),
        ChatMessage(
          type: MessageType.inCharacter,
          segments: [
            MessageSegment(text: "Hallo,", translation: "Hello,"),
            MessageSegment(text: "Leon!", translation: "Leon!"),
            MessageSegment(text: "Bereit", translation: "Ready"),
            MessageSegment(text: "für", translation: "for"),
            MessageSegment(text: "ein", translation: "a"),
            MessageSegment(
              text: "Reiseabenteuer?",
              translation: "travel adventure?",
            ),
          ],
        ),
        ChatMessage(
          type: MessageType.inCharacter,
          segments: [
            MessageSegment(text: "Wohin", translation: "Where"),
            MessageSegment(text: "würdest", translation: "would"),
            MessageSegment(text: "du", translation: "you"),
            MessageSegment(text: "reisen,", translation: "travel,"),
            MessageSegment(text: "wenn", translation: "if"),
            MessageSegment(text: "du", translation: "you"),
            MessageSegment(text: "könntest?", translation: "could?"),
          ],
        ),
        ChatMessage(
          type: MessageType.action,
          segments: [
            MessageSegment(
              text: "Bugcat spins a globe wildly.",
              translation: null,
            ),
          ],
        ),
      ],
    );
  }
}
