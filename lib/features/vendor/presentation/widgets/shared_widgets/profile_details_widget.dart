import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/assets_path/fonts_path.dart';

class ProfileDetailsWidget extends StatelessWidget {
  final String title;
  final String body;
  const ProfileDetailsWidget({Key? key, required this.title, required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontFamily: FontsPath.tajawalBold,
            fontSize: 10.sp,
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        Container(
          height: 18.h,
          width: 112.07.w,
          padding: EdgeInsets.only(top: 3.h,right: 5.w,left: 5.w),
          decoration: BoxDecoration(
              color: const Color(0xffE1E1E1).withOpacity(.80),
              borderRadius: BorderRadius.circular(8.r)),
          child: Text(
            body,
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.black,
              fontFamily: FontsPath.tajawalRegular,
              fontSize: 10.sp,
            ),
          ),
        ),
      ],
    );
  }
}
