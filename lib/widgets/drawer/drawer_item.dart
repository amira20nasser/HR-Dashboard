import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../layouts/drawer_entity.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_styles.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.isSelected,
    required this.dashBoardEntity,
    this.showTitle = true,
  });
  final bool isSelected;
  final DrawerEntity dashBoardEntity;
  final bool showTitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(
          dashBoardEntity.assetSvgName,
          colorFilter: ColorFilter.mode(
            isSelected ? AppColors.primaryColor : AppColors.disabledIconColor,
            BlendMode.srcIn,
          ),
        ),
        // widget.icon,
        SizedBox(width: 24),
        !showTitle
            ? SizedBox()
            : Text(
                dashBoardEntity.title,
                style: AppStyles.styleRegular16(context).copyWith(
                  color: isSelected
                      ? AppColors.primaryColor
                      : AppColors.secondarySubtitleColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
      ],
    );
  }
}
