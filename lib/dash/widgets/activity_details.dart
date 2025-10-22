import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../entities/activity_entity.dart';
import '../../utils/app_styles.dart';

class ActivityDetails extends StatelessWidget {
  const ActivityDetails({super.key, required this.activity});
  final ActivityEntity activity;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          DateFormat('h.mm a, EEE d MMM yyyy').format(activity.date),
          style: AppStyles.styleRegular10(context).copyWith(
            fontFamily: GoogleFonts.roboto().fontFamily,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 10),
        Text(
          activity.title,
          style: AppStyles.styleMedium18(context).copyWith(color: Colors.white),
        ),
        SizedBox(height: 10),

        Text(
          activity.subtitle,
          style: AppStyles.styleMedium14(context).copyWith(
            fontFamily: GoogleFonts.roboto().fontFamily,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }
}
