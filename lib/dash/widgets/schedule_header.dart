import 'package:flutter/material.dart';

import '../../utils/app_styles.dart';
import '../../widgets/row_calender.dart';

class ScheduleHeader extends StatelessWidget {
  const ScheduleHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Text(
            "Upcoming Schedule",
            style: AppStyles.styleMedium18(context),
          ),
        ),
        RowCalender(),
      ],
    );
  }
}
