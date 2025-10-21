import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_styles.dart';
import 'drawer_body.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: AppColors.drawerColor,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            Text("WeHR", style: AppStyles.styleSemiBold36(context)),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: DrawerBody(),
            ),
          ],
        ),
      ),
    );
  }
}
