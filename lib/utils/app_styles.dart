import 'dart:developer';

import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppStyles {
  static TextStyle styleMedium36(BuildContext context) => TextStyle(
    fontSize: _getResponsiveFontSize(context, baseFontSize: 36),
    fontWeight: FontWeight.w500,
    color: AppColors.tertiaryColor,
  );
  static TextStyle styleSemiBold36(BuildContext context) => TextStyle(
    fontSize: _getResponsiveFontSize(context, baseFontSize: 36),
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );
  static TextStyle styleMedium48(BuildContext context) => TextStyle(
    fontSize: _getResponsiveFontSize(context, baseFontSize: 48),
    fontWeight: FontWeight.w500,
    color: AppColors.tertiaryColor,
  );

  static TextStyle styleMedium24(BuildContext context) => TextStyle(
    fontSize: _getResponsiveFontSize(context, baseFontSize: 24),
    fontWeight: FontWeight.w500,
    color: AppColors.tertiaryColor,
  );

  static TextStyle styleMedium18(BuildContext context) => TextStyle(
    fontSize: _getResponsiveFontSize(context, baseFontSize: 18),
    fontWeight: FontWeight.w500,
    color: AppColors.tertiaryColor,
  );

  static TextStyle styleRegular16(BuildContext context) => TextStyle(
    fontSize: _getResponsiveFontSize(context, baseFontSize: 16),
    fontWeight: FontWeight.w400,
    color: AppColors.secondaryTitleColor,
  );
  static TextStyle styleMedium14(BuildContext context) => TextStyle(
    fontSize: _getResponsiveFontSize(context, baseFontSize: 14),
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  static TextStyle styleMedium12(BuildContext context) => TextStyle(
    fontSize: _getResponsiveFontSize(context, baseFontSize: 12),
    fontWeight: FontWeight.w500,
    color: AppColors.secondarySubtitleColor,
  );
  static TextStyle styleRegular12(BuildContext context) => TextStyle(
    fontSize: _getResponsiveFontSize(context, baseFontSize: 12),
    fontWeight: FontWeight.w400,
    color: AppColors.secondarySubtitleColor,
  );

  static TextStyle styleRegular10(BuildContext context) => TextStyle(
    fontSize: _getResponsiveFontSize(context, baseFontSize: 10),
    fontWeight: FontWeight.w400,
    color: AppColors.secondarySubtitleColor,
  );

  //
  static double _getResponsiveFontSize(
    BuildContext context, {
    required double baseFontSize,
  }) {
    double scaleFactor = _getScaleFactor(context);
    double responsiveFontSize = baseFontSize * scaleFactor;
    double lowerLimit = baseFontSize * .8;
    double upperLimit = baseFontSize * 1.2;
    log(
      "fontsize $baseFontSize scaleFactor $scaleFactor LowerLimit $lowerLimit upperLimit $upperLimit ,responsiveFontSize $responsiveFontSize ",
    );
    return responsiveFontSize.clamp(lowerLimit, upperLimit);
  }

  static double _getScaleFactor(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    if (width < 600) {
      return width / 600;
    } else if (width < 900) {
      return width / 900;
    }
    return width / 2000;
  }
}
