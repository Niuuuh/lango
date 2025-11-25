import 'dart:convert';

import '../../../../core/domain/entities/user.dart';
import '../../../chat/domain/entities/chat_message.dart';
import '../../../chat/domain/utils/chat_message_extension.dart';
import '../../../topics/domain/topic.dart';
import 'mock_summaries.dart';

abstract class SummaryPrompts {
  static String summarizeSession() {
    return jsonEncode("""
You analyze a full language-learning conversation between a user and an AI tutor.
Your job is to produce a compact "session summary" with:

1. Vibe Line
A short, energetic, supportive statement based on the overall performance.
Examples: “Nice work!”, “Solid run!”, “You’re getting there!”, “Messy but fun!”

2. CEFR Guess
Base it on the user’s grammar, vocabulary, sentence flow, and mistakes.
Add a one-sentence justification.

3. Strengths
1–3 short bullet points.

4. Weak Spots
1–3 short bullet points.

5. Micro Tip
One short improvement tip under 20 words.

6. Unique Session Name (1–3 words)
- Must be unique to this conversation.
- Should not be just the topic name.
- Should mix a keyword from this specific chat with a twist, OR blend the topic keyword with something that happened in the chat.
- Examples: “Taco Triumph”, “Jetlag Tales”, “Lost Wallet Run”, “Dog Drama”, “Future Dreams”, “Rainy Ramble”, “Messy Grammar Voyage”.

Your tone is casual, friendly, and modern.

Example output:
${MockSummaries.example.toJson()}
""");
  }

  static String session({
    required User user,
    required Topic topic,
    required List<ChatMessage> messages,
  }) {
    return jsonEncode({
      "source_language": user.sourceLanguage.name,
      "target_language": user.targetLanguage!.name,
      "topic": topic.title,
      "conversation": messages
          .map((message) => "${message.role}: ${message.text}")
          .toList(),
    });
  }
}
