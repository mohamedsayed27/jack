import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/assets_path/fonts_path.dart';
import '../../../../../../core/assets_path/images_path.dart';
import '../../../../../../core/theme/app_colors.dart';
import '../../../../../authentication/presentation/widgets/back_button.dart';
import '../../../widgets/profile_screen_widgets/about_widget.dart';
import '../../../widgets/profile_screen_widgets/background_widget.dart';

class AboutAppScreen extends StatefulWidget {
  const AboutAppScreen({Key? key}) : super(key: key);

  @override
  State<AboutAppScreen> createState() => _AboutAppScreenState();
}

class _AboutAppScreenState extends State<AboutAppScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BackgroundWidget(
        headerChild: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CustomBackButton(
                arrowColor: AppColors.primaryColor,
                foregroundColor: AppColors.primaryColor,
                backgroundColor: AppColors.whitColor,
                elevation: 1,
                height: 30,
                width: 30),
            Text(
              "عن التطبيق",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontFamily: FontsPath.almaraiBold),
            ),
            SizedBox(
              height: 30.h,
              width: 30.w,
            ),
          ],
        ),
        height: 290.h,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 50.h),
          margin: EdgeInsets.only(
              top: 145.h, left: 18.w, right: 18.w, bottom: 30.h),
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.r),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xff606470).withOpacity(.10),
                  offset: Offset(0, 10.h),
                  blurRadius: 20.r,
                )
              ],),
          child: Column(
            children: [
              Image.asset(
                ImagesPath.blueLogo,
                height: 85.h,
                width: 201.w,
              ),
              SizedBox(height: 20.h,),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemBuilder: (BuildContext context, int index) {
                    return const AboutWidget(
                      title:
                      'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم يوضع في التصاميم  لتعرض على العميللوريم ايبسوم هو نموذج افتراضي  يوضع في التصاميم',
                    );
                  },
                  itemCount: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
