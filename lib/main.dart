import 'package:flutter/material.dart';
import 'package:golmatch/shared/navigation/routes.dart';
import 'package:golmatch/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme.light(context),
      routerConfig: routerConfig,
    );
  }
}
