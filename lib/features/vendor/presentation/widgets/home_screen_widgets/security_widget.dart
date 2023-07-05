import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/assets_path/fonts_path.dart';
import '../../../../../core/assets_path/images_path.dart';
import '../../../../../core/assets_path/svg_path.dart';

class SecurityWidget extends StatelessWidget {
  const SecurityWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          SvgPath.lockKeyIcon,
          height: 50.85.h,
          width: 52.13.w,
        ),
        SizedBox(width: 20.w,),
        SizedBox(
          height: 50.h,
          width: 100.w,
          child: Text(
            "these information is not shown to other",
            textAlign: TextAlign.end,
            style: TextStyle(
                color: Colors.black,
                fontSize: 12.sp,
                fontFamily: FontsPath.almaraiBold),
          ),
        ),
        const Spacer(),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 18.h,
                  width: 120.w,
                  padding: EdgeInsets.only(top: 3.h),
                  decoration: BoxDecoration(
                      color: const Color(0xffE1E1E1).withOpacity(.80),
                      borderRadius: BorderRadius.circular(1.r)),
                  child: Center(
                    child: Text(
                      "1213 1489  1258  2479",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: FontsPath.tajawalRegular,
                        fontSize: 10.sp,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 3.w,
                ),
                Image.asset(
                  ImagesPath.image12,
                  width: 23.17.w,
                  height: 12.h,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 18.h,
                  width: 120.w,
                  padding: EdgeInsets.only(top: 3.h),
                  decoration: BoxDecoration(
                      color: const Color(0xffE1E1E1).withOpacity(.80),
                      borderRadius: BorderRadius.circular(1.r)),
                  child: Center(
                    child: Text(
                      "1213 1489  1258  2479",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: FontsPath.tajawalRegular,
                        fontSize: 10.sp,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 3.w,
                ),
                Image.asset(
                  ImagesPath.image12,
                  width: 23.17.w,
                  height: 12.h,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 18.h,
                  width: 120.w,
                  padding: EdgeInsets.only(top: 3.h),
                  decoration: BoxDecoration(
                      color: const Color(0xffE1E1E1).withOpacity(.80),
                      borderRadius: BorderRadius.circular(1.r)),
                  child: Center(
                    child: Text(
                      "1213 1489  1258  2479",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: FontsPath.tajawalRegular,
                        fontSize: 10.sp,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 3.w,
                ),
                Image.asset(
                  ImagesPath.image12,
                  width: 23.17.w,
                  height: 12.h,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
