import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../entities/drawer_entity.dart';
import '../manager/view_manager_cubit.dart';
import '../utils/app_colors.dart';
import '../utils/app_images.dart';
import '../utils/app_styles.dart' show AppStyles;
import '../widgets/app_bar_actions.dart';
import '../widgets/fake_search_widget.dart';
import '../widgets/tablet_layout_bloc_builder.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: 120, child: TabletDrawer()),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Column(
                children: [
                  TabletAppBar(),
                  SizedBox(height: 12),
                  Divider(),
                  Expanded(child: TabletLayoutBlocBuilder()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TabletAppBar extends StatelessWidget {
  const TabletAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(width: 12),
        Icon(Icons.menu),
        SizedBox(width: 12),
        FakeSearchWidget(height: 36, width: 245),
        Expanded(child: AppBarActions()),
      ],
    );
  }
}

class TabletDrawer extends StatelessWidget {
  const TabletDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: AppColors.drawerColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              SizedBox(height: 30),
              Text("WeHR", style: AppStyles.styleSemiBold36(context)),
              SizedBox(height: 50),
              TabletDrawerBody(),
            ],
          ),
        ),
      ),
    );
  }
}

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

class TabletDrawerListView extends StatelessWidget {
  const TabletDrawerListView({super.key, required this.items});
  final List<DrawerEntity> items;

  @override
  Widget build(BuildContext context) {
    final viewManagerCubit = context.read<ViewManagerCubit>();

    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        var dashBoardItem = items[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 35.0),
          child: BlocBuilder<ViewManagerCubit, ViewManagerState>(
            buildWhen: (previous, current) =>
                viewManagerCubit.currentView == dashBoardItem.view ||
                previous != current,
            builder: (context, state) {
              bool isSelected =
                  viewManagerCubit.currentView == dashBoardItem.view;
              return GestureDetector(
                onTap: () {
                  viewManagerCubit.changeView(dashBoardItem.view);
                },
                child: SvgPicture.asset(
                  dashBoardItem.assetSvgName,
                  colorFilter: ColorFilter.mode(
                    isSelected
                        ? AppColors.primaryColor
                        : AppColors.disabledIconColor,
                    BlendMode.srcIn,
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
