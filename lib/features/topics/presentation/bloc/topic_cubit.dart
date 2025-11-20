import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';

import '../../domain/topic.dart';

class TopicCubit extends Cubit<Topic?> {
  TopicCubit({required String topicId}) : super(null) {
    emit(Topic.values.firstWhereOrNull((topic) => topic.name == topicId));
  }
}
