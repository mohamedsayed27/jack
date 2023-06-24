import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/assets_path/fonts_path.dart';


class BuildCustomProfileContainer extends StatelessWidget {
  final String title;
  final void Function()? onPressed;

  const BuildCustomProfileContainer(
      {Key? key, required this.title, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: InkWell(
      onTap: onPressed,
        child: Container(
          height: 55.h,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.r),
              boxShadow: [
                BoxShadow(
                    offset:  Offset(2.w, 4.h),
                    blurRadius: 6.r,
                    color: Colors.black.withOpacity(0.1))
              ],),
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontFamily: FontsPath.tajawalMedium),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Color(0xffB3BEC9),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
