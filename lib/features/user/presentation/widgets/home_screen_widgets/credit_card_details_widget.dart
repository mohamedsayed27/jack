import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/assets_path/fonts_path.dart';

class CreditCardDetailsWidget extends StatelessWidget {
  const CreditCardDetailsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              "الاسم علي البطاقة",
              style: TextStyle(
                color: Colors.black,
                fontFamily: FontsPath.tajawalBold,
                fontSize: 10.sp,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Container(
              height: 18.h,
              width: 157.w,
              padding: EdgeInsets.only(top: 3.h),
              decoration: BoxDecoration(
                  color: const Color(0xffE1E1E1).withOpacity(.80),
                  borderRadius: BorderRadius.circular(1.r)
              ),
              child: Center(
                child: Text(
                  "ZAIN MOHAMED ALI",
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
              height: 15.h,
            ),
            Text(
              "تاريخ انتهاء البطاقه",
              style: TextStyle(
                color: Colors.black,
                fontFamily: FontsPath.tajawalBold,
                fontSize: 10.sp,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Container(
              height: 18.h,
              width: 87.w,
              padding: EdgeInsets.only(top: 3.h),
              decoration: BoxDecoration(
                  color: const Color(0xffE1E1E1).withOpacity(.80),
                  borderRadius: BorderRadius.circular(1.r)
              ),
              child: Center(
                child: Text(
                  "03/15",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: FontsPath.tajawalRegular,
                    fontSize: 10.sp,
                  ),
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            Text(
              "رقم البطاقه",
              style: TextStyle(
                color: Colors.black,
                fontFamily: FontsPath.tajawalBold,
                fontSize: 10.sp,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Container(
              height: 18.h,
              width: 160.w,
              padding: EdgeInsets.only(top: 3.h),
              decoration: BoxDecoration(
                  color: const Color(0xffE1E1E1).withOpacity(.80),
                  borderRadius: BorderRadius.circular(1.r)
              ),
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
              height: 15.h,
            ),
            Text(
              "رقم التحقق من البطاقه",
              style: TextStyle(
                color: Colors.black,
                fontFamily: FontsPath.tajawalBold,
                fontSize: 10.sp,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Container(
              height: 18.h,
              width: 87.w,
              padding: EdgeInsets.only(top: 3.h),
              decoration: BoxDecoration(
                  color: const Color(0xffE1E1E1).withOpacity(.80),
                  borderRadius: BorderRadius.circular(1.r)
              ),
              child: Center(
                child: Text(
                  "578",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: FontsPath.tajawalRegular,
                    fontSize: 10.sp,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
