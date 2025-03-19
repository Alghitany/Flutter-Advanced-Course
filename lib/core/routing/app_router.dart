import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:week7/core/di/dependency_injection.dart';
import 'package:week7/core/routing/routes.dart';
import 'package:week7/features/login/logic/login_cubit.dart';
import 'package:week7/features/login/ui/login_screen.dart';
import 'package:week7/features/onboarding/onboarding_screen.dart';
import 'package:week7/features/signup/logic/sign_up_cubit.dart';
import 'package:week7/features/signup/ui/sign_up_screen.dart';

import '../../features/home/ui/home_screen.dart';

class AppRouter {

  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) =>
                BlocProvider(
                  create: (context) => getIt<LoginCubit>(),
                  child: const LoginScreen(),
                )
        );
      case Routes.signupScreen:
        return MaterialPageRoute(
            builder: (_) =>
                BlocProvider(
                  create: (context) => getIt<SignupCubit>(),
                  child: const SignupScreen(),
                )
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      default:
        return MaterialPageRoute(
            builder: (_) =>
                Scaffold(
                  body: Center(
                    child: Text("No route defined for ${settings.name}"),
                  ),
                )
        );
    }
  }
}