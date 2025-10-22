import 'package:flutter/material.dart';

import '../../utils/app_styles.dart';
import '../../widgets/row_calender.dart';

class AnnouncementHeader extends StatelessWidget {
  const AnnouncementHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Announcement", style: AppStyles.styleMedium18(context)),
        RowCalender(),
      ],
    );
  }
}
