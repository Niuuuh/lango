import 'package:bloc/bloc.dart';

import '../../../history/data/repository/history_repository.dart';
import '../../../history/domain/entities/chat_history_entry.dart';
import '../../data/repository/summary_repository.dart';
import 'summary_event.dart';
import 'summary_state.dart';

class SummaryBloc extends Bloc<SummaryEvent, SummaryState> {
  final SummaryRepository summaryRepository;
  final HistoryRepository historyRepository;

  SummaryBloc({
    required this.summaryRepository,
    required this.historyRepository,
  }) : super(const SummaryState.initial()) {
    on<SummaryStarted>(_onSummaryStarted);
  }

  Future<void> _onSummaryStarted(SummaryStarted event, Emitter<SummaryState> emit) async {
    try {
      emit(SummaryState.loading());
      final summary = await summaryRepository.summarizeSession(
        user: event.user,
        topic: event.topic,
        messages: event.messages,
      );
      final entry = ChatHistoryEntry(
        languageId: event.user.targetLanguage!.name,
        topicId: event.topic.name,
        date: DateTime.now(),
        messages: event.messages,
        summary: summary,
      );
      await historyRepository.createHistoryEntry(entry);
      emit(SummaryState.success(summary: summary));
    } catch (e) {
      final error = e is Exception ? e : Exception('Unknown error: $e');
      emit(SummaryState.failure(error: error));
    }
  }
}
