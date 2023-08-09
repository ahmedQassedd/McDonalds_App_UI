import 'package:dio/dio.dart';
import 'package:mcdonalds_app_ui/core/util/network/remote/dio_helper.dart';


abstract class Repository {

  Future<Response> getHotels({
    String? token,
  });


}




class RepositoryImpl extends Repository {
  final DioHelper dioHelper ;


  RepositoryImpl({required this.dioHelper });

  @override
  Future<Response> getHotels({String? token}) async {

    final response = await dioHelper.getData(endPoint: '' );

    return response ;

  }





}