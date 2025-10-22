import 'package:flutter/material.dart';
import 'announcement_section.dart';
import 'dash_board_section.dart';

class DashBoardAndAnnouncementSection extends StatelessWidget {
  const DashBoardAndAnnouncementSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 35),
        DashBoardSection(),
        SizedBox(height: 16),
        AnnouncementSection(),
        SizedBox(height: 10),
      ],
    );
  }
}
