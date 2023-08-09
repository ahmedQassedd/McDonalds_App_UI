
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mcdonalds_app_ui/core/util/blocs/app_cubit/app_cubit.dart';
import 'package:mcdonalds_app_ui/core/util/blocs/app_cubit/app_states.dart';
import 'package:mcdonalds_app_ui/core/util/widgets/navigate_and_finish.dart';
import 'package:mcdonalds_app_ui/features/home_page/presentation/page/home_page.dart';
import 'package:mcdonalds_app_ui/features/splash_page/presentation/widgets/splash_widgets.dart';
import 'package:page_transition/page_transition.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();

}

class _SplashPageState extends State<SplashPage> {


  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),  () => navigateAndFinish(context: context, pageTransitionType: PageTransitionType.fade , widget: HomePage()));
  }


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return mainWidgetForSplash();
      },
    );
  }
}
