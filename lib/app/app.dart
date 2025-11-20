import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lango/app/router.dart';
import 'package:lango/app/service_locator.dart';
import 'package:lango/core/presentation/cubit/user_cubit.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<UserCubit>()..load(),
      child: MaterialApp.router(
        routerConfig: getIt<AppRouter>().routerConfig,
      ),
    );
  }
}
