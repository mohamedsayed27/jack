import 'package:flutter/material.dart';
import 'package:jack/core/app_router/screens_name.dart';
import 'package:jack/features/authentication/presentation/screens/login_screen.dart';
import 'package:jack/features/intro_screens/screens/onboarding_screen.dart';
import 'package:jack/features/intro_screens/screens/splash_screen.dart';

import '../../features/authentication/presentation/screens/register_screen.dart';
import '../../features/user/presentation/screens/main_layout_screens/main_layout_screen.dart';


class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    try {
      switch (settings.name) {
        case ScreenName.splashscreen:
          return MaterialPageRoute(builder: (context)=>const SplashScreen());
        case ScreenName.onboardingScreen:
          return MaterialPageRoute(builder: (context)=>const OnboardingScreen());
        case ScreenName.loginScreen:
          return MaterialPageRoute(builder: (context)=>const LoginScreen());
        case ScreenName.registerScreen:
          return _animateRouteBuilder(const RegisterScreen());
        case ScreenName.mainLayoutScreen:
          return _animateRouteBuilder(const MainLayoutScreen());
        default:
          return _errorRoute();
      }
    } catch (e) {
      return _errorRoute();
    }
  }

  static PageRouteBuilder _animateRouteBuilder(Widget to, {double x = 1, double y = 0}) {
    return PageRouteBuilder(
      pageBuilder: (_, __, ___) => to,
      transitionDuration: const Duration(milliseconds: 190),
      reverseTransitionDuration: const Duration(milliseconds: 190),
      transitionsBuilder: (context, animation, animationTime, child) {
        final tween = Tween<Offset>(begin: Offset(x, y), end: Offset.zero);
        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('خطأ'),
        ),
        body: const Center(
          child: Text('نعتذر حدث خطأ , الرجاء اعادة المحاولة'),
        ),
      );
    });
  }

}