import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:week7/core/helpers/spacing.dart';

import '../../../../core/theming/styles.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            itemCount: 8,
            itemBuilder: (context, index){
              return Container(
                margin: EdgeInsets.only(bottom: 16.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: Image.network(
                        width: 110.w,
                        height: 120.h,
                        'https://static.wikia.nocookie.net/five-world-war/images/6/64/Hisoka.jpg/revision/latest?cb=20190313114050',
                        fit: BoxFit.cover,
                      ),
                    ),
                    horizontalSpace(16),
                    Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Name',
                              style: TextStyles.font18DarkBlueBold,
                              overflow: TextOverflow.ellipsis,
                            ),
                            verticalSpace(5),
                            Text(
                              'Degree | 0100000000000000',
                              style: TextStyles.font12GreyMedium,
                            ),
                            verticalSpace(5),
                            Text(
                              'email@gmail.com',
                              style: TextStyles.font12GreyMedium,
                            )
                          ],
                        )
                    )
                  ],
                ),
              );
            }
        )
    );
  }
}
