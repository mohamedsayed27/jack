import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/assets_path/fonts_path.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../widgets/more_screens_widget/deals_container_widget.dart';
import '../../../widgets/more_screens_widget/old_orders_widget.dart';

class DealsScreen extends StatelessWidget {
  const DealsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          children: [
            SizedBox(
              height: 20.h,
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
                    'تغير كلمة المرور',
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
              height: 40.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                DealsContainerWidget(
                  title: 'المبالغ المستحقة',
                  body: '1234',
                ),
                DealsContainerWidget(
                  title: 'المستخدمين المدعوين',
                  body: '1234',
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                DealsContainerWidget(
                  title: 'طلبات معلقه',
                  body: '1234',
                ),
                DealsContainerWidget(
                  title: 'طلبات جديدة',
                  body: '1234',
                ),
                DealsContainerWidget(
                  title: 'رسائل جديدة',
                  body: '1234',
                ),
              ],
            ),
            SizedBox(
              height: 25.h,
            ),
            Text(
              "عروض سابقة",
              style: TextStyle(
                color: Colors.black,
                fontFamily: FontsPath.almaraiBold,
                fontSize: 12.sp,
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.h),
                  child: const OldOrdersWidget(),
                );
              },
              shrinkWrap: true,
              itemCount: 8,
            ),
          ],
        ),
      ),
    );
  }
}
