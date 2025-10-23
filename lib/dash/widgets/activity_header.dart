import 'package:flutter/material.dart';

import '../../utils/app_styles.dart';

class ActivityHeader extends StatelessWidget {
  const ActivityHeader({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 10, left: 24, right: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        color: Color.fromARGB(27, 32, 74, 170),
      ),
      child: FittedBox(
        child: Row(
          children: [
            Text(
              "Recently Activity",
              style: AppStyles.styleMedium18(
                context,
              ).copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
