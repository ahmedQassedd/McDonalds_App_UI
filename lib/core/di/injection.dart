
import 'package:get_it/get_it.dart';
import 'package:mcdonalds_app_ui/core/util/blocs/app_cubit/app_cubit.dart';
import 'package:mcdonalds_app_ui/core/util/network/remote/dio_helper.dart';
import 'package:mcdonalds_app_ui/core/util/network/repository.dart';

final sl = GetIt.instance;

Future<void> init() async {

  sl.registerFactory(() => AppCubit(repository: sl()));

  sl.registerLazySingleton<Repository>(() => RepositoryImpl(dioHelper: sl() ) );

  sl.registerLazySingleton<DioHelper>(() => DioHelperImpl());





}

