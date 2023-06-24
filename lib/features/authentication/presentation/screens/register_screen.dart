import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jack/core/enums/register_type_enum.dart';
import 'package:jack/core/theme/app_colors.dart';

import '../../../../core/assets_path/fonts_path.dart';
import '../../../../core/assets_path/images_path.dart';
import '../widgets/back_button.dart';
import '../widgets/register_type_outlined_button.dart';
import '../widgets/user_register_component.dart';
import '../widgets/vendor_register_component.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  RegisterTypeEnum registerTypeEnum = RegisterTypeEnum.user;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whitColor,
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          children: [
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomBackButton(
                  arrowColor: AppColors.whitColor,
                  foregroundColor: AppColors.whitColor,
                  backgroundColor: AppColors.primaryColor,
                  elevation: 10,
                  height: 35.h,
                  width: 35.w,
                ),
                Text(
                  "انشاء حساب",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: FontsPath.tajawalBold,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  height: 35.h,
                  width: 35.w,
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Image.asset(
              ImagesPath.blueLogo,
              height: 120.h,
              width: 220.w,
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RegisterTypeOutlinedButton(
                  onPressed: () {
                    setState(() {
                      registerTypeEnum = RegisterTypeEnum.user;
                    });
                  },
                  borderSideColor: registerTypeEnum == RegisterTypeEnum.user
                      ? Colors.black
                      : Colors.grey,
                  circleCheckColor: AppColors.primaryColor,
                  title: "مستخدم عادي",
                  isUser:
                      registerTypeEnum == RegisterTypeEnum.user ? true : false,
                  titleColor: registerTypeEnum == RegisterTypeEnum.user
                      ? Colors.black
                      : Colors.grey,
                ),
                RegisterTypeOutlinedButton(
                  onPressed: () {
                    setState(() {
                      registerTypeEnum = RegisterTypeEnum.vendor;
                    });
                  },
                  borderSideColor: registerTypeEnum == RegisterTypeEnum.vendor
                      ? Colors.black
                      : Colors.grey,
                  circleCheckColor: AppColors.primaryColor,
                  title: "مقدم خدمة",
                  isUser: registerTypeEnum == RegisterTypeEnum.vendor
                      ? true
                      : false,
                  titleColor: registerTypeEnum == RegisterTypeEnum.vendor
                      ? Colors.black
                      : Colors.grey,
                )
              ],
            ),
            SizedBox(height: 30.h,),
            if(registerTypeEnum == RegisterTypeEnum.vendor)
              const VendorRegisterComponent(),
            if(registerTypeEnum == RegisterTypeEnum.user)
              const UserRegisterComponent(),
          ],
        ),
      ),
    );
  }
}
