import 'package:flutter/material.dart';

import '../../entities/activity_entity.dart';
import 'activity_section.dart';
import 'schedule_section.dart';

class TabletActivityAndSchedule extends StatelessWidget {
  const TabletActivityAndSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ActivitySection(
            isDesktop: false,
            activity: ActivityEntity(
              numberActivities: 12,
              date: DateTime.now(),
              title: "You Posted a New Job",
              subtitle:
                  "Kindly check the requirements and terms of work and make sure everything is right.",
            ),
          ),
        ),
        SizedBox(width: 16),
        Expanded(flex: 2, child: ScheduleSection()),
      ],
    );
  }
}
