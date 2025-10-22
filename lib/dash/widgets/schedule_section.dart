import 'package:flutter/material.dart';

import '../../entities/announcement_entity.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_styles.dart';
import 'schedule_header.dart';
import 'upcoming_schedule_list_view.dart';

final List<AnnouncementEntity> activities1 = [
  AnnouncementEntity(
    title: "Review candidate applications",
    date: DateTime.now().subtract(Duration(minutes: 5)),
  ),
];
final List<AnnouncementEntity> activities2 = [
  AnnouncementEntity(
    title: "Interview with candidates",
    date: DateTime.now().subtract(Duration(days: 1)),
  ),
  AnnouncementEntity(
    title: "Short meeting with product designer from IT Departement",
    date: DateTime.now().subtract(Duration(days: 1, hours: 10)),
  ),
];

class ScheduleSection extends StatelessWidget {
  const ScheduleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.borderColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: const EdgeInsets.all(16.0), child: ScheduleHeader()),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "Priority",
                  style: AppStyles.styleRegular12(context),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: UpcomingScheduleListView(announcements: activities1),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text("Other", style: AppStyles.styleRegular12(context)),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: UpcomingScheduleListView(announcements: activities2),
              ),
            ],
          ),
          Divider(color: AppColors.borderColor),
          Center(
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Creat a New Schedule",
                style: AppStyles.styleMedium14(
                  context,
                ).copyWith(color: AppColors.primaryColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
