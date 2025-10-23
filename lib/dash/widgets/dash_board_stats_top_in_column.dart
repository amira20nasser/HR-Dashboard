import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import 'dash_board_stat_card.dart';

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
