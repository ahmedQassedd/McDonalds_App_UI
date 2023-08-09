
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mcdonalds_app_ui/core/util/blocs/app_cubit/app_states.dart';
import 'package:mcdonalds_app_ui/core/util/network/repository.dart';


class AppCubit extends Cubit<AppStates> {

  final Repository repository ;



  AppCubit({required this.repository} ) : super(InitState());

  static AppCubit get(context) => BlocProvider.of(context);



  void getHotelsCub(){

    emit(LoadingHotelState());

    repository.getHotels().then((value) {

      emit(SuccessHotelState());

    }).catchError((onError){

      emit(ErrorHotelState());
    });

  }



  }
















