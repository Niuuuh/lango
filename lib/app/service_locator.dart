import 'package:get_it/get_it.dart';

import '../core/data/data_sources/preferences_api.dart';
import '../core/data/repository/user_repository.dart';
import '../core/domain/entities/user.dart';
import '../core/presentation/cubit/user_cubit.dart';
import '../features/chat/data/data_sources/chat_api.dart';
import '../features/chat/data/data_sources/mock_chat_api.dart';
import '../features/chat/data/repository/chat_repository.dart';
import '../features/chat/data/repository/mock_chat_repository.dart';
import '../features/chat/presentation/bloc/chat_bloc.dart';
import '../features/history/data/repository/history_repository.dart';
import '../features/history/data/repository/mock_history_repository.dart';
import '../features/history/presentation/cubit/chat_history_cubit.dart';
import '../features/language/presentation/bloc/language_search_cubit.dart';
import '../features/onboarding/presentation/bloc/onboarding_bloc.dart';
import '../features/onboarding/presentation/bloc/typing_cubit.dart';
import '../features/summary/data/repository/mock_summary_repository.dart';
import '../features/summary/data/repository/summary_repository.dart';
import '../features/summary/presentation/bloc/summary_bloc.dart';
import '../features/topics/domain/topic.dart';
import '../features/topics/presentation/bloc/topic_cubit.dart';
import 'router.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerLazySingleton(() => AppRouter());
  getIt.registerLazySingleton(() => UserRepository(preferencesApi: getIt()));
  getIt.registerLazySingleton(() => UserCubit(userRepository: getIt()));
  getIt.registerFactory(() => OnboardingBloc(userCubit: getIt()));
  getIt.registerFactory(() => TypingBloc());
  getIt.registerFactory(() => LanguageSearchCubit());
  getIt.registerLazySingleton(() => ChatApi() ?? MockChatApi());
  getIt.registerLazySingleton(() => MockChatRepository() ?? ChatRepository(chatApi: getIt()));
  getIt.registerFactoryParam((User user, Topic topic) => ChatBloc(chatRepository: getIt(), user: user, topic: topic));
  getIt.registerLazySingleton(() => MockSummaryRepository() ?? SummaryRepository(chatApi: getIt()));
  getIt.registerFactory(() => SummaryBloc(summaryRepository: getIt(), historyRepository: getIt()));
  getIt.registerLazySingleton(() => PreferencesApi());
  getIt.registerFactoryParam((String topicId, _) => TopicCubit(topicId: topicId));
  getIt.registerLazySingleton(() => HistoryRepository(preferencesApi: getIt()) ?? MockHistoryRepository());
  getIt.registerLazySingleton(() => ChatHistoryCubit(historyRepository: getIt()));
}
