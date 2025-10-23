import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/app_images.dart';
import '../../widgets/app_bar_actions.dart';

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
