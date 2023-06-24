import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jack/core/assets_path/fonts_path.dart';

class AuthTextFormField extends StatelessWidget {
  final String svgPath;
  final String title;
  final bool isSecure;
  final double iconWidth;
  final double iconHeight;
  final Widget? suffixIcon;
  const AuthTextFormField({
    Key? key,
    required this.svgPath,
    required this.title,
    this.isSecure = false,
    required this.iconWidth,
    required this.iconHeight, this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    InputBorder border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: const BorderSide(color: Colors.transparent));
    return Material(
      elevation: 6,
      shadowColor: Colors.black,
      borderRadius: BorderRadius.circular(8.r),
      child: TextFormField(
        obscureText: isSecure,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.all(15),
            child: SvgPicture.asset(
              svgPath,
              width: iconWidth,
              height: iconHeight,
            ),
          ),
          suffixIcon: suffixIcon,
          hintText: title,
          hintStyle: TextStyle(
            fontSize: 16.sp,
            fontFamily: FontsPath.tajawalMedium,
            color: const Color(
              0xffB3BEC9,
            ),
          ),
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.symmetric(
            vertical: 5.h,
          ),
          enabledBorder: border,
          focusedBorder: border,
          border: border,
        ),
      ),
    );
  }
}
