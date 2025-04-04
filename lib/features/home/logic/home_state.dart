import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:week7/core/networking/api_error_handler.dart';
import 'package:week7/features/home/data/models/specializations_response_model.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  // Specializations
  const factory HomeState.specializationLoading() = SpecializationLoading;

  const factory HomeState.specializationSuccess(
          List<SpecializationsData?>? specializationDataList) =
      SpecializationSuccess;

  const factory HomeState.specializationError(ErrorHandler errorHandler) =
      SpecializationError;

  // Doctors
  const factory HomeState.doctorsSuccess(List<Doctors?>? doctorsList) =
      DoctorsSuccess;

  const factory HomeState.doctorsError(ErrorHandler errorHandler) =
      DoctorsError;
}
