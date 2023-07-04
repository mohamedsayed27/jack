import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/assets_path/fonts_path.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../widgets/more_screens_widget/deals_container_widget.dart';

class DealsScreen extends StatelessWidget {
  const DealsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
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
          Text(
            "عروض سابقة",
            style: TextStyle(
              color: Colors.black,
              fontFamily: FontsPath.almaraiBold,
              fontSize: 12.sp,
            ),
          ),
        ],
      ),
    );
  }
}
