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
          SizedBox(width: 250, child: CustomDrawer()),

          // state management to determine which body to view
          Expanded(child: DesktopLayoutBlocBuilder()),
        ],
      ),
    );
  }
}
