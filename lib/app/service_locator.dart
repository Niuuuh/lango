import 'package:get_it/get_it.dart';
import 'package:lango/app/router.dart';
import 'package:lango/core/data/repository/user_repository.dart';
import 'package:lango/features/chat/data/data_sources/mock_chat_api.dart';
import 'package:lango/features/chat/data/repository/chat_repository.dart';
import 'package:lango/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:lango/features/language/presentation/bloc/language_search_cubit.dart';
import 'package:lango/features/onboarding/presentation/bloc/typing_cubit.dart';

import '../core/data/data_sources/preferences_api.dart';
import '../core/presentation/cubit/user_cubit.dart';
import '../features/chat/data/data_sources/chat_api.dart';
import '../features/chat/data/repository/mock_chat_repository.dart';
import '../features/history/data/respository/mock_history_repository.dart';
import '../features/history/presentation/cubit/chat_history_cubit.dart';
import '../features/history/data/respository/history_repository.dart';
import '../features/language/domain/entities/language.dart';
import '../features/onboarding/presentation/bloc/onboarding_cubit.dart';
import '../features/topics/domain/topic.dart';
import '../features/topics/presentation/bloc/topic_cubit.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerLazySingleton(() => AppRouter());
  getIt.registerLazySingleton(() => UserRepository(preferencesApi: getIt()));
  getIt.registerLazySingleton(() => UserCubit(userRepository: getIt()));
  getIt.registerFactory(() => OnboardingCubit(userCubit: getIt()));
  getIt.registerFactory(() => TypingBloc());
  getIt.registerLazySingleton(() => MockChatApi() ?? ChatApi());
  getIt.registerLazySingleton(() => MockChatRepository() ?? ChatRepository(chatApi: getIt()));
  getIt.registerFactoryParam((Language language, Topic topic) => ChatBloc(
    chatRepository: getIt(),
    historyRepository: getIt(),
    language: language,
    topic: topic,
  ));
  getIt.registerLazySingleton(() => PreferencesApi());
  getIt.registerFactoryParam((String topicId, _) => TopicCubit(topicId: topicId));
  getIt.registerLazySingleton(() => MockHistoryRepository() ?? HistoryRepository(preferencesApi: getIt()));
  getIt.registerLazySingleton(() => ChatHistoryCubit(historyRepository: getIt()));
  getIt.registerFactory(() => LanguageSearchCubit());
}
