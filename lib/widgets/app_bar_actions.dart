import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/app_images.dart';
import '../utils/app_styles.dart';

class AppBarActions extends StatelessWidget {
  const AppBarActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {},
          icon: SvgPicture.asset(Assets.imagesNotification),
        ),
        Flexible(child: SizedBox(width: 15)),

        IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {},
          icon: SvgPicture.asset(Assets.imagesMessage),
        ),
        Flexible(child: SizedBox(width: 30)),
        CircleAvatar(
          radius: 15,
          backgroundImage: AssetImage(Assets.imagesImage),
        ),
        FittedBox(child: SizedBox(width: 5)),
        Text("Amira Nasser", style: AppStyles.styleMedium16(context)),
        Flexible(
          child: IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: SvgPicture.asset(Assets.imagesArrowDown),
          ),
        ),
      ],
    );
  }
}
