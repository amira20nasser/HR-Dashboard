import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../entities/drawer_entity.dart';
import '../../../utils/app_images.dart';
import '../../../utils/app_styles.dart';
import 'tablet_drawer_list_view.dart';

class TabletDrawerBody extends StatelessWidget {
  const TabletDrawerBody({super.key});
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
        Column(
          children: [
            Text(
              "MAIN MENU",
              style: AppStyles.styleMedium12(
                context,
              ).copyWith(fontFamily: GoogleFonts.roboto().fontFamily),
            ),
            SizedBox(height: 16),
            SizedBox(
              height: 260,
              child: TabletDrawerListView(items: mainMenuItems),
            ),
          ],
        ),
        SizedBox(height: 50),
        Column(
          children: [
            Text(
              "OTHERS",
              style: AppStyles.styleMedium12(
                context,
              ).copyWith(fontFamily: GoogleFonts.roboto().fontFamily),
            ),
            SizedBox(height: 16),
            SizedBox(
              height: 100,
              child: TabletDrawerListView(items: othersItems),
            ),
          ],
        ),
      ],
    );
  }
}
