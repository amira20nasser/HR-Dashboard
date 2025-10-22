import 'package:flutter/material.dart';

import '../../entities/activity_entity.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_styles.dart';
import 'activity_details.dart';
import 'activity_header.dart';

class ActivitySection extends StatelessWidget {
  const ActivitySection({super.key, required this.activity});
  final ActivityEntity activity;
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.tertiaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ActivityHeader(),
          SizedBox(height: 26),

          Padding(
            padding: const EdgeInsets.only(left: 24.0, bottom: 10, right: 8),
            child: ActivityDetails(activity: activity),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 16, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    "Today you makes ${activity.numberActivities} Activity",
                    style: AppStyles.styleMedium14(context),
                  ),
                ),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: AppColors.primaryColor,

                      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(3),
                      ),
                    ),
                    child: Text(
                      "See All Activity",
                      style: AppStyles.styleMedium14(context),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
