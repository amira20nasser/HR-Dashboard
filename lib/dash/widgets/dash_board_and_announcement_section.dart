import 'package:flutter/material.dart';
import 'announcement_section.dart';
import 'dash_board_section.dart';

class DashBoardAndAnnouncementSection extends StatelessWidget {
  const DashBoardAndAnnouncementSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      // crossAxisAlignment: CrossAxisAlignment.start,
      slivers: [
        SliverToBoxAdapter(child: DashBoardSection()),
        SliverToBoxAdapter(child: SizedBox(height: 16)),
        SliverToBoxAdapter(child: AnnouncementSection()),
      ],
    );
  }
}
