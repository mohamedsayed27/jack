import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/assets_path/svg_path.dart';
import 'auth_text_form_field.dart';

class EmailTextFormField extends StatelessWidget {
  const EmailTextFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthTextFormField(
      svgPath: SvgPath.envelope,
      title: "البريد الاليكتروني",
      iconWidth: 23.w,
      iconHeight: 24.h,
    );
  }
}
