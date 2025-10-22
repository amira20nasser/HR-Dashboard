import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_colors.dart';
import '../utils/app_images.dart';
import '../utils/app_styles.dart';

class RowCalender extends StatelessWidget {
  const RowCalender({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: AppColors.borderColor),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Today, 13 Sep 2021",
            overflow: TextOverflow.ellipsis,
            style: AppStyles.styleRegular12(
              context,
            ).copyWith(fontFamily: GoogleFonts.roboto().fontFamily),
          ),
          SizedBox(width: 8),
          SvgPicture.asset(Assets.imagesArrowDown, width: 8),
        ],
      ),
    );
  }
}
