import 'package:flutter/material.dart';
import '../entities/activity_entity.dart';
import '../utils/app_styles.dart';
import 'widgets/activity_section.dart';
import 'widgets/announcement_section.dart';
import 'widgets/dash_board_stats_top_in_column.dart';
import 'widgets/schedule_section.dart';
import 'widgets/stat_in_column.dart';

class MobileDashBoardBody extends StatelessWidget {
  const MobileDashBoardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16),
          Text("Dashboard", style: AppStyles.styleMedium24(context)),
          SizedBox(height: 16),
          DashboardStatsTopColumn(),
          SizedBox(height: 16),

          StatisticsInColumn(),
          AnnouncementSection(),
          SizedBox(height: 16),

          ActivitySection(
            isDesktop: false,
            activity: ActivityEntity(
              numberActivities: 12,
              date: DateTime.now(),
              title: "You Posted a New Job",
              subtitle:
                  "Kindly check the requirements and terms of work and make sure everything is right.",
            ),
          ),
          SizedBox(height: 16),
          ScheduleSection(),
        ],
      ),
    );
  }
}
