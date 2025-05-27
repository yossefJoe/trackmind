import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'api_service.dart';

final getIt = GetIt.instance;
Future<void> init() async {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  //Repos

  // getIt.registerSingleton<AuthRepoImpl>(AuthRepoImpl(getIt.get<ApiService>()));
 

//Cubits

// Auth

  // getIt.registerSingleton<SignupCubit>(SignupCubit(getIt.get<AuthRepoImpl>()));



}
