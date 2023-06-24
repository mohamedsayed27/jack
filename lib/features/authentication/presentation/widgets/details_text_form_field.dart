import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jack/core/assets_path/fonts_path.dart';

class DetailsTextFormField extends StatelessWidget {
  final String title;
  final Widget? suffixIcon;
  final bool isEnabled;

  const DetailsTextFormField({
    Key? key,
    required this.title,
    this.suffixIcon,
    this.isEnabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    InputBorder border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.r),
      borderSide: const BorderSide(
        color: Colors.transparent,
      ),
    );
    return Material(
      elevation: 8,
      shadowColor: Colors.black,
      borderRadius: BorderRadius.circular(8.r),
      child: TextFormField(
        enabled: isEnabled,
        decoration: InputDecoration(
          hintText: title,
          hintStyle: TextStyle(
            fontSize: 16.sp,
            fontFamily: FontsPath.tajawalMedium,
            color: const Color(
              0xffB3BEC9,
            ),
          ),
          suffixIcon: suffixIcon,
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.symmetric(
            vertical: 5.h,
            horizontal: 5.w,
          ),
          enabledBorder: border,
          focusedBorder: border,
          border: border,
        ),
      ),
    );
  }
}
