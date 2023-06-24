import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/assets_path/fonts_path.dart';
import '../../../../core/assets_path/svg_path.dart';
import 'auth_text_form_field.dart';

class PhoneTextFormField extends StatelessWidget {
  const PhoneTextFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthTextFormField(
      svgPath: SvgPath.phone,
      title: "الهاتف",
      iconWidth: 24.w,
      iconHeight: 28.h,
      suffixIcon: SizedBox(
        height: 26.h,
        width: 57.w,
        child: Row(
          children: [
            SvgPicture.asset(
              SvgPath.saudiLogo,
              width: 20.w,
              height: 20.h,
            ),
            SizedBox(width: 2.w,),
            Text("966+",style: TextStyle(color: Colors.black,fontSize: 12.sp,fontFamily: FontsPath.almaraiBold),),
          ],
        ),
      ),
    );
  }
}
