import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/assets_path/svg_path.dart';
import 'auth_text_form_field.dart';

class PasswordTextFormField extends StatelessWidget {
  final String title;
  const PasswordTextFormField({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthTextFormField(
      svgPath: SvgPath.lock,
      title: title,
      isSecure: true,
      iconWidth: 24.w,
      iconHeight: 28.h,
    );
  }
}
