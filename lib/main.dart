import 'package:build_apps_test/core/DI/di.dart';
import 'package:build_apps_test/core/router/router.dart';
import 'package:build_apps_test/core/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  initDi();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: theme,
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
