import 'package:flutter/material.dart';

import '../../layouts/drawer_body_section.dart';
import '../../entities/drawer_entity.dart';
import '../../utils/app_images.dart';

class DrawerBody extends StatelessWidget {
  const DrawerBody({super.key});
  final List<DrawerEntity> mainMenuItems = const [
    DrawerEntity(
      title: "Dashboard",
      assetSvgName: Assets.imagesDashboard,
      view: Views.dashBoard,
    ),
    DrawerEntity(
      title: "Recruitment",
      assetSvgName: Assets.imagesRecruitment,
      view: Views.recruitment,
    ),
    DrawerEntity(
      title: "Schedule",
      assetSvgName: Assets.imagesSchedule,
      view: Views.schedule,
    ),
    DrawerEntity(
      title: "Employee",
      assetSvgName: Assets.imagesEmployee,
      view: Views.employee,
    ),
    DrawerEntity(
      title: "Department",
      assetSvgName: Assets.imagesDepartment,
      view: Views.department,
    ),
  ];

  final List<DrawerEntity> othersItems = const [
    DrawerEntity(
      title: "Support",
      assetSvgName: Assets.imagesSupport,
      view: Views.support,
    ),
    DrawerEntity(
      title: "Settings",
      assetSvgName: Assets.imagesSettings,
      view: Views.settings,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DrawerBodySection(items: mainMenuItems, sectionName: 'MAIN MENU'),
        SizedBox(height: 50),
        DrawerBodySection(items: othersItems, sectionName: 'OTHERS'),
      ],
    );
  }
}
