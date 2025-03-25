import 'package:flutter/material.dart';
import 'package:week7/features/home/ui/widgets/doctors_blue_container.dart';
import 'package:week7/features/home/ui/widgets/doctors_speciality_see_all.dart';
import 'package:week7/features/home/ui/widgets/home_top_bar.dart';
import 'package:week7/features/home/ui/widgets/specializations_and_doctors_bloc_builder.dart';

import '../../../core/helpers/spacing.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20, 16, 20, 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              const DoctorsBlueContainer(),
              verticalSpace(16),
              const DoctorsSpecialitySeeAll(),
              verticalSpace(16),
              const SpecializationsAndDoctorsBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
