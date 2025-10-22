import 'package:flutter_bloc/flutter_bloc.dart';

import '../entities/drawer_entity.dart';

part 'view_manager_state.dart';

class ViewManagerCubit extends Cubit<ViewManagerState> {
  ViewManagerCubit() : super(DashBoardViewState());
  Views currentView = Views.dashBoard;
  void changeView(Views view) {
    switch (view) {
      case Views.dashBoard:
        currentView = Views.dashBoard;
        emit(DashBoardViewState());
        break;
      case Views.department:
        currentView = Views.department;

        emit(DepartmentViewState());
        break;
      case Views.employee:
        currentView = Views.employee;

        emit(EmployeeViewState());
        break;
      case Views.recruitment:
        currentView = Views.recruitment;

        emit(RecruitmentViewState());
        break;
      case Views.settings:
        currentView = Views.settings;

        emit(SettingsViewState());
        break;
      case Views.support:
        currentView = Views.support;
        emit(SupportViewState());
        break;
    }
  }
}
