import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hr_dashboard/widgets/app_bar_actions.dart';
import 'package:hr_dashboard/widgets/drawer/custom_drawer.dart';

import '../utils/app_colors.dart';
import '../utils/app_images.dart';
import '../widgets/mobile_layout_bloc_builder.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SizedBox(
        width: MediaQuery.sizeOf(context).width / 2,
        child: CustomDrawer(),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              MobileAppBar(),
              Divider(color: AppColors.borderColor),
              MobileLayoutBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu),
            ),
            SizedBox(width: 10),
            GestureDetector(child: SvgPicture.asset(Assets.imagesUnion)),
          ],
        ),
        Flexible(child: AppBarActions(isDestop: false)),
      ],
    );
  }
}
