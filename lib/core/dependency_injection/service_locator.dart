import 'package:get_it/get_it.dart';
import 'package:lango/features/chat/data/data_sources/mock_chat_api.dart';
import 'package:lango/features/chat/data/repository/chat_repository.dart';
import 'package:lango/features/chat/presentation/bloc/chat_bloc.dart';

import '../../features/chat/data/data_sources/chat_api.dart';
import '../../features/chat/data/repository/mock_chat_repository.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerLazySingleton<ChatApi>(() => MockChatApi());
  getIt.registerLazySingleton<ChatRepository>(() => MockChatRepository());
  getIt.registerFactory(() => ChatBloc(chatRepository: getIt()));
}
