import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/assets_path/fonts_path.dart';
import '../../../../user/presentation/widgets/home_screen_widgets/custom_appbar.dart';

class VendorHomeScreen extends StatelessWidget {
  const VendorHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
            preferredSize: Size(0, 70.h), child: const CustomAppbar(),),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          children: [

          ],
        ),
      ),
    );
  }
}
