import 'package:flutter/material.dart';

import '../../widgets/app_bar_actions.dart';
import '../../widgets/fake_search_widget.dart';

class DesktopAppBar extends StatelessWidget {
  const DesktopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FakeSearchWidget(),
        Expanded(child: AppBarActions(isDestop: true)),
      ],
    );
  }
}
