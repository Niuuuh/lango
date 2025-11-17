import 'package:lango/features/chat/data/repository/chat_repository.dart';
import 'package:lango/features/chat/domain/entities/chat_reply.dart';

import '../../domain/entities/chat_message.dart';
import '../../domain/entities/message_segment.dart';
import '../../domain/entities/message_type.dart';

class MockChatRepository implements ChatRepository {
  @override
  Future<ChatReply> reply(List<ChatMessage> messages) async {
    await Future.delayed(const Duration(milliseconds: 3000));
    if (messages.isEmpty) {
      return ChatReply(
        messages: [
          ChatMessage.assistant(
            type: MessageType.action,
            segments: [
              MessageSegment(
                text: "Bugcat jumps into a suitcase.",
                translation: null,
              ),
            ],
          ),
          ChatMessage.assistant(
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
          ChatMessage.assistant(
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
          ChatMessage.assistant(
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
    } else {
      return ChatReply(
        messages: [
          ChatMessage.assistant(
            type: MessageType.inCharacter,
            segments: [
              MessageSegment(
                text: "Das",
                translation: "That",
              ),
              MessageSegment(
                text: "ist",
                translation: "is",
              ),
              MessageSegment(
                text: "eine",
                translation: "a",
              ),
              MessageSegment(
                text: "großartige",
                translation: "great",
              ),
              MessageSegment(
                text: "Wahl!",
                translation: "choice!",
              ),
            ],
          ),
          ChatMessage.assistant(
            type: MessageType.inCharacter,
            segments: [
              MessageSegment(
                text: "Hast",
                translation: "Do",
              ),
              MessageSegment(
                text: "du",
                translation: "you",
              ),
              MessageSegment(
                text: "schon",
                translation: "already",
              ),
              MessageSegment(
                text: "Pläne",
                translation: "plans",
              ),
              MessageSegment(
                text: "für",
                translation: "for",
              ),
              MessageSegment(
                text: "deine",
                translation: "your",
              ),
              MessageSegment(
                text: "Reise?",
                translation: "trip?",
              ),
            ],
          ),
        ],
      );
    }
  }
}
