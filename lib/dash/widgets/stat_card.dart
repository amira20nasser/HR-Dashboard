import 'package:flutter/material.dart';
import '../../utils/app_colors.dart';
import 'chart_growth_indicator.dart';
import 'gender_stat.dart';
import 'growth_chip.dart';
import 'stat_info.dart';
import 'statistics_chart.dart';

class StatisticsCard extends StatelessWidget {
  const StatisticsCard({
    super.key,
    required this.title,
    required this.number,
    required this.men,
    required this.women,
    required this.label,
  });

  final String title, number, men, women, label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.borderColor),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              StatisticsInfo(title: title, number: number),
              Flexible(
                child: SizedBox(
                  height: 80,
                  width: 100,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    clipBehavior: Clip.hardEdge,
                    children: [
                      StatisticsChart(),
                      const Positioned(top: -4, child: ChartGrowthIndicator()),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GenderStats(men: men, women: women),
              Flexible(child: GrowthChip(label: label)),
            ],
          ),
        ],
      ),
    );
  }
}
