import 'package:lango/features/chat/data/data_sources/chat_api.dart';
import 'package:lango/features/chat/data/data_sources/mock_messages.dart';
import 'package:lango/features/chat/data/repository/chat_repository.dart';
import 'package:lango/features/chat/domain/entities/chat_reply.dart';

import '../../domain/entities/chat_message.dart';
import '../../domain/entities/chat_stage.dart';

class MockChatRepository implements ChatRepository {
  @override
  ChatApi get chatApi => throw UnimplementedError();

  @override
  Future<ChatReply> replyMessages(List<ChatMessage> messages) async {
    await Future.delayed(const Duration(milliseconds: 3000));
    final userReplyCount = messages
        .whereType<UserChatMessage>()
        .length;

    if (userReplyCount == 0) {
      return ChatReply(
        stage: ChatStage.intro,
        messages: MockMessages.assistantIntroMessages,
      );
    } else if (userReplyCount == 1) {
      return ChatReply(
        stage: ChatStage.warmup,
        messages: MockMessages.assistantWarmupMessages,
      );
    } else {
      return ChatReply(
        stage: ChatStage.closing,
        messages: MockMessages.assistantClosingMessages,
      );
    }
  }
}
