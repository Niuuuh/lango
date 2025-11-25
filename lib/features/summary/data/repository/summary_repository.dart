import '../../../../core/domain/entities/user.dart';
import '../../../chat/data/data_sources/chat_api.dart';
import '../../../chat/data/models/chat_api_input.dart';
import '../../../chat/data/models/chat_api_input_message.dart';
import '../../../chat/data/models/chat_api_model.dart';
import '../../../chat/data/models/chat_api_role.dart';
import '../../../chat/data/models/chat_api_text.dart';
import '../../../chat/data/utils/chat_api_response_extension.dart';
import '../../../chat/domain/chat_json_schemes.dart';
import '../../../chat/domain/chat_prompts.dart';
import '../../../chat/domain/entities/chat_message.dart';
import '../../../summary/domain/entities/session_summary.dart';
import '../../../topics/domain/topic.dart';

class SummaryRepository {
  final ChatApi chatApi;

  SummaryRepository({required this.chatApi});

  Future<SessionSummary> summarizeSession({
    required User user,
    required Topic topic,
    required List<ChatMessage> messages,
  }) async {
    final response = await chatApi.createResponse(
      ChatApiInput(
        model: ChatApiModel.gpt4o,
        input: [
          ChatApiInputMessage(
            role: ChatApiRole.developer,
            content: ChatPrompts.summarizeSession(),
          ),
          ChatApiInputMessage(
            role: ChatApiRole.user,
            content: ChatPrompts.session(
              user: user,
              topic: topic,
              messages: messages,
            ),
          ),
        ],
        text: ChatApiText(
          format: ChatJsonSchemes.sessionSummary,
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
    return SessionSummary.fromJson(json);
  }
}