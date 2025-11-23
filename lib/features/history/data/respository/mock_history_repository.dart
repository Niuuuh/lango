import 'dart:async';

import '../../../../core/data/data_sources/preferences_api.dart';
import '../../../chat/data/data_sources/mock_messages.dart';
import '../../../language/domain/entities/language.dart';
import '../../../topics/domain/topic.dart';
import '../../domain/entities/chat_history.dart';
import '../../domain/entities/chat_history_entry.dart';
import 'history_repository.dart';

class MockHistoryRepository implements HistoryRepository {
  final _controller = StreamController<ChatHistory>.broadcast();

  var _history = ChatHistory(
    entries: [
      ChatHistoryEntry(
        languageId: Language.german.name,
        topicId: Topic.travel.name,
        date: DateTime.now(),
        messages: MockMessages.messages,
      ),
      ChatHistoryEntry(
        languageId: Language.german.name,
        topicId: Topic.travel.name,
        date: DateTime.parse('2025-11-20 14:30:00'),
        messages: MockMessages.messages,
      ),
      ChatHistoryEntry(
        languageId: Language.german.name,
        topicId: Topic.travel.name,
        date: DateTime.parse('2025-11-18 11:10:00'),
        messages: MockMessages.messages,
      ),
    ],
  );

  @override
  PreferencesApi get preferencesApi => throw UnimplementedError();

  @override
  Stream<ChatHistory> watchHistory() => _controller.stream;

  @override
  Future<void> createHistoryEntry(ChatHistoryEntry entry) async {
    final history = await getHistory();
    final updated = ChatHistory(entries: [entry, ...history.entries]);
    await updateHistory(updated);
  }

  @override
  Future<void> updateHistory(ChatHistory history) async {
    _history = history;
    _controller.add(history);
  }

  @override
  Future<ChatHistory> getHistory() async {
    return _history;
  }

  @override
  void dispose() {
    _controller.close();
  }

  Future<ChatHistoryEntry?> getEntryByTopic(String topicId) async {
    await Future.delayed(const Duration(milliseconds: 50));
    try {
      return _history.entries.firstWhere((e) => e.topicId == topicId);
    } catch (_) {
      return null;
    }
  }

  Future<void> deleteEntry(String topicId) async {
    await Future.delayed(const Duration(milliseconds: 50));
    _history.entries.removeWhere((e) => e.topicId == topicId);
    await updateHistory(_history);
  }
}
