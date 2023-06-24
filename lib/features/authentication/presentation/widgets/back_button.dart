import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBackButton extends StatelessWidget {
  final Color arrowColor;
  final Color foregroundColor;
  final Color backgroundColor;
  final double elevation;
  final double height;
  final double width;

  const CustomBackButton({
    Key? key,
    required this.arrowColor,
    required this.foregroundColor,
    required this.backgroundColor,
    required this.elevation, required this.height, required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:height,
      width: width,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: foregroundColor,
          backgroundColor: backgroundColor,
          elevation: elevation,
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(5.r),
          ),
        ),
        child: Center(
          child: Icon(
            Icons.arrow_back_rounded,
            color: arrowColor,
            size: 24.r,
          ),
        ),
      ),
    );
  }
}
