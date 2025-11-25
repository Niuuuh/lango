import '../../../../core/domain/entities/user.dart';
import '../../../topics/domain/topic.dart';
import '../../domain/entities/chat_message.dart';
import '../../domain/entities/chat_reply.dart';
import '../../domain/entities/chat_stage.dart';
import '../data_sources/chat_api.dart';
import 'chat_repository.dart';
import 'mock_chat_messages.dart';

class MockChatRepository implements ChatRepository {
  @override
  ChatApi get chatApi => throw UnimplementedError();

  @override
  Future<ChatReply> replyMessages({
    required User user,
    required Topic topic,
    required List<ChatMessage> messages,
  }) async {
    await Future.delayed(const Duration(milliseconds: 3000));
    final userReplyCount = messages
        .whereType<ChatMessageUser>()
        .length;

    if (userReplyCount == 0) {
      return ChatReply(
        stage: ChatStage.intro,
        messages: MockChatMessages.assistantIntroMessages,
      );
    } else if (userReplyCount == 1) {
      return ChatReply(
        stage: ChatStage.warmup,
        messages: MockChatMessages.assistantWarmupMessages,
      );
    } else {
      return ChatReply(
        stage: ChatStage.closing,
        messages: MockChatMessages.assistantClosingMessages,
      );
    }
  }
}
