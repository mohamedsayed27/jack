import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/assets_path/fonts_path.dart';
import '../../widgets/shared_widgets/header_details_widget.dart';
import '../../widgets/shared_widgets/profile_details_widget.dart';

class VendorProfileScreen extends StatelessWidget {
  const VendorProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 18.w),
        children: [
          SizedBox(
            height: 30.h,
          ),
          const HeaderDetailsWidget(),
          SizedBox(
            height: 40.h,
          ),
          Text(
            "الملف الشخصي",
            style: TextStyle(
              color: Colors.black,
              fontSize: 15.sp,
              fontFamily: FontsPath.almaraiBold,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              ProfileDetailsWidget(
                title: "الاسم",
                body: "زين عبدالله",
              ),
              ProfileDetailsWidget(
                title: "الاسم كما تحب ظهوره",
                body: "زين ",
              ),
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              ProfileDetailsWidget(
                title: "المدينه",
                body: "الرياض",
              ),
              ProfileDetailsWidget(
                title: "المنطقه",
                body: "الرياض",
              ),
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              ProfileDetailsWidget(
                title: "رقم الهوية أو رقم التسجيل التجاري",
                body: "12452367896417854",
              ),
              ProfileDetailsWidget(
                title: "العنوان",
                body: "حي الصحافه",
              ),
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              ProfileDetailsWidget(
                title: "النشاط التجاري",
                body: "",
              ),
              ProfileDetailsWidget(
                title: "الأهلية القانونية",
                body: "فردي",
              ),
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              ProfileDetailsWidget(
                title: "رقم المحمول",
                body: "0113557893",
              ),
              ProfileDetailsWidget(
                title: "الخدمه المقدمه",
                body: "قطع غيار",
              ),
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
        ],
      ),
    );
  }
}
