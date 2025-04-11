import 'package:flutter/material.dart';
import 'package:week7/core/helpers/spacing.dart';
import 'package:week7/core/theming/styles.dart';

import '../../../../core/theming/colors.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacter;
  final bool hasNumber;
  final bool hasMinimalLength;

  const PasswordValidations(
      {super.key,
      required this.hasLowerCase,
      required this.hasUpperCase,
      required this.hasSpecialCharacter,
      required this.hasNumber,
      required this.hasMinimalLength});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At least 1 lowercase letter ', hasLowerCase),
        verticalSpace(2),
        buildValidationRow('At least 1 uppercase letter ', hasUpperCase),
        verticalSpace(2),
        buildValidationRow('At least 1 special letter ', hasSpecialCharacter),
        verticalSpace(2),
        buildValidationRow('At least 1 number ', hasNumber),
        verticalSpace(2),
        buildValidationRow('At least 8 characters long ', hasMinimalLength),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 2.5,
          backgroundColor: ColorsManager.grey,
        ),
        horizontalSpace(6),
        Text(
          text,
          style: TextStyles.font13DarkBlueRegular.copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: hasValidated ? ColorsManager.grey : ColorsManager.darkBlue,
          ),
        )
      ],
    );
  }
}
