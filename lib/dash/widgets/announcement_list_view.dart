import 'package:flutter/material.dart';

import '../../entities/announcement_entity.dart';
import 'announcement_item.dart';

class AnnouncementsListView extends StatelessWidget {
  const AnnouncementsListView({super.key, required this.announcements});
  final List<AnnouncementEntity> announcements;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: announcements.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: AnnouncementItem(announcementEntity: announcements[index]),
        );
      },
    );
  }
}
