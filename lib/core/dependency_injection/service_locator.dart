import 'package:get_it/get_it.dart';
import 'package:lango/features/chat/data/data_sources/mock_chat_api.dart';

import '../../features/chat/data/data_sources/chat_api.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerLazySingleton<ChatApi>(() => MockChatApi());
}