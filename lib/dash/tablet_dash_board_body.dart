import 'package:flutter/material.dart';
import 'widgets/dash_board_and_announcement_section.dart';
import 'widgets/tablet_activity_and_schedule.dart';

class TabletDashBoardBody extends StatelessWidget {
  const TabletDashBoardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: DashBoardAndAnnouncementSection()),
          SliverToBoxAdapter(child: TabletActivityAndSchedule()),
        ],
      ),
    );
  }
}
