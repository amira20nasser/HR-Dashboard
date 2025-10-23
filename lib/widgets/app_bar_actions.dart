import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/app_images.dart';
import '../utils/app_styles.dart';

class AppBarActions extends StatelessWidget {
  const AppBarActions({super.key, required this.isDestop});
  final bool isDestop;
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
        isDestop
            ? FittedBox(fit: BoxFit.scaleDown, child: SizedBox(width: 5))
            : SizedBox.shrink(),
        isDestop
            ? Text("Amira Nasser", style: AppStyles.styleMedium16(context))
            : SizedBox.shrink(),
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
