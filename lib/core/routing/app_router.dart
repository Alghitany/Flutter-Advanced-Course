import 'package:flutter/material.dart';
import 'package:week7/core/routing/routes.dart';
import 'package:week7/features/login/ui/login_screen.dart';
import 'package:week7/features/onboarding/onboarding_screen.dart';

class AppRouter{

  Route generateRoute (RouteSettings settings){
    final arguments = settings.arguments;

    switch (settings.name){
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
            builder: (_)=> const OnboardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_)=> const LoginScreen()
        );
      default:
        return MaterialPageRoute(
            builder: (_)=> Scaffold(
              body: Center(
                child: Text("No route defined for ${settings.name}"),
              ),
            )
        );

    }
  }
}