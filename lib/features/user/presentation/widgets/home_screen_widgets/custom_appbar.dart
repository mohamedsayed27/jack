import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/assets_path/fonts_path.dart';
import '../../../../../core/assets_path/svg_path.dart';

class CustomAppbar extends StatelessWidget {

  const CustomAppbar(
      {Key? key,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
          onPressed: () {
          },
          icon: CircleAvatar(
            radius: 16.r,

            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: SvgPicture.asset(
                SvgPath.menuAppBarIcon,
                width: 32.w,
                height: 32.h,
              ),
            ),
          )),
      centerTitle: true,
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'مرحبا , محمد',
            style: TextStyle(
                fontSize: 18.sp,
                fontFamily: FontsPath.almaraiBold,
                color: const Color(0xff1E2432)),
          ),
          Text(
            'ابحث عن الخدمات التي تريدها',
            style: TextStyle(
                fontSize: 12.sp,
                fontFamily: FontsPath.almaraiBold,
                color: const Color(0xff1E2432)),
          ),
        ],
      ),
      actions: [
        IconButton(onPressed: (){
        }, icon: CircleAvatar(
          radius: 16.r,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: SvgPicture.asset(
              SvgPath.searchIcon,
              width: 24.w,
              height: 24.h,
            ),
          ),
        ))
      ],
    );
  }
}
