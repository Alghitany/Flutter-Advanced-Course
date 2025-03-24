import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:week7/core/helpers/spacing.dart';
import 'package:week7/core/theming/colors.dart';
import 'package:week7/core/theming/styles.dart';

class DoctorsSpecialityListView extends StatelessWidget {
  const DoctorsSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 8,
          itemBuilder: (context, index){
            return Container(
                padding: EdgeInsetsDirectional.only(
                    start: index == 0 ? 0 : 24.w
                ),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 28.0,
                      backgroundColor: ColorsManager.lightBlue,
                      child: SvgPicture.asset(
                        'assets/svgs/general_speciality.svg',
                        height: 40.h,
                        width: 40.w,
                      ),
                    ),
                    verticalSpace(8),
                    Text(
                      'Specialization',
                      style: TextStyles.font12DarkBlueRegular,
                    )
                  ],
                ),
            );
          }
      ),
    );
  }
}
