import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/app_colors.dart';
import '../utils/app_images.dart';
import '../utils/app_styles.dart';

class FakeSearchWidget extends StatelessWidget {
  const FakeSearchWidget({super.key, this.width = 343, this.height = 44});
  final double width, height;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: AppColors.borderColor),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Search",
            style: AppStyles.styleRegular16(
              context,
            ).copyWith(color: AppColors.disabledIconColor),
          ),
          SvgPicture.asset(Assets.imagesUnion),
        ],
      ),
    );
  }
}
