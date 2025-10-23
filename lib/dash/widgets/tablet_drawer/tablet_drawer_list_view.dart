import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../entities/drawer_entity.dart';
import '../../../manager/view_manager_cubit.dart';
import '../../../utils/app_colors.dart';

class TabletDrawerListView extends StatelessWidget {
  const TabletDrawerListView({super.key, required this.items});
  final List<DrawerEntity> items;

  @override
  Widget build(BuildContext context) {
    final viewManagerCubit = context.read<ViewManagerCubit>();

    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        var dashBoardItem = items[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 35.0),
          child: BlocBuilder<ViewManagerCubit, ViewManagerState>(
            buildWhen: (previous, current) =>
                viewManagerCubit.currentView == dashBoardItem.view ||
                previous != current,
            builder: (context, state) {
              bool isSelected =
                  viewManagerCubit.currentView == dashBoardItem.view;
              return GestureDetector(
                onTap: () {
                  viewManagerCubit.changeView(dashBoardItem.view);
                },
                child: SvgPicture.asset(
                  dashBoardItem.assetSvgName,
                  colorFilter: ColorFilter.mode(
                    isSelected
                        ? AppColors.primaryColor
                        : AppColors.disabledIconColor,
                    BlendMode.srcIn,
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
