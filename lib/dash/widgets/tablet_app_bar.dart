import 'package:flutter/material.dart';

import '../../widgets/app_bar_actions.dart';
import '../../widgets/fake_search_widget.dart';

class TabletAppBar extends StatelessWidget {
  const TabletAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(width: 12),
        Icon(Icons.menu),
        SizedBox(width: 12),
        FakeSearchWidget(height: 36, width: 245),
        Expanded(child: AppBarActions(isDestop: false)),
      ],
    );
  }
}
