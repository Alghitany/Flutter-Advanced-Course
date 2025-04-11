import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:week7/features/home/data/models/specializations_response_model.dart';
import 'package:week7/features/home/logic/home_cubit.dart';
import 'package:week7/features/home/ui/widgets/specialization_list/speciality_list_view_item.dart';

class SpecialityListView extends StatefulWidget {
  final List<SpecializationsData?> specializationDataList;

  const SpecialityListView({super.key, required this.specializationDataList});

  @override
  State<SpecialityListView> createState() => _SpecialityListViewState();
}

class _SpecialityListViewState extends State<SpecialityListView> {
  var selectedSpecializationIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: widget.specializationDataList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setUpSpecialityClick(index, context);
              },
              child: SpecialityListViewItem(
                selectedIndex: selectedSpecializationIndex,
                itemIndex: index,
                specializationsData: widget.specializationDataList[index],
              ),
            );
          }),
    );
  }

  setUpSpecialityClick(index, context) {
    setState(() {
      selectedSpecializationIndex = index;
    });
    context.read<HomeCubit>().getDoctorsList(
        specializationId: widget.specializationDataList[index]?.id);
  }
}
