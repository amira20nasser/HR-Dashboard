import 'package:flutter/material.dart';
import '../../entities/activity_entity.dart';
import 'activity_section.dart';
import 'schedule_section.dart';

class ActivityAndScheduleSection extends StatelessWidget {
  const ActivityAndScheduleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 76),
        ActivitySection(
          isDesktop: true,
          activity: ActivityEntity(
            numberActivities: 12,
            date: DateTime.now(),
            title: "You Posted a New Job",
            subtitle:
                "Kindly check the requirements and terms of work and make sure everything is right.",
          ),
        ),
        SizedBox(height: 20),
        ScheduleSection(),
      ],
    );
  }
}
