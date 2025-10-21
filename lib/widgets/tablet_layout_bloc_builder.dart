import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../manager/view_manager_cubit.dart';

class TabletLayoutBlocBuilder extends StatelessWidget {
  const TabletLayoutBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ViewManagerCubit, ViewManagerState>(
      builder: (context, state) {
        return Expanded(child: SizedBox());
      },
    );
  }
}
