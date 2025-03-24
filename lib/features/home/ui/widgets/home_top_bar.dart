import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:week7/core/theming/colors.dart';
import 'package:week7/core/theming/styles.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi, Omar!",
              style: TextStyles.font18DarkBlueBold,
            ),
            Text(
              "How Are you Today?",
              style: TextStyles.font12DarkGreyRegular,
            )
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 24.0,
          backgroundColor: ColorsManager.moreLighterGrey,
          child: SvgPicture.asset('assets/svgs/notifications.svg'),
        )
      ],
    );
  }
}
