import 'package:flutter_test/flutter_test.dart';
import 'package:lango/features/chat/data/repository/chat_prompts.dart';

void main() {
  test("create system prompt", () {
    final systemPrompt = ChatPrompts.replyMessages(
      userName: "Leon",
      userLevel: "C1",
      sourceLanguage: "English",
      targetLanguage: "Deutsch",
      topicName: "Traveling",
      topicDescription: "Discussing travel experiences and plans.",
      minTurns: 4,
      maxTurns: 8,
    );

    expect(systemPrompt, contains("User name: Leon"));
    expect(systemPrompt, contains("Source language: English"));
    expect(systemPrompt, contains("Target language: Deutsch"));
    expect(systemPrompt, contains("in_character"));
    expect(systemPrompt, isNot(contains("inCharacter")));
    expect(systemPrompt, contains("After 4–8 exchanges"));
  });
}