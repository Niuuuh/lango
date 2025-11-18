import 'package:lango/features/topics/data/repository/topic_repository.dart';

import '../../../../core/data/data_sources/preferences_api.dart';
import '../../domain/topic.dart';

class MockTopicRepository implements TopicRepository {
  @override
  PreferencesApi get preferencesApi => throw UnimplementedError();

  @override
  Future<List<Topic>> getTopics() async {
    await Future.delayed(Duration(milliseconds: 500));
    return [
      Topic(id: '1', name: 'Science', description: 'Explore the wonders of science.'),
      Topic(id: '2', name: 'History', description: 'Dive into historical events and figures.'),
      Topic(id: '3', name: 'Art', description: 'Discover famous artworks and artists.'),
      Topic(id: '4', name: 'Technology', description: 'Stay updated with the latest tech trends.'),
      Topic(id: '5', name: 'Travel', description: 'Share travel experiences and tips.'),
    ];
  }
}
