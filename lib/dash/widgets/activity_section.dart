import 'package:flutter/material.dart';

import '../../entities/activity_entity.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_styles.dart';
import 'activity_details.dart';
import 'activity_header.dart';

class ActivitySection extends StatelessWidget {
  const ActivitySection({
    super.key,
    required this.activity,
    required this.isDesktop,
  });
  final ActivityEntity activity;
  final bool isDesktop;
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
            child: ActionActivitySection(
              isDesktop: isDesktop,
              activity: activity,
            ),
          ),
        ],
      ),
    );
  }
}

class ActionActivitySection extends StatelessWidget {
  const ActionActivitySection({
    super.key,
    required this.isDesktop,
    required this.activity,
  });
  final bool isDesktop;
  final ActivityEntity activity;

  @override
  Widget build(BuildContext context) {
    if (isDesktop) {
      return Row(
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

                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
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
      );
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Today you makes ${activity.numberActivities} Activity",
          style: AppStyles.styleMedium14(context),
        ),
        SizedBox(height: 18),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: AppColors.primaryColor,

            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(3),
            ),
          ),
          child: Text(
            "See All Activity",
            style: AppStyles.styleMedium14(context),
          ),
        ),
        SizedBox(height: 18),
      ],
    );
  }
}
