import 'package:lango/features/topics/data/models/topics_response.dart';

import '../../../../core/data/data_sources/preferences_api.dart';
import '../../domain/topic.dart';

class TopicRepository {
  final PreferencesApi preferencesApi;

  const TopicRepository({required this.preferencesApi});

  Future<List<Topic>> getTopics() async {
    final json = await preferencesApi.getJson('topics');
    if (json == null) {
      return [];
    }
    final response = TopicsResponse.fromJson(json);
    return response.topics;
  }
}
