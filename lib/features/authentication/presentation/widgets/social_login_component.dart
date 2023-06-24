import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/assets_path/svg_path.dart';

class SocialLoginComponent extends StatelessWidget {
  const SocialLoginComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          SvgPath.facebook,
          width: 46.w,
          height: 46.h,
        ),
        SizedBox(
          width: 20.h,
        ),
        SvgPicture.asset(SvgPath.google, width: 46.w, height: 46.h),
        SizedBox(
          width: 20.h,
        ),
        SvgPicture.asset(SvgPath.windows, width: 46.w, height: 46.h),
      ],
    );
  }
}
