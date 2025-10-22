import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../dash/tablet_dash_board_body.dart';
import '../manager/view_manager_cubit.dart';

class TabletLayoutBlocBuilder extends StatelessWidget {
  const TabletLayoutBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ViewManagerCubit, ViewManagerState>(
      builder: (context, state) {
        if (state is DepartmentViewState) {
          return Text("Tablet Department Body");
        }
        if (state is EmployeeViewState) {
          return Text("Tablet EmployeeViewState Body");
        }
        if (state is SupportViewState) {
          return Text("Tablet SupportViewState Body");
        }
        if (state is RecruitmentViewState) {
          return Text("Tablet RecruitmentViewState Body");
        }
        if (state is SettingsViewState) {
          return Text("Tablet SettingsViewState Body");
        }
        if (state is ScheduleViewState) {
          return Text("Tablet ScheduleViewState Body");
        }
        return TabletDashBoardBody();
      },
    );
  }
}
