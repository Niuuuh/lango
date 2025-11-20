import 'dart:async';

import 'package:lango/features/history/domain/entities/chat_history_entry.dart';

import '../../../../core/data/data_sources/preferences_api.dart';
import '../../domain/entities/chat_history.dart';

class HistoryRepository {
  final PreferencesApi preferencesApi;

  final _controller = StreamController<ChatHistory>.broadcast();

  HistoryRepository({
    required this.preferencesApi,
  });

  Stream<ChatHistory> watchHistory() => _controller.stream;

  Future<void> createHistoryEntry(ChatHistoryEntry entry) async {
    final history = await getHistory();
    final updatedHistory = ChatHistory(entries: [entry, ...history.entries]);
    await updateHistory(updatedHistory);
  }

  Future<void> updateHistory(ChatHistory history) async {
    _controller.add(history);
    final json = history.toJson();
    await preferencesApi.setJson('chat_history', json);
  }

  Future<ChatHistory> getHistory() async {
    final json = await preferencesApi.getJson('chat_history');
    if (json != null) {
      return ChatHistory.fromJson(json);
    } else {
      return ChatHistory(entries: []);
    }
  }

  void dispose() {
    _controller.close();
  }
}