import 'package:flutter/material.dart';
import 'package:hr_dashboard/widgets/drawer/desktop_drawer.dart';

import '../dash/widgets/mobile_app_bar.dart';
import '../utils/app_colors.dart';
import '../widgets/mobile_layout_bloc_builder.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SizedBox(
        width: MediaQuery.sizeOf(context).width / 2,
        child: DesktopDrawer(),
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
