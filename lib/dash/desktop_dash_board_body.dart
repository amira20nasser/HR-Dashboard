import 'package:flutter/material.dart';
import 'widgets/desktop_app_bar.dart';
import 'widgets/desktop_dashboard_content.dart';

class DesktopDashBoardBody extends StatelessWidget {
  const DesktopDashBoardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 23),
        DesktopAppBar(),
        SizedBox(height: 35),
        Expanded(child: DesktopDashboardContent()),
      ],
    );
  }
}
