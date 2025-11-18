import 'package:get_it/get_it.dart';
import 'package:lango/app/router.dart';
import 'package:lango/features/chat/data/data_sources/mock_chat_api.dart';
import 'package:lango/features/chat/data/repository/chat_repository.dart';
import 'package:lango/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:lango/features/topics/data/repository/mock_topic_repository.dart';
import 'package:lango/features/topics/data/repository/topic_repository.dart';

import '../core/data/data_sources/preferences_api.dart';
import '../features/chat/data/data_sources/chat_api.dart';
import '../features/chat/data/repository/mock_chat_repository.dart';
import '../features/topics/presentation/bloc/selected_topic_cubit.dart';
import '../features/topics/presentation/bloc/topics_cubit.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerLazySingleton(() => AppRouter());
  getIt.registerLazySingleton(() => MockChatApi() ?? ChatApi());
  getIt.registerLazySingleton(() => MockChatRepository() ?? ChatRepository(chatApi: getIt()));
  getIt.registerFactory(() => ChatBloc(chatRepository: getIt()));
  getIt.registerLazySingleton(() => PreferencesApi());
  getIt.registerLazySingleton(() => MockTopicRepository() ?? TopicRepository(preferencesApi: getIt()));
  getIt.registerLazySingleton(() => TopicsCubit(topicRepository: getIt()));
  getIt.registerFactoryParam((String id, _) => SelectedTopicCubit(topicsCubit: getIt(), topicId: id));
}
