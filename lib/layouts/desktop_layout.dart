import 'package:flutter/material.dart';
import '../widgets/desktop_bloc_builder.dart';
import '../widgets/drawer/desktop_drawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(flex: 2, child: DesktopDrawer()),
          SizedBox(width: 50),
          Expanded(flex: 7, child: DesktopLayoutBlocBuilder()),
        ],
      ),
    );
  }
}
