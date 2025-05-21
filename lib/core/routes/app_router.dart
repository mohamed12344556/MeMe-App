import 'package:flutter/material.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      // case Routes.onboardingView:
      //   return MaterialPageRoute(builder: (_) => const OnboardingView());

      default:
        return null;
    }
  }
}
