import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_styles.dart';
import 'tablet_drawer_body.dart';

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
