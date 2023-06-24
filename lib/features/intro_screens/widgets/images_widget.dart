import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/assets_path/fonts_path.dart';
import '../../../core/theme/app_colors.dart';
import 'onboarding_class.dart';

class ImagesWidget extends StatelessWidget {
  final OnboardingModel model;

  const ImagesWidget({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset(
            model.backGround,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.black.withOpacity(0.5),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50.h,
              ),
              Text(
                model.title,
                style: TextStyle(
                  fontSize: 20.sp,
                  color: AppColors.whitColor,
                  fontFamily: FontsPath.almaraiBold,
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                model.bodyTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.sp,
                  color: AppColors.whitColor,
                  height: 1.8.h,
                  fontFamily: FontsPath.almaraiRegular,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
