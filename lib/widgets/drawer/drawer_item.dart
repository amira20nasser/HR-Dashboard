import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../entities/drawer_entity.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_styles.dart';

class DesktopDrawerItem extends StatelessWidget {
  const DesktopDrawerItem({
    super.key,
    required this.isSelected,
    required this.dashBoardEntity,
  });
  final bool isSelected;
  final DrawerEntity dashBoardEntity;
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

        Flexible(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              dashBoardEntity.title,
              style: AppStyles.styleRegular16(context).copyWith(
                color: isSelected
                    ? AppColors.primaryColor
                    : AppColors.secondarySubtitleColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        SizedBox(width: 5),
      ],
    );
  }
}
