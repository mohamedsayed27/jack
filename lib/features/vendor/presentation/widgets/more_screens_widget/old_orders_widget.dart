import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/assets_path/fonts_path.dart';
import '../../../../../core/theme/app_colors.dart';

class OldOrdersWidget extends StatelessWidget {
  const OldOrdersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              padding: EdgeInsets.only(left: 15.w,right: 15.w,top: 5.h),
              height: 60.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.greyDealsContainerColor,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 17.r,
                  ),
                  SizedBox(width: 30.w,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "عبدالله احمد",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: FontsPath.almaraiBold,
                          fontSize: 12.sp,
                        ),
                      ),
                      SizedBox(height: 5.h,),
                      Row(
                        children: [
                          Icon(Icons.location_on_outlined,color: Colors.black,size: 14.r,),
                          Text(
                            "الرياض السعودية",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: FontsPath.almaraiRegular,
                              fontSize: 10.sp,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "قطع غيار",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: FontsPath.almaraiBold,
                          fontSize: 12.sp,
                        ),
                      ),
                      SizedBox(height: 5.h,),
                      Text(
                        "23/10/2023",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: FontsPath.almaraiRegular,
                          fontSize: 10.sp,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 12.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.primaryColor.withOpacity(0.4),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12.r),
                  bottomRight: Radius.circular(12.r),
                ),
              ),
            ),
          ],
        ),
        const Icon(Icons.keyboard_arrow_down_sharp,color: AppColors.primaryColor,)
      ],
    );
  }
}
