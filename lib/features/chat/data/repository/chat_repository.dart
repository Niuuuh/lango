import 'package:lango/features/chat/data/models/chat_api_input.dart';
import 'package:lango/features/chat/data/models/chat_api_role.dart';
import 'package:lango/features/chat/data/models/chat_api_text.dart';
import 'package:lango/features/chat/data/utils/chat_api_response_extension.dart';
import 'package:lango/features/chat/domain/chat_json_schemes.dart';
import 'package:lango/features/chat/domain/chat_prompts.dart';
import 'package:lango/features/chat/domain/entities/chat_reply.dart';

import '../../domain/entities/chat_message.dart';
import '../data_sources/chat_api.dart';
import '../models/chat_api_input_message.dart';
import '../models/chat_api_model.dart';

class ChatRepository {
  final ChatApi chatApi;

  ChatRepository({required this.chatApi});

  Future<ChatReply> reply(List<ChatMessage> messages) async {
    assert(messages.isEmpty || messages.last is UserChatMessage,
        "The last message should be from the user.");

    final response = await chatApi.createResponse(
      ChatApiInput(
        model: ChatApiModel.gpt4o,
        input: [
          ChatApiInputMessage(
            role: ChatApiRole.developer,
            content: ChatPrompts.roleplaySystemPrompt(
              userName: "Leon",
              userLevel: "C1",
              sourceLanguage: "English",
              targetLanguage: "German",
              topicName: "Traveling",
              topicDescription: "Discussing travel experiences and plans.",
              minTurns: 4,
              maxTurns: 8,
            ),
          ),
          for (final message in messages)
            ChatApiInputMessage(
              role: message.map(
                user: (_) => ChatApiRole.user,
                assistant: (_) => ChatApiRole.assistant,
              ),
              content: message.map(
                user: (userMessage) => userMessage.text,
                assistant: (assistantMessage) => assistantMessage.segments
                    .map((segment) => segment.text)
                    .join(" "),
              ),
            ),
        ],
        text: ChatApiText(
          format: ChatJsonSchemes.roleplayReply,
        ),
      ),
    );
    if (response.error != null) {
      throw response.error!;
    }
    final json = response.parsedOutput;
    if (json == null) {
      throw Exception("No output from chat API");
    }
    return ChatReply.fromJson(json);
  }
}