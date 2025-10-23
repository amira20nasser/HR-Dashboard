import 'package:flutter/material.dart';
import '../dash/widgets/tablet_app_bar.dart';
import '../dash/widgets/tablet_drawer/tablet_drawer.dart';
import '../widgets/tablet_layout_bloc_builder.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: 120, child: TabletDrawer()),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Column(
                children: [
                  TabletAppBar(),
                  SizedBox(height: 12),
                  Divider(),
                  Expanded(child: TabletLayoutBlocBuilder()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
