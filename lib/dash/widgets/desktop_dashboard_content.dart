import 'package:flutter/material.dart';
import 'activity_and_schedule_section.dart';
import 'dash_board_and_announcement_section.dart';

class DesktopDashboardContent extends StatelessWidget {
  const DesktopDashboardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(flex: 8, child: DashBoardAndAnnouncementSection()),
        SizedBox(width: 30),

        Expanded(flex: 5, child: ActivityAndScheduleSection()),
        SizedBox(width: 30),
      ],
    );
  }
}
