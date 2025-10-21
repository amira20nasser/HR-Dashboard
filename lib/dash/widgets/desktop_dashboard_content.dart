import 'package:flutter/material.dart';
import 'activity_and_schedule_section.dart';
import 'dash_board_and_announcement_section.dart';

class DesktopDashboardContent extends StatelessWidget {
  const DesktopDashboardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 5, child: DashBoardAndAnnouncementSection()),
        Expanded(flex: 4, child: ActivityAndScheduleSection()),
      ],
    );
  }
}
