import 'package:lango/features/chat/data/models/chat_api_input.dart';
import 'package:lango/features/chat/data/models/chat_api_role.dart';
import 'package:lango/features/chat/data/models/chat_api_text.dart';
import 'package:lango/features/chat/data/utils/chat_api_response_extension.dart';
import 'package:lango/features/chat/domain/chat_json_schemes.dart';
import 'package:lango/features/chat/domain/chat_prompts.dart';
import 'package:lango/features/chat/domain/entities/chat_reply.dart';
import 'package:lango/features/chat/domain/entities/message_role.dart';

import '../../domain/entities/chat_message.dart';
import '../data_sources/chat_api.dart';
import '../models/chat_api_input_message.dart';
import '../models/chat_api_model.dart';

class ChatRepository {
  final ChatApi _chatApi;

  ChatRepository({required ChatApi chatApi}) : _chatApi = chatApi;

  Future<ChatReply> reply(List<ChatMessage> messages) async {
    assert(messages.isEmpty || messages.last.role == MessageRole.user,
        "The last message should be from the user.");

    final response = await _chatApi.createResponse(
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
              role: switch (message.role) {
                MessageRole.user => ChatApiRole.user,
                MessageRole.assistant => ChatApiRole.assistant,
              },
              content: message.text,
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