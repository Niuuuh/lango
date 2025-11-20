import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lango/app/service_locator.dart';
import 'package:lango/features/language/presentation/screens/languages_screen.dart';

import '../core/presentation/cubit/user_cubit.dart';
import '../core/presentation/screens/splash_screen.dart';
import '../features/chat/presentation/screens/chat_screen.dart';
import '../features/onboarding/presentation/screens/onboarding_screen.dart';
import '../features/topics/presentation/bloc/selected_topic_cubit.dart';
import '../features/topics/presentation/screens/topic_screen.dart';
import '../features/topics/presentation/screens/topics_screen.dart';

enum Routes {
  onboarding,
  languages,
  topics,
  topic,
  chat,
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

  void goToTopic(String topicId) {
    goNamed(Routes.topic.name, pathParameters: {'topicId': topicId});
  }

  void goToChat(String topicId) {
    goNamed(Routes.chat.name, pathParameters: {'topicId': topicId});
  }
}

class AppRouter {
  final routerConfig = GoRouter(
    initialLocation: '/',
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
        path: '/language',
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
                create: (context) => getIt<SelectedTopicCubit>(param1: topicId),
                child: const TopicScreen(),
              );
            },
            routes: [
              GoRoute(
                name: Routes.chat.name,
                path: 'chat',
                builder: (context, state) => const ChatScreen(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
