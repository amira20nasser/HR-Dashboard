import 'package:flutter/material.dart';

import 'router/app_router.dart';
import 'utils/app_theme.dart';

void main() {
  runApp(const HrDashboardApp());
}

class HrDashboardApp extends StatelessWidget {
  const HrDashboardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'WeHR Dashboard',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      routerConfig: appRouter,
    );
  }
}
