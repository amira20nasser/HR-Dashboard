import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../manager/view_manager_cubit.dart';

class MobileLayoutBlocBuilder extends StatelessWidget {
  const MobileLayoutBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ViewManagerCubit, ViewManagerState>(
      builder: (context, state) {
        return Expanded(child: SizedBox());
      },
    );
  }
}
