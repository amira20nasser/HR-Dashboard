import 'package:flutter/material.dart';
import 'widgets/desktop_app_bar.dart';

class DesktopDashBoardBody extends StatelessWidget {
  const DesktopDashBoardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 24),
        DesktopAppBar(),

        Row(
          children: [
            // DashBoardAndAnnouncementSection
            // ActivityAndScheduleSection
          ],
        ),
      ],
    );
  }
}
