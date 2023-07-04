import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/assets_path/fonts_path.dart';
import '../../../../../core/theme/app_colors.dart';

class DealsContainerWidget extends StatelessWidget {
  final String title;
  final String body;
  const DealsContainerWidget({Key? key, required this.title, required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 94.64.w,
      height: 78.61.h,
      decoration: BoxDecoration(
        color: AppColors.greyDealsContainerColor,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title,style: TextStyle(color: Colors.black,fontFamily:  FontsPath.almaraiRegular,fontSize: 10.sp,),),
          SizedBox(height: 10.h,),
          Text(body,style: TextStyle(color: AppColors.primaryColor,fontFamily:  FontsPath.almaraiRegular,fontSize: 10.sp,)),
        ],
      ),
    );
  }
}
