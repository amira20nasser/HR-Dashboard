import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_styles.dart';
import 'drawer_body.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.drawerColor,
      child: Column(
        children: [
          DrawerHeader(
            child: Text("WeHR", style: AppStyles.styleSemiBold36(context)),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: DrawerBody(),
            ),
          ),
        ],
      ),
    );
  }
}
