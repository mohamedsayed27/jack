import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/assets_path/fonts_path.dart';
import '../../../../../core/assets_path/images_path.dart';
import '../../../../../core/theme/app_colors.dart';

class HeaderDetailsWidget extends StatelessWidget {
  const HeaderDetailsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80.h,
          width: 80.w,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child: Image.asset(
            ImagesPath.onboarding1,
            fit: BoxFit.cover,
          ),
        ),
        Text(
          "Ahmed@gmail.com",
          style: TextStyle(
            color: Colors.black,
            fontSize: 12.sp,
            fontFamily: FontsPath.poppinsBold,
          ),
        ),
        Text(
          "Ahmed",
          style: TextStyle(
            color: Colors.black,
            fontSize: 12.sp,
            fontFamily: FontsPath.poppinsBold,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 128.15.w,
              height: 78.61.h,
              padding: EdgeInsets.symmetric(
                  horizontal: 5.w,
                  vertical: 5.h
              ),
              decoration: BoxDecoration(
                color: AppColors.greyDealsContainerColor,
                borderRadius: BorderRadius.circular(10.r),
              ),
              alignment: Alignment.center,
              child: Text(
                "ممارسه خدمه قطر و الشحن لاكثر من 20 عاماً",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 10.sp,
                  fontFamily: FontsPath.almaraiBold,
                ),
              ),
            ),
            Container(
              width: 128.15.w,
              height: 78.61.h,
              padding: EdgeInsets.symmetric(
                  horizontal: 5.w,
                  vertical: 5.h
              ),
              decoration: BoxDecoration(
                color: AppColors.greyDealsContainerColor,
                borderRadius: BorderRadius.circular(10.r),
              ),
              alignment: Alignment.center,
              child: Text(
                "نحن سعداء لخدمتكً",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 10.sp,
                  fontFamily: FontsPath.almaraiBold,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
