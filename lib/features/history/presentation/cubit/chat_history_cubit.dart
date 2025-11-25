import 'dart:async';

import 'package:bloc/bloc.dart';

import '../../../language/domain/entities/language.dart';
import '../../../topics/domain/topic.dart';
import '../../data/repository/history_repository.dart';
import '../../domain/entities/chat_history_entry.dart';
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
      await Future.delayed(Duration(milliseconds: 1000));
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
    return state.maybeWhen(
      success: (history) {
        return history.entries.where(
          (entry) => entry.languageId == language.name && entry.topicId == topic.name,
        ).toList();
      },
      orElse: () => [],
    );
  }

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }
}
