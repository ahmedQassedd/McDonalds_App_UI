

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/services.dart' ;
import 'package:mcdonalds_app_ui/core/di/injection.dart';
import 'package:mcdonalds_app_ui/core/util/blocs/app_cubit/app_cubit.dart';
import 'package:mcdonalds_app_ui/core/util/blocs/app_cubit/app_states.dart';
import 'package:mcdonalds_app_ui/core/util/blocs/app_cubit/bloc_observer/bloc_observer.dart';
import 'package:mcdonalds_app_ui/core/util/network/local/cache_helper.dart';
import 'package:mcdonalds_app_ui/core/util/widgets/light_theme.dart';
import 'package:mcdonalds_app_ui/features/splash_page/presentation/page/splash_page.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  CacheHelper.sharedInit();
  init();
  Bloc.observer = MyBlocObserver();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp , DeviceOrientation
    .portraitDown]
  );


  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => sl<AppCubit>(),
      child: BlocBuilder<AppCubit, AppStates>(builder: (context, state) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: lightingTheme(),
          home: SplashPage(),
        );
      }),
    );
  }
}
