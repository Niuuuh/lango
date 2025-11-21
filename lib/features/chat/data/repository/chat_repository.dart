import '../../../../core/domain/entities/user.dart';
import '../../../topics/domain/topic.dart';
import '../../domain/chat_json_schemes.dart';
import '../../domain/chat_prompts.dart';
import '../../domain/entities/chat_message.dart';
import '../../domain/entities/chat_reply.dart';
import '../data_sources/chat_api.dart';
import '../models/chat_api_input.dart';
import '../models/chat_api_input_message.dart';
import '../models/chat_api_model.dart';
import '../models/chat_api_role.dart';
import '../models/chat_api_text.dart';
import '../utils/chat_api_response_extension.dart';

class ChatRepository {
  final ChatApi chatApi;

  ChatRepository({required this.chatApi});

  Future<ChatReply> replyMessages({
    required User user,
    required Topic topic,
    required List<ChatMessage> messages,
  }) async {
    assert(messages.isEmpty || messages.last is UserChatMessage,
        "The last message should be from the user.");

    final response = await chatApi.createResponse(
      ChatApiInput(
        model: ChatApiModel.gpt4o,
        input: [
          ChatApiInputMessage(
            role: ChatApiRole.developer,
            content: ChatPrompts.roleplaySystemPrompt(
              userName: user.name,
              userLevel: user.level,
              sourceLanguage: user.sourceLanguage.name,
              targetLanguage: user.targetLanguage!.name,
              topicName: topic.title,
              topicDescription: topic.description ?? "",
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