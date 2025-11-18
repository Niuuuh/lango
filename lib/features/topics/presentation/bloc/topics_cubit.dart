import 'package:bloc/bloc.dart';
import 'package:lango/features/topics/presentation/bloc/topics_state.dart';

import '../../data/repository/topic_repository.dart';

class TopicsCubit extends Cubit<TopicsState> {
  final TopicRepository topicRepository;

  TopicsCubit({required this.topicRepository}) : super(const TopicsState.initial());

  Future<void> load() async {
    emit(const TopicsState.loading());
    try {
      final topics = await topicRepository.getTopics();
      emit(TopicsState.success(topics));
    } catch (e) {
      emit(TopicsState.failure(e.toString()));
    }
  }
}
