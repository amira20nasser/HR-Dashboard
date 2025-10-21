import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr_dashboard/dash/desktop_dash_board_body.dart';

import '../manager/view_manager_cubit.dart';

class DesktopLayoutBlocBuilder extends StatelessWidget {
  const DesktopLayoutBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ViewManagerCubit, ViewManagerState>(
      builder: (context, state) {
        if (state is DepartmentViewState) {
          return Text("Desktop Department Body");
        }
        if (state is EmployeeViewState) {
          return Text("Desktop EmployeeViewState Body");
        }
        if (state is SupportViewState) {
          return Text("Desktop SupportViewState Body");
        }
        if (state is RecruitmentViewState) {
          return Text("Desktop RecruitmentViewState Body");
        }
        if (state is SettingsViewState) {
          return Text("Desktop SettingsViewState Body");
        }
        return DesktopDashBoardBody();
      },
    );
  }
}
