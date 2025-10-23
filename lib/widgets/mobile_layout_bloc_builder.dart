import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../dash/mobile_dash_board_body.dart';
import '../manager/view_manager_cubit.dart';

class MobileLayoutBlocBuilder extends StatelessWidget {
  const MobileLayoutBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ViewManagerCubit, ViewManagerState>(
      builder: (context, state) {
        if (state is DepartmentViewState) {
          return Text("Mobile Department Body");
        }
        if (state is EmployeeViewState) {
          return Text("Mobile EmployeeViewState Body");
        }
        if (state is SupportViewState) {
          return Text("Mobile SupportViewState Body");
        }
        if (state is RecruitmentViewState) {
          return Text("Mobile RecruitmentViewState Body");
        }
        if (state is SettingsViewState) {
          return Text("Mobile SettingsViewState Body");
        }
        if (state is ScheduleViewState) {
          return Text("Mobile ScheduleViewState Body");
        }
        return MobileDashBoardBody();
      },
    );
  }
}
