import 'package:flutter/material.dart';

class DesktopDashBoard extends StatelessWidget {
  const DesktopDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "I 'm Amira Nasser I am Developing Sth",
          style: Theme.of(context).textTheme.displaySmall,
        ),
      ),
    );
  }
}
