import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/app_images.dart';
import '../utils/app_styles.dart';

class AppBarActions extends StatelessWidget {
  const AppBarActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {},
          icon: SvgPicture.asset(Assets.imagesNotification),
        ),
        SizedBox(width: 15),
        IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {},
          icon: SvgPicture.asset(Assets.imagesMessage),
        ),
        SizedBox(width: 15),
        CircleAvatar(
          radius: 15,
          backgroundImage: AssetImage(Assets.imagesImage),
        ),
        SizedBox(width: 12),
        Text("Amira Nasser", style: AppStyles.styleMedium16(context)),
        IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {},
          icon: SvgPicture.asset(Assets.imagesArrowDown),
        ),
      ],
    );
  }
}
