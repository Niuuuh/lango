import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../core/presentation/screens/splash_screen.dart';
import '../features/chat/presentation/screens/chat_screen.dart';
import '../features/history/domain/entities/chat_history_entry.dart';
import '../features/history/presentation/screens/history_screen.dart';
import '../features/language/presentation/screens/languages_screen.dart';
import '../features/onboarding/presentation/screens/onboarding_screen.dart';
import '../features/topics/domain/topic.dart';
import '../features/topics/presentation/bloc/topic_cubit.dart';
import '../features/topics/presentation/screens/topic_screen.dart';
import '../features/topics/presentation/screens/topics_screen.dart';
import 'service_locator.dart';

enum Routes {
  onboarding,
  languages,
  topics,
  topic,
  chat,
  history,
}

extension RoutingHelper on BuildContext {
  void goToOnboarding() {
    goNamed(Routes.onboarding.name);
  }

  void goToLanguages() {
    goNamed(Routes.languages.name);
  }

  void goToTopics() {
    goNamed(Routes.topics.name);
  }

  void goToTopic(Topic topic) {
    goNamed(
      Routes.topic.name,
      pathParameters: {'topicId': topic.name},
    );
  }

  void goToChat(Topic topic) {
    goNamed(
      Routes.chat.name,
      pathParameters: {'topicId': topic.name},
      extra: topic,
    );
  }

  void goToHistory(Topic topic, ChatHistoryEntry entry) {
    goNamed(
      Routes.history.name,
      pathParameters: {'topicId': topic.name},
      extra: entry,
    );
  }
}

class AppRouter {
  final routerConfig = GoRouter(
    initialLocation: '/onboarding',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        name: Routes.onboarding.name,
        path: '/onboarding',
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        name: Routes.languages.name,
        path: '/languages',
        builder: (context, state) => const LanguagesScreen(),
      ),
      GoRoute(
        name: Routes.topics.name,
        path: '/topics',
        builder: (context, state) => const TopicsScreen(),
        routes: [
          GoRoute(
            name: Routes.topic.name,
            path: ':topicId',
            builder: (context, state) {
              final topicId = state.pathParameters['topicId']!;
              return BlocProvider(
                create: (context) => getIt<TopicCubit>(param1: topicId),
                child: const TopicScreen(),
              );
            },
            routes: [
              GoRoute(
                name: Routes.chat.name,
                path: 'chat',
                builder: (context, state) {
                  final topicId = state.pathParameters['topicId']!;
                  return BlocProvider(
                    create: (context) => getIt<TopicCubit>(param1: topicId),
                    child: const ChatScreen(),
                  );
                },
              ),
              GoRoute(
                name: Routes.history.name,
                path: 'history',
                builder: (context, state) {
                  final topicId = state.pathParameters['topicId']!;
                  final entry = state.extra as ChatHistoryEntry;
                  return BlocProvider(
                    create: (context) => getIt<TopicCubit>(param1: topicId),
                    child: HistoryScreen(entry: entry),
                  );
                },
              )
            ],
          ),
        ],
      ),
    ],
  );
}
