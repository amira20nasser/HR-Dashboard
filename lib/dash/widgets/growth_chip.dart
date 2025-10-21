import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_styles.dart';

class GrowthChip extends StatelessWidget {
  const GrowthChip({super.key, required this.label});
  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: AppColors.containerColor1,
      ),
      child: Text(
        label,
        style: AppStyles.styleRegular12(context).copyWith(
          fontFamily: GoogleFonts.robotoFlex().fontFamily,
          color: Color(0xff303030),
        ),
      ),
    );
  }
}
