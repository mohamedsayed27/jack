import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jack/core/assets_path/fonts_path.dart';

import '../../../../core/app_router/screens_name.dart';
import '../../../../core/assets_path/images_path.dart';
import '../../../../core/theme/app_colors.dart';
import '../widgets/custom_button.dart';
import '../widgets/email_text_form_field.dart';
import '../widgets/password_text_form_field.dart';
import '../widgets/social_login_component.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          children: [
            SizedBox(
              height: 20.h,
            ),
            Text(
              "تسجيل الدخول",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: FontsPath.tajawalBold,
                  fontSize: 16.sp),
            ),
            SizedBox(
              height: 30.h,
            ),
            Image.asset(
              ImagesPath.blueLogo,
              height: 120.h,
              width: 220.w,
            ),
            SizedBox(
              height: 70.h,
            ),
            const EmailTextFormField(),
            SizedBox(
              height: 23.h,
            ),
            const PasswordTextFormField(title: "كلمة المرور"),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: value,
                      onChanged: (v) {
                        setState(() {
                          value = v!;
                        });
                      },
                    ),
                    Text(
                      "تذكرني",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: FontsPath.tajawalMedium,
                        fontSize: 12.sp,
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: (){},
                  child: Text(
                    "نسيت كلمة المرور ؟",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: FontsPath.tajawalMedium,
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomButton(
              buttonTitle: "تسجيل الدخول",
              isTapped: () {
                Navigator.pushNamed(context, ScreenName.mainLayoutScreen);
              },
              width: double.infinity,
              height: 56.h,
            ),
            SizedBox(
              height: 40.h,
            ),
            const SocialLoginComponent(),
            SizedBox(
              height: 40.h,
            ),
            TextButton(
              onPressed: (){
                Navigator.pushNamed(context, ScreenName.registerScreen,);
              },
              child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "ليس لديك حساب ؟ ",
                    children: [
                      TextSpan(
                        text: "سجل الآن",
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontFamily: FontsPath.tajawalBold,
                          fontSize: 12.sp,
                        ),
                      )
                    ],
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: FontsPath.tajawalMedium,
                      fontSize: 12.sp,
                    ),
                  ),),
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }
}
