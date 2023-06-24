import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/assets_path/fonts_path.dart';
import '../../widgets/home_screen_widgets/carousel_slider_widget.dart';
import '../../widgets/home_screen_widgets/categories_widget_builder.dart';
import '../../widgets/home_screen_widgets/credit_card_details_widget.dart';
import '../../widgets/home_screen_widgets/custom_appbar.dart';
import '../../widgets/home_screen_widgets/payment_widgets_component.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
            preferredSize: Size(0, 70.h), child: const CustomAppbar()),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          children: [
            SizedBox(
              height: 15.h,
            ),
            const PaymentComponent(),
            SizedBox(
              height: 30.h,
            ),
            Text(
              "البطاقه ائتمانيه",
              style: TextStyle(
                color: Colors.black,
                fontFamily: FontsPath.tajawalBold,
                fontSize: 14.sp,
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            const CreditCardDetailsWidget(),
            SizedBox(
              height: 30.h,
            ),
            const CarouselSliderWidget(),
            SizedBox(
              height: 30.h,
            ),

            Text(
              "خدماتنا المتميزة بإنتظارك",
              style: TextStyle(
                color: Colors.black,
                fontFamily: FontsPath.tajawalBold,
                fontSize: 14.sp,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            const CategoriesWidgetBuilder(),
          ],
        ),
      ),
    );
  }
}
