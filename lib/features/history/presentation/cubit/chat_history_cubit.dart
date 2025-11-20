import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:lango/features/history/domain/entities/chat_history_entry.dart';

import '../../data/respository/history_repository.dart';
import '../../../language/domain/entities/language.dart';
import '../../../topics/domain/topic.dart';
import 'chat_history_state.dart';

class ChatHistoryCubit extends Cubit<ChatHistoryState> {
  final HistoryRepository historyRepository;

  late final StreamSubscription _subscription;

  ChatHistoryCubit({
    required this.historyRepository,
  }) : super(ChatHistoryState.initial());

  Future<void> load() async {
    emit(ChatHistoryState.loading());
    try {
      final history = await historyRepository.getHistory();
      emit(ChatHistoryState.success(history: history));
      _subscription = historyRepository.watchHistory().listen(
        (history) => emit(ChatHistoryState.success(history: history)),
        onError: (e) => emit(ChatHistoryState.failure()),
      );
    } catch (e) {
      emit(ChatHistoryState.failure());
    }
  }

  List<ChatHistoryEntry> select(Language language, Topic topic) {
    assert(state is ChatHistorySuccess);
    if (state is! ChatHistorySuccess) return [];

    final history = (state as ChatHistorySuccess).history;
    return history.entries.where(
      (entry) => entry.languageId == language.name && entry.topicId == topic.name,
    ).toList();
  }

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }
}
