import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/presentation/cubit/user_cubit.dart';
import '../features/history/presentation/cubit/chat_history_cubit.dart';
import 'router.dart';
import 'service_locator.dart';
import 'theme.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<UserCubit>()..load(),
        ),
        BlocProvider(
          create: (context) => getIt<ChatHistoryCubit>()..load(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: getIt<AppRouter>().routerConfig,
        theme: theme(),
      ),
    );
  }
}
