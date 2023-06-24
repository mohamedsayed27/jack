import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/assets_path/images_path.dart';

class PaymentComponent extends StatelessWidget {
  const PaymentComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              ImagesPath.masterCard,
              width: 86.w,
              height: 51.h,
            ),
            Image.asset(
              ImagesPath.payPal,
              width: 137.w,
              height: 77.h,
            ),
            Image.asset(
              ImagesPath.visa,
              width: 90.w,
              height: 29.h,
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              ImagesPath.applePay,
              width: 86.w,
              height: 35.h,
            ),
            Image.asset(
              ImagesPath.stcPay,
              width: 137.w,
              height: 40.h,
            ),
            Image.asset(
              ImagesPath.mada,
              width: 90.w,
              height: 30.h,
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Image.asset(
          ImagesPath.tman,
          width: 121.w,
          height: 69.h,
          alignment: Alignment.center,
        ),
      ],
    );
  }
}
