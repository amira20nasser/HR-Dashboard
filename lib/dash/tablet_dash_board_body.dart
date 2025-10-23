import 'package:flutter/material.dart';
import 'package:hr_dashboard/dash/widgets/activity_section.dart';
import 'package:hr_dashboard/dash/widgets/dash_board_and_announcement_section.dart';
import 'package:hr_dashboard/entities/activity_entity.dart';

import 'widgets/schedule_section.dart';

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

class TabletActivityAndSchedule extends StatelessWidget {
  const TabletActivityAndSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ActivitySection(
            isDesktop: false,
            activity: ActivityEntity(
              numberActivities: 12,
              date: DateTime.now(),
              title: "You Posted a New Job",
              subtitle:
                  "Kindly check the requirements and terms of work and make sure everything is right.",
            ),
          ),
        ),
        SizedBox(width: 16),
        Expanded(flex: 2, child: ScheduleSection()),
      ],
    );
  }
}
