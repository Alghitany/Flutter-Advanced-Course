import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:week7/core/networking/api_service.dart';
import 'package:week7/core/networking/dio_factory.dart';
import 'package:week7/features/home/data/apis/home_api_service.dart';
import 'package:week7/features/login/data/repos/login_repo.dart';
import 'package:week7/features/login/logic/login_cubit.dart';

import '../../features/home/data/repos/home_repo.dart';
import '../../features/signup/data/repos/sign_up_repo.dart';
import '../../features/signup/logic/sign_up_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async{
  // Dio & Api Service
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(()=> ApiService(dio));

  // Login
  getIt.registerLazySingleton<LoginRepo>(()=> LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(()=> LoginCubit(getIt()));

  // signup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));

  // home
  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
}