import 'package:get_it/get_it.dart';
import '../network/dio_helper.dart';

final sl = GetIt.instance;
class ServicesLocator{

  void init(){

    ///---------------BLoC---------------


    ///---------------USE CASES---------------


    ///---------------REPOSITORY--------------->>>>


    ///---------------DATA SOURCE--------------->>>


    ///---------------Network--------------->>>>>
    sl.registerLazySingleton(() => DioHelper());


  }
}