import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jack/core/assets_path/fonts_path.dart';

import '../../../../../core/theme/app_colors.dart';

class BackgroundWidget extends StatelessWidget {
  final Widget child;
  final Widget? headerChild;
  final double? height;

  const BackgroundWidget({
    Key? key,
    required this.child,
    this.headerChild,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          height: height?.h ?? 200.h,
          width: double.infinity,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50.r),
              bottomRight: Radius.circular(50.r),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 50.h,left: 18.w,right: 18.w),
          child: headerChild ??
              Text(
                "المزيد",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.sp,
                    fontFamily: FontsPath.almaraiBold),
              ),
        ),
        child,
      ],
    );
  }
}
