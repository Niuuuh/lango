import 'package:flutter/material.dart';
import 'package:lango/app/router.dart';
import 'package:lango/app/service_locator.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: getIt<AppRouter>().router,
    );
  }
}
