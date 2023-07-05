import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jack/core/assets_path/images_path.dart';
import 'package:jack/core/assets_path/svg_path.dart';

import '../../../../../core/assets_path/fonts_path.dart';
import '../../../../user/presentation/widgets/home_screen_widgets/custom_appbar.dart';
import '../../widgets/home_screen_widgets/security_widget.dart';
import '../../widgets/shared_widgets/header_details_widget.dart';

class VendorHomeScreen extends StatelessWidget {
  const VendorHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size(0, 70.h),
          child: const CustomAppbar(),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          children: [
            Container(
              height: 230.h,
              width: double.infinity,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: Image.asset(
                ImagesPath.van,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            const HeaderDetailsWidget(),
            SizedBox(height: 30.h,),
            const SecurityWidget(),
          ],
        ),
      ),
    );
  }
}
