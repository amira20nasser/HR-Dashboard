import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_styles.dart';

class ChartGrowthIndicator extends StatelessWidget {
  const ChartGrowthIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '+2%',
          style: AppStyles.styleRegular10(context).copyWith(
            color: AppColors.primaryColor,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Icon(Icons.arrow_upward, color: AppColors.primaryColor, size: 10),
      ],
    );
  }
}
