import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/helpers/spacing.dart';
import '../../logic/home_cubit.dart';
import '../../logic/home_state.dart';
import 'doctors_list_view.dart';
import 'doctors_speciality_list_view.dart';

class SpecializationsAndDoctorsBlocBuilder extends StatelessWidget {
  const SpecializationsAndDoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit,HomeState>(
      buildWhen: (previous, current) =>
      current is SpecializationLoading ||
          current is SpecializationSuccess ||
          current is SpecializationError,
      builder: (context, state){
        return state.maybeWhen(
            specializationLoading: (){
              return setupLoading();
            },
            specializationSuccess: (specializationResponseModel){
              var specializationsList = specializationResponseModel.specializationDataList;
              return setupSuccess(specializationsList);
            },
            specializationError: (errorHandler) => setupError(),
            orElse: (){
              return const SizedBox.shrink();
            }
        );
      },
    );
  }
  Widget setupLoading(){
    return const SizedBox(
      height: 100,
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
  Widget setupSuccess(specializationsList){
    return Expanded(
      child: Column(
        children: [
          DoctorsSpecialityListView(
            specializationDataList: specializationsList ?? [],
          ),
          verticalSpace(8),
          DoctorsListView(
            doctorsList: specializationsList?[0]?.doctorsList,
          ),
        ],
      ),
    );
  }
  Widget setupError(){
    return const SizedBox.shrink();
  }
}
