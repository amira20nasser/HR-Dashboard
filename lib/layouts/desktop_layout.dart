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
          SizedBox(width: 50),
          Expanded(child: DesktopLayoutBlocBuilder()),
        ],
      ),
    );
  }
}
