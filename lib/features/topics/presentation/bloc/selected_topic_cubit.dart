import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:lango/features/topics/presentation/bloc/selected_topic_state.dart';
import 'package:lango/features/topics/presentation/bloc/topics_cubit.dart';
import 'package:lango/features/topics/presentation/bloc/topics_state.dart';

class SelectedTopicCubit extends Cubit<SelectedTopicState> {
  final TopicsCubit topicsCubit;
  final String topicId;
  late final StreamSubscription subscription;

  SelectedTopicCubit({required this.topicsCubit, required this.topicId})
      : super(const SelectedTopicState.initial()) {
    _onTopicsChanged(topicsCubit.state);
    subscription = topicsCubit.stream.listen(_onTopicsChanged);
  }

  void _onTopicsChanged(TopicsState topicsState) {
    topicsState.maybeWhen(
      success: (topics) {
        final topic =  topics.firstWhereOrNull((topic) => topic.id == topicId);
        if (topic == null) {
          emit(const SelectedTopicState.failure('Topic not found'));
          return;
        }
        emit(SelectedTopicState.success(topic));
      },
      failure: (message) {
        emit(SelectedTopicState.failure(message));
      },
      orElse: () {
        emit(const SelectedTopicState.loading());
      },
    );
  }

  @override
  Future<void> close() {
    subscription.cancel();
    return super.close();
  }
}
