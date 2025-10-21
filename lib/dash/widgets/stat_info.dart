import 'package:flutter/material.dart';

import '../../utils/app_styles.dart';

class StatisticsInfo extends StatelessWidget {
  const StatisticsInfo({super.key, required this.title, required this.number});

  final String title, number;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppStyles.styleMedium18(context)),
        const SizedBox(height: 10),
        Text(number, style: AppStyles.styleMedium48(context)),
      ],
    );
  }
}
