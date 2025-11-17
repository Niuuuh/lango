import 'package:bloc/bloc.dart';
import 'package:lango/features/chat/data/repository/chat_repository.dart';

import '../../domain/entities/chat_message.dart';
import 'chat_event.dart';
import 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final ChatRepository chatRepository;

  ChatBloc({required this.chatRepository}) : super(const ChatState.initial()) {
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
      emit(ChatState.loading(messages));
      final reply = await chatRepository.reply(messages);
      final updatedMessages = [...messages, ...reply.messages];
      emit(ChatState.success(updatedMessages));
    } catch (e) {
      final error = e is Exception ? e : Exception('Unknown error: $e');
      emit(ChatState.failure(state.messages, error));
    }
  }
}
