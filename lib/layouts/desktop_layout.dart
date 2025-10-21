import 'package:flutter/material.dart';
import '../widgets/desktop_bloc_builder.dart';
import '../widgets/drawer/custom_drawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(flex: 1, child: CustomDrawer()),
          SizedBox(width: 50),
          Expanded(flex: 6, child: DesktopLayoutBlocBuilder()),
        ],
      ),
    );
  }
}
