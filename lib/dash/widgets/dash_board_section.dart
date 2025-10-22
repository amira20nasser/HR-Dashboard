import 'package:flutter/material.dart';

import '../../utils/app_styles.dart';
import 'dashboard_stats_top_row.dart';
import 'stat_row.dart';

class DashBoardSection extends StatelessWidget {
  const DashBoardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Dashboard", style: AppStyles.styleMedium24(context)),
        const SizedBox(height: 16),
        DashboardStatsTopRow(),
        const SizedBox(height: 16),
        StatisticsRow(),
      ],
    );
  }
}
