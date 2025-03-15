import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:week7/core/networking/api_service.dart';
import 'package:week7/core/networking/dio_factory.dart';
import 'package:week7/features/login/data/repos/login_repo.dart';
import 'package:week7/features/login/logic/login_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async{
  // Dio & Api Service
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(()=> ApiService(dio));

  // Login
  getIt.registerLazySingleton<LoginRepo>(()=> LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(()=> LoginCubit(getIt()));
}