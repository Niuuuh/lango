import '../../domain/entities/chat_message.dart';
import '../../domain/entities/message_segment.dart';
import '../../domain/entities/message_type.dart';

abstract class MockMessages {
  static final messages = [
    ...MockMessages.assistantIntroMessages,
    ChatMessage.user(
      text: "Hey, ich würde total gerne mal nach Deutschland reisen!",
    ),
    ...MockMessages.assistantWarmupMessages,
    ChatMessage.user(
      text: "Hast du Tipps, was ich in Deutschland machen kann?",
    ),
    ...MockMessages.assistantClosingMessages,
  ];

  static const assistantIntroMessages = [
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
  ];

  static const assistantWarmupMessages = [
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
  ];

  static const assistantClosingMessages = [
    ChatMessage.assistant(
      type: MessageType.inCharacter,
      segments: [
        MessageSegment(
          text: "Es",
          translation: "It",
        ),
        MessageSegment(
          text: "war",
          translation: "was",
        ),
        MessageSegment(
          text: "so",
          translation: "so",
        ),
        MessageSegment(
          text: "toll,",
          translation: "great,",
        ),
        MessageSegment(
          text: "mit",
          translation: "with",
        ),
        MessageSegment(
          text: "dir",
          translation: "you",
        ),
        MessageSegment(
          text: "zu",
          translation: "to",
        ),
        MessageSegment(
          text: "reisen!",
          translation: "travel!",
        ),
      ],
    ),
    ChatMessage.assistant(
      type: MessageType.inCharacter,
      segments: [
        MessageSegment(
          text: "Bis",
          translation: "Until",
        ),
        MessageSegment(
          text: "zum",
          translation: "the",
        ),
        MessageSegment(
          text: "nächsten",
          translation: "next",
        ),
        MessageSegment(
          text: "Abenteuer,",
          translation: "adventure,",
        ),
        MessageSegment(
          text: "Freund!",
          translation: "friend!",
        ),
      ],
    ),
  ];
}
