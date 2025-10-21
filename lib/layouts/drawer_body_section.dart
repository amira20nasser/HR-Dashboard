import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_styles.dart';
import 'drawer_body_list_view.dart';
import 'drawer_entity.dart';

class DrawerBodySection extends StatelessWidget {
  const DrawerBodySection({
    super.key,
    required this.items,
    required this.sectionName,
  });
  final List<DrawerEntity> items;
  final String sectionName;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          sectionName,
          style: AppStyles.styleMedium12(
            context,
          ).copyWith(fontFamily: GoogleFonts.roboto().fontFamily),
        ),
        SizedBox(height: 16),
        Expanded(child: DrawerBodyListView(items: items)),
      ],
    );
  }
}
