import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/assets_path/fonts_path.dart';
import '../../../core/theme/app_colors.dart';

class CustomBoardingButton extends StatelessWidget {
  final bool isLast;
  final Function isLastTap;
  final Function isTapped;

  const CustomBoardingButton({
    Key? key,
    required this.isLast,
    required this.isLastTap,
    required this.isTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: !isLast ?60.h:null,
      width: !isLast ? 60.w:null,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: !isLast ? const CircleBorder() : const StadiumBorder(),
          backgroundColor: AppColors.primaryColor,
          foregroundColor: AppColors.whitColor,
          padding: !isLast
              ? EdgeInsets.all(5.r)
              : EdgeInsets.symmetric(horizontal: 45.w, vertical: 16.h),
        ),
        onPressed: () {
          if (!isLast) isTapped();
          if (isLast) isLastTap();
        },
        child: !isLast
            ? Center(
                child: Icon(
                  Icons.arrow_forward,
                  color: AppColors.whitColor,
                  size: 28.r,
                ),
              )
            : Text(
                'ابدأ الأن',
                style: TextStyle(
                  color: AppColors.whitColor,
                  fontFamily: FontsPath.almaraiBold,
                  fontSize: 15.sp,
                ),
              ),
      ),
    );
  }
}
