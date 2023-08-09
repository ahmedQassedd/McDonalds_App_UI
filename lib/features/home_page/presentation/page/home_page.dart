
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mcdonalds_app_ui/core/util/blocs/app_cubit/app_cubit.dart';
import 'package:mcdonalds_app_ui/core/util/blocs/app_cubit/app_states.dart';
import 'package:mcdonalds_app_ui/features/home_page/presentation/widgets/home_widgets.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: appBarForHome(),
          body: mainWidgetForHome (context),
        );
      },
    );
  }
}









