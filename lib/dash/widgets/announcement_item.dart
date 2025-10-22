import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../entities/announcement_entity.dart';
import '../../helper_functions/functions.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_images.dart';
import '../../utils/app_styles.dart';

class AnnouncementItem extends StatelessWidget {
  const AnnouncementItem({super.key, required this.announcementEntity});
  final AnnouncementEntity announcementEntity;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.drawerColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.borderColor),
      ),
      child: ListTile(
        title: Text(
          announcementEntity.title,
          overflow: TextOverflow.ellipsis,
          maxLines: 3,
          style: AppStyles.styleRegular16(context),
        ),
        subtitle: Text(
          formatRelativeTime(announcementEntity.date),
          style: AppStyles.styleRegular10(context),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(Assets.imagesPin),
            SizedBox(width: 20),
            Icon(Icons.more_horiz),
          ],
        ),
      ),
    );
  }
}
