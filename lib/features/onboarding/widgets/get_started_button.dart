import 'package:flutter/material.dart';
import 'package:week7/core/helpers/extensions.dart';
import 'package:week7/core/routing/routes.dart';
import 'package:week7/core/theming/colors.dart';

import '../../../core/theming/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: (){
          context.pushNamed(Routes.loginScreen);
        },
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(ColorsManager.mainBlue),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: WidgetStateProperty.all(const Size(double.infinity, 52)),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
            )
          )
        ),
        child: Text(
            "Get Started",
            style: TextStyles.font16WhiteSemibold,
        )
    );
  }
}
