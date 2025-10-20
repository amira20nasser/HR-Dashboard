import 'package:flutter/material.dart';

import 'utils/app_theme.dart';
import 'views/dash_board_view.dart';

void main() {
  runApp(const HrDashboardApp());
}

class HrDashboardApp extends StatelessWidget {
  const HrDashboardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: DashBoardView(),
    );
  }
}
