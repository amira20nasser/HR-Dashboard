import 'package:flutter/material.dart';

import '../../utils/app_styles.dart';

class GenderStats extends StatelessWidget {
  const GenderStats({super.key, required this.men, required this.women});

  final String men, women;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(men, style: AppStyles.styleRegular12(context)),
        const SizedBox(height: 8),
        Text(women, style: AppStyles.styleRegular12(context)),
      ],
    );
  }
}
