import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/assets_path/fonts_path.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../../../authentication/presentation/widgets/custom_button.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          children: [
            SizedBox(
              height: 30.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 34.w,
                  height: 34.h,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      backgroundColor: Colors.white,
                      foregroundColor: AppColors.primaryColor,
                    ),
                    child: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: AppColors.primaryColor,
                      size: 15.r,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'المحفظة',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: FontsPath.tajawalMedium,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  width: 34.w,
                  height: 34.h,
                )
              ],
            ),
            SizedBox(
              height: 50.h,
            ),
            Text(
              "الرصيد والحساب",
              style: TextStyle(
                color: Colors.black,
                fontFamily: FontsPath.almaraiBold,
                fontSize: 12.sp,
              ),
            ),

            SizedBox(
              height: 20.h,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
              height: 363.12.h,
              decoration: BoxDecoration(
                color: AppColors.greyDealsContainerColor,
                borderRadius: BorderRadius.circular(50.r),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "الرصيد الكلي",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: FontsPath.almaraiBold,
                              fontSize: 18.sp,
                            ),
                          ),
                          SizedBox(height:10.h),
                          Text(
                            "(SAR)",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: FontsPath.almaraiRegular,
                              fontSize: 18.sp,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "1234",
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontFamily: FontsPath.almaraiRegular,
                          fontSize: 20.sp,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "الارباح التسوقيه",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: FontsPath.almaraiBold,
                              fontSize: 18.sp,
                            ),
                          ),
                          SizedBox(height:10.h),
                          Text(
                            "(SAR)",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: FontsPath.almaraiRegular,
                              fontSize: 18.sp,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "1234",
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontFamily: FontsPath.almaraiRegular,
                          fontSize: 20.sp,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "الارباح من العروض",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: FontsPath.almaraiBold,
                              fontSize: 18.sp,
                            ),
                          ),
                          SizedBox(height:10.h),
                          Text(
                            "(SAR)",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: FontsPath.almaraiRegular,
                              fontSize: 18.sp,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "1234",
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontFamily: FontsPath.almaraiRegular,
                          fontSize: 20.sp,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  CustomButton(
                      buttonTitle: 'سحب الرصيد', isTapped: () {}, width: double.infinity)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
