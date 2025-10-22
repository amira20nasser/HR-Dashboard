import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'router/app_router.dart';
import 'utils/app_theme.dart';

void main() {
  runApp(DevicePreview(builder: (context) => const HrDashboardApp()));
}

class HrDashboardApp extends StatelessWidget {
  const HrDashboardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'WeHR Dashboard',
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      routerConfig: appRouter,
    );
  }
}
