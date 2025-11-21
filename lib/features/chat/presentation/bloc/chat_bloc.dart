import 'package:bloc/bloc.dart';

import '../../../../core/domain/entities/user.dart';
import '../../../history/data/respository/history_repository.dart';
import '../../../history/domain/entities/chat_history_entry.dart';
import '../../../topics/domain/topic.dart';
import '../../data/repository/chat_repository.dart';
import '../../domain/entities/chat_message.dart';
import '../../domain/entities/chat_stage.dart';
import 'chat_event.dart';
import 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final ChatRepository chatRepository;
  final HistoryRepository historyRepository;
  final User user;
  final Topic topic;

  ChatBloc({
    required this.chatRepository,
    required this.historyRepository,
    required this.user,
    required this.topic,
  }) : super(const ChatState.initial()) {
    on<ChatStarted>(_onChatStarted);
    on<ChatMessageSent>(_onChatMessageSent);
  }

  Future<void> _onChatStarted(ChatStarted event, Emitter<ChatState> emit) async {
    await _replyToMessages([], emit);
  }

  Future<void> _onChatMessageSent(ChatMessageSent event, Emitter<ChatState> emit) async {
    final userMessage = ChatMessage.user(text: event.message);
    final messages = [...state.messages, userMessage];
    await _replyToMessages(messages, emit);
  }

  Future<void> _replyToMessages(List<ChatMessage> messages, Emitter<ChatState> emit) async {
    try {
      emit(ChatState.loading(messages: messages));
      final reply = await chatRepository.replyMessages(
        user: user,
        topic: topic,
        messages: messages,
      );
      final updatedMessages = [...messages, ...reply.messages];
      if (reply.stage == ChatStage.closing) {
        await _createHistoryEntry(updatedMessages);
        emit(ChatState.closing(messages: updatedMessages));
      } else {
        emit(ChatState.success(messages: updatedMessages));
      }
    } catch (e) {
      final error = e is Exception ? e : Exception('Unknown error: $e');
      emit(ChatState.failure(messages: state.messages, error: error));
    }
  }

  Future<void> _createHistoryEntry(List<ChatMessage> messages) async {
    final entry = ChatHistoryEntry(
      languageId: user.targetLanguage!.name,
      topicId: topic.name,
      date: DateTime.now(),
      messages: messages,
    );
    print(entry.toJson());
    await historyRepository.createHistoryEntry(entry);
  }
}
