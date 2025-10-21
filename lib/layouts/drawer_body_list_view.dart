import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../manager/view_manager_cubit.dart';
import '../widgets/drawer/drawer_item.dart';
import 'drawer_entity.dart';

class DrawerBodyListView extends StatelessWidget {
  const DrawerBodyListView({super.key, required this.items});
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
          padding: const EdgeInsets.only(bottom: 32.0),
          child: BlocBuilder<ViewManagerCubit, ViewManagerState>(
            buildWhen: (previous, current) =>
                viewManagerCubit.currentView == dashBoardItem.view ||
                previous != current,
            builder: (context, state) {
              final isSelected =
                  dashBoardItem.view == viewManagerCubit.currentView;

              return GestureDetector(
                onTap: () {
                  viewManagerCubit.changeView(dashBoardItem.view);
                },
                child: DrawerItem(
                  dashBoardEntity: dashBoardItem,
                  isSelected: isSelected,
                ),
              );
            },
          ),
        );
      },
    );
  }
}
