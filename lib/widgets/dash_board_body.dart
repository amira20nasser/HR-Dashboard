import 'package:flutter/material.dart';

import 'adaptive_layout_widget.dart';
import 'desktop_dash_board.dart';

class DashBoardBody extends StatelessWidget {
  const DashBoardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayoutWidget(
      mobileLayout: (context) =>
          SizedBox(child: Text("I 'm Amira Nasser I am Developing Sth")),
      tabletLayout: (context) =>
          SizedBox(child: Text("I 'm Amira Nasser I am Developing Sth")),
      desktopLayout: (context) => DesktopDashBoard(),
    );
  }
}
