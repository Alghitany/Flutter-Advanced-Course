



import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:week7/features/home/data/apis/home_api_constants.dart';

import '../../../../core/networking/api_constants.dart';
import '../models/specializations_response_model.dart';

part 'home_api_service.g.dart';

@RestApi(baseUrl : ApiConstants.apiBaseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;
  
  @GET(HomeApiConstants.specializationEP)
  Future<SpecializationsResponseModel> getSpecialization ();
}