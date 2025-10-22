import 'package:flutter/material.dart';
import '../../entities/announcement_entity.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_styles.dart';
import 'announcement_header.dart';
import 'announcement_list_view.dart';

final List<AnnouncementEntity> announcements = [
  AnnouncementEntity(
    title: "Outing schedule for every departement",
    date: DateTime.now().subtract(Duration(minutes: 5)),
  ),
  AnnouncementEntity(
    title: "Meeting HR Department",
    date: DateTime.now().subtract(Duration(days: 1)),
  ),
  AnnouncementEntity(
    title: "IT Department need two more talents for UX/UI Designer position",
    date: DateTime.now().subtract(Duration(days: 1, hours: 10)),
  ),
];

class AnnouncementSection extends StatelessWidget {
  const AnnouncementSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.borderColor),
      ),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: AnnouncementHeader(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: AnnouncementsListView(announcements: announcements),
          ),
          Divider(color: AppColors.borderColor),
          TextButton(
            onPressed: () {},
            child: Text(
              "See All Announcement",
              style: AppStyles.styleMedium14(
                context,
              ).copyWith(color: AppColors.primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
