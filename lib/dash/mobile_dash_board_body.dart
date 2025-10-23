import 'package:flutter/material.dart';

import '../entities/activity_entity.dart';
import '../utils/app_colors.dart';
import '../utils/app_styles.dart';
import 'widgets/activity_section.dart';
import 'widgets/announcement_section.dart';
import 'widgets/dash_board_stat_card.dart';
import 'widgets/schedule_section.dart';
import 'widgets/stat_card.dart';

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

class StatisticsInColumn extends StatelessWidget {
  const StatisticsInColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StatisticsCard(
          title: 'Total Employee',
          number: "216",
          men: "120 Men",
          women: "96 Women",
          label: '+2% Past month',
        ),
        SizedBox(height: 16),
        StatisticsCard(
          title: 'Talent Request',
          number: "16",
          men: "6 Men",
          women: "10 Women",
          label: '+5% Past month',
        ),
      ],
    );
  }
}

class DashboardStatsTopColumn extends StatelessWidget {
  const DashboardStatsTopColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DashboardStatCard(
          width: double.infinity,
          color: AppColors.containerColor1,
          title: "Available Position",
          number: "24",
          note: "4 Urgently needed",
          noteColor: AppColors.primaryColor,
        ),
        SizedBox(height: 16),
        DashboardStatCard(
          width: double.infinity,

          color: AppColors.containerColor2,
          title: "Job Open",
          number: "10",
          note: "4 Active hiring",
          noteColor: AppColors.babyBlue,
        ),
        SizedBox(height: 16),
        DashboardStatCard(
          width: double.infinity,

          color: AppColors.containerColor3,
          title: "New Employees",
          number: "24",
          note: "4 Department",
          noteColor: AppColors.pink,
        ),
      ],
    );
  }
}
