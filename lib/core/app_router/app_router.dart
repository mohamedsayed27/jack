import 'package:flutter/material.dart';
import 'package:jack/core/app_router/screens_name.dart';
import 'package:jack/features/authentication/presentation/screens/login_screen.dart';
import 'package:jack/features/chat/presentation/screens/chat_screen.dart';
import 'package:jack/features/intro_screens/screens/onboarding_screen.dart';
import 'package:jack/features/intro_screens/screens/splash_screen.dart';

import '../../features/authentication/presentation/screens/register_screen.dart';
import '../../features/chat/presentation/screens/messages_screen.dart';
import '../../features/user/presentation/screens/user_main_layout_screens/user_main_layout_screen.dart';
import '../../features/user/presentation/screens/user_main_layout_screens/more_screen_screens/about_app.dart';
import '../../features/user/presentation/screens/user_main_layout_screens/more_screen_screens/change_password_screen.dart';
import '../../features/user/presentation/screens/user_main_layout_screens/more_screen_screens/complaints_and_suggetions_screen.dart';
import '../../features/user/presentation/screens/user_main_layout_screens/more_screen_screens/edit_profile_screens.dart';
import '../../features/user/presentation/screens/user_main_layout_screens/more_screen_screens/privacy_screen.dart';
import '../../features/user/presentation/screens/user_main_layout_screens/more_screen_screens/terms_and_conditions_screen.dart';
import '../../features/vendor/presentation/screens/vendor_main_layout_screens/more_screen_screens/deals_screen.dart';
import '../../features/vendor/presentation/screens/vendor_main_layout_screens/more_screen_screens/wallet_screen.dart';
import '../../features/vendor/presentation/screens/vendor_main_layout_screens/vendor_main_layout_screen.dart';


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
        case ScreenName.userMainLayoutScreen:
          return _animateRouteBuilder(const UserMainLayoutScreen());
        case ScreenName.vendorMainLayoutScreen:
          return _animateRouteBuilder(const VendorMainLayoutScreen());
        case ScreenName.aboutAppScreen:
          return _animateRouteBuilder(const AboutAppScreen());
        case ScreenName.privacyScreen:
          return _animateRouteBuilder(const PrivacyScreen());
        case ScreenName.editProfileScreen:
          return _animateRouteBuilder(const EditProfileScreen());
        case ScreenName.termsAndConditionsScreen:
          return _animateRouteBuilder(const TermsAndConditionsScreen());
        case ScreenName.changePasswordScreen:
          return _animateRouteBuilder(const ChangePasswordScreen());
        case ScreenName.walletScreen:
          return _animateRouteBuilder(const WalletScreen());
        case ScreenName.dealsScreen:
          return _animateRouteBuilder(const DealsScreen());
        case ScreenName.complaintsAndSuggestionsScreen:
          return _animateRouteBuilder(const ComplaintsAndSuggestionsScreen());
        case ScreenName.messagesScreen:
          return _animateRouteBuilder(const MessagesScreen());
        case ScreenName.chatScreen:
          return _animateRouteBuilder( ChatScreen(chatScreenArgs: ChatScreenArgs(receiverId: "receiverId", receiverName: "receiverName", receiverImg: "receiverImg")));
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