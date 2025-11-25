import '../../../../core/domain/entities/user.dart';
import '../../../chat/data/data_sources/chat_api.dart';
import '../../../chat/domain/entities/chat_message.dart';
import '../../../summary/domain/entities/session_summary.dart';
import '../../../topics/domain/topic.dart';
import 'mock_summaries.dart';
import 'summary_repository.dart';

class MockSummaryRepository implements SummaryRepository {
  @override
  ChatApi get chatApi => throw UnimplementedError();

  @override
  Future<SessionSummary> summarizeSession({
    required User user,
    required Topic topic,
    required List<ChatMessage> messages,
  }) async {
    await Future.delayed(const Duration(milliseconds: 2000));
    return MockSummaries.example;
  }
}
