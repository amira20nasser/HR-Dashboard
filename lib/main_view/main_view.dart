import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../manager/view_manager_cubit.dart';
import '../layouts/adaptive_layout_widget.dart';
import '../layouts/desktop_layout.dart';
import '../layouts/mobile_layout.dart';
import '../layouts/tablet_layout.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ViewManagerCubit(),
      child: AdaptiveLayoutWidget(
        mobileLayout: (context) => MobileLayout(),
        tabletLayout: (context) => TabletLayout(),
        desktopLayout: (context) => DesktopLayout(),
      ),
    );
  }
}
