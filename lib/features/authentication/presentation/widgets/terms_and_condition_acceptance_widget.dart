import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/assets_path/fonts_path.dart';
import '../../../../core/theme/app_colors.dart';

class TermsAndConditionAcceptanceWidget extends StatefulWidget {
  const TermsAndConditionAcceptanceWidget({Key? key}) : super(key: key);

  @override
  State<TermsAndConditionAcceptanceWidget> createState() =>
      _TermsAndConditionAcceptanceWidgetState();
}

class _TermsAndConditionAcceptanceWidgetState
    extends State<TermsAndConditionAcceptanceWidget> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: value,
          onChanged: (v) {
            setState(() {
              value = v!;
            });
          },
        ),
        RichText(
            text: TextSpan(
          text: "الموافقة علي ",
          children: [
            TextSpan(
              text: "الشروط والاحكام",
              style: TextStyle(
                color: AppColors.primaryColor,
                fontFamily: FontsPath.tajawalBold,
                fontSize: 12.sp,
              ),
            )
          ],
          style: TextStyle(
            color: Colors.black,
            fontFamily: FontsPath.tajawalMedium,
            fontSize: 12.sp,
          ),
        )),
      ],
    );
  }
}
