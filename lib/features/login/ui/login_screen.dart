import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:week7/core/helpers/spacing.dart';
import 'package:week7/core/theming/styles.dart';
import 'package:week7/features/login/data/models/login_request_body.dart';
import 'package:week7/features/login/logic/login_cubit.dart';
import 'package:week7/features/login/ui/widgets/already_have_account_text.dart';
import 'package:week7/features/login/ui/widgets/email_and_password.dart';
import 'package:week7/features/login/ui/widgets/login_bloc_listener.dart';
import 'package:week7/features/login/ui/widgets/terms_and_conditions_text.dart';

import '../../../core/widgets/app_text_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  Text('Welcome Back',
                    style: TextStyles.font24BlueBold,
                  ),
                verticalSpace(8),
                Text('We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: TextStyles.font14GreyRegular,
                ),
                verticalSpace(36),

                Column(
                  children: [
                   const EmailAndPassword(),
                   verticalSpace(24),
                   Align(
                     alignment: AlignmentDirectional.centerEnd,
                     child: Text(
                         'Forget Password?',
                       style: TextStyles.font13BlueRegular,
                     ),
                   ),
                    verticalSpace(40),
                    AppTextButton(
                        buttonText: 'Login',
                        textStyle: TextStyles.font16WhiteSemiBold,
                        onPressed: () {
                          validateThenDoLogin(context);
                        },
                    ),
                    verticalSpace(16),
                    const TermsAndConditionsText(),
                    verticalSpace(60),
                    const AlreadyHaveAccountText(),
                    const LoginBlocListener(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()){
      context.read<LoginCubit>().emitLoginStates(
        LoginRequestBody(
            email: context.read<LoginCubit>().emailController.text,
            password: context.read<LoginCubit>().passwordController.text
        )
      );
    }
  }
}
