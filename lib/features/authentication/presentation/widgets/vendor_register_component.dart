import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jack/core/app_router/screens_name.dart';
import 'package:jack/features/authentication/presentation/widgets/password_text_form_field.dart';
import 'package:jack/features/authentication/presentation/widgets/phone_text_form_field.dart';
import 'package:jack/features/authentication/presentation/widgets/social_login_component.dart';

import '../../../../core/assets_path/fonts_path.dart';
import '../../../../core/theme/app_colors.dart';
import 'custom_button.dart';
import 'custom_drop_down_button.dart';
import 'details_text_form_field.dart';
import 'email_text_form_field.dart';
import 'terms_and_condition_acceptance_widget.dart';

class VendorRegisterComponent extends StatelessWidget {
  const VendorRegisterComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Expanded(
              child: DetailsTextFormField(
                title: 'اختار صورة الملف الشخصي',
                isEnabled: false,
              ),
            ),
            SizedBox(
              width: 20.w,
            ),
            CircleAvatar(
              radius: 38.r,
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 40.r,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          children: [
            const Expanded(
                child: DetailsTextFormField(
              title: 'الاسم الاول',
            )),
            SizedBox(
              width: 20.w,
            ),
            const Expanded(
                child: DetailsTextFormField(
              title: 'اسم العائلة',
            )),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        const PhoneTextFormField(),
        SizedBox(
          height: 20.h,
        ),
        const EmailTextFormField(),
        SizedBox(
          height: 20.h,
        ),
        const PasswordTextFormField(title: "كلمة المرور"),
        SizedBox(
          height: 20.h,
        ),
        const PasswordTextFormField(title: "اعد كتابة كلمة المرور"),
        SizedBox(
          height: 20.h,
        ),
        Row(
          children: [
            const Expanded(child: CustomDropDownButton(title: 'الدولة',)),
            SizedBox(width: 15.w,),
            const Expanded(child: CustomDropDownButton(title: 'الجنسية',)),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          children: [
            const Expanded(child: CustomDropDownButton(title: 'منطقة',)),
            SizedBox(width: 15.w,),
            const Expanded(child: CustomDropDownButton(title: 'مدينة',)),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        DetailsTextFormField(
          title: 'صورة الترخيص 1',
          isEnabled: false,
          suffixIcon: Padding(
            padding: const EdgeInsets.all(10.0),
            child: CircleAvatar(radius: 8.r,backgroundColor: AppColors.primaryColor.withOpacity(.2),child: Icon(Icons.camera_alt,color: AppColors.primaryColor,size: 20.r,),),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        DetailsTextFormField(
          title: 'صورة الترخيص 2',
          isEnabled: false,
          suffixIcon: Padding(
            padding: const EdgeInsets.all(10.0),
            child: CircleAvatar(radius: 8.r,backgroundColor: AppColors.primaryColor.withOpacity(.2),child: Icon(Icons.camera_alt,color: AppColors.primaryColor,size: 20.r,),),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        const TermsAndConditionAcceptanceWidget(),
        SizedBox(
          height: 15.h,
        ),
        CustomButton(
          buttonTitle: "انشاء حساب",
          isTapped: () {},
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
            Navigator.pushNamedAndRemoveUntil(context, ScreenName.loginScreen, (route) => false);
          },
          child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: "لديك حساب ؟ ",
                children: [
                  TextSpan(
                    text: "سجل دخول الآن",
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
              )),
        ),
        SizedBox(
          height: 20.h,
        ),
      ],
    );
  }
}
