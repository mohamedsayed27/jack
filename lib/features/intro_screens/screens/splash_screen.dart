import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/app_router/screens_name.dart';
import '../../../../core/assets_path/images_path.dart';
import '../../../core/theme/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{

  @override
  void initState() {
    _loading();
    super.initState();
  }

  _loading() {
    Timer(
      const Duration(seconds: 4),
      () {
        Navigator.pushReplacementNamed(context, ScreenName.onboardingScreen);
      },
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: SizedBox(
          height: 400.h,
          child: Image.asset(
            ImagesPath.splashLogo,
            height: 85.h,
            width: 201.w,
          ),
        ),
      ),
    );
  }
}
