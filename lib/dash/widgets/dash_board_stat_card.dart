import 'package:flutter/material.dart';

import '../../utils/app_styles.dart';

class DashboardStatCard extends StatelessWidget {
  const DashboardStatCard({
    super.key,
    required this.color,
    required this.noteColor,
    required this.title,
    required this.number,
    required this.note,
  });

  final Color color, noteColor;
  final String title, number, note;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: color,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: AppStyles.styleMedium18(context)),
          const SizedBox(height: 10),
          Text(number, style: AppStyles.styleMedium36(context)),
          const SizedBox(height: 10),
          Text(
            note,
            style: AppStyles.styleRegular16(context).copyWith(color: noteColor),
          ),
        ],
      ),
    );
  }
}
