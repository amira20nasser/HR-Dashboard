import 'package:flutter/material.dart';
import 'dash_board_section.dart';

class DashBoardAndAnnouncementSection extends StatelessWidget {
  const DashBoardAndAnnouncementSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DashBoardSection(),
        SizedBox(height: 16),
        // Future: AnnouncementSection(),
      ],
    );
  }
}
