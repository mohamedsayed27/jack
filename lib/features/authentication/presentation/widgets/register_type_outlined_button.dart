import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/assets_path/fonts_path.dart';

class RegisterTypeOutlinedButton extends StatelessWidget {
  final void Function() onPressed;
  final Color borderSideColor;
  final Color circleCheckColor;
  final Color titleColor;
  final String title;
  final bool isUser;

  const RegisterTypeOutlinedButton(
      {Key? key,
      required this.onPressed,
      required this.borderSideColor,
      required this.circleCheckColor,
      required this.title,
      required this.isUser,
      required this.titleColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 162.w,
      height: 50.h,
      child: OutlinedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.r),
            ),
          ),
          side: MaterialStateProperty.all(
            BorderSide(
              color: borderSideColor,
              width: 0.8.w,
            ),
          ),
        ),
        child: Row(
          children: [
            if (isUser)
              Icon(
                Icons.check_circle,
                color: circleCheckColor,
              ),
            Expanded(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: titleColor,
                  fontFamily: FontsPath.almaraiBold,
                  fontSize: 14.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
