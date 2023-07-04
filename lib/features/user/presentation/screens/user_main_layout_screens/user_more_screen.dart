import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jack/core/app_router/screens_name.dart';

import '../../../../../core/assets_path/fonts_path.dart';
import '../../../../../core/assets_path/images_path.dart';
import '../../widgets/profile_screen_widgets/background_widget.dart';
import '../../widgets/profile_screen_widgets/custom_container.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BackgroundWidget(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              SizedBox(
                height: 120.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, ScreenName.editProfileScreen);
                  },
                  child: Container(
                    height: 105.h,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                        horizontal: 25.w, vertical: 5.h),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.r),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.04),
                          blurRadius: 20.r,
                          offset: const Offset(0, 0),
                        )
                      ],
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 74.h,
                          width: 74.w,
                          padding: EdgeInsets.all(1.5.r),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          decoration: const BoxDecoration(
                              color: Color(0xffDDB956),
                              shape: BoxShape.circle),
                          child: Container(
                            height: 74.h,
                            width: 74.w,
                            clipBehavior:
                            Clip.antiAliasWithSaveLayer,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle),
                            child: Image.asset(
                              ImagesPath.onboarding1,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Ahmed",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.sp,
                                  fontFamily:
                                  FontsPath.poppinsRegular,
                                ),
                              ),
                                SizedBox(
                                  height: 5.h,
                                ),
                               Text(
                                "Ahmed@gmail.com",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.sp,
                                  fontFamily:
                                  FontsPath.poppinsRegular,
                                ),
                              )
                                  ,
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Color(0xffB3BEC9),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Expanded(
                child: ListView(
                  padding:
                      EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
                  physics: const BouncingScrollPhysics(),
                  children: [
                    BuildCustomProfileContainer(
                      title: 'عن التطبيق',
                      onPressed: () {
                        Navigator.pushNamed(context, ScreenName.aboutAppScreen);
                      },
                    ),
                    BuildCustomProfileContainer(
                      title: 'الشروط والاحكام',
                      onPressed: () {
                        Navigator.pushNamed(context, ScreenName.termsAndConditionsScreen);
                      },
                    ),
                    BuildCustomProfileContainer(
                      title: 'سياسة الخصوصية',
                      onPressed: () {
                        Navigator.pushNamed(context, ScreenName.privacyScreen);
                      },
                    ),
                    BuildCustomProfileContainer(
                      title: 'الاقتراحات والشكاوي',
                      onPressed: () {
                        Navigator.pushNamed(context, ScreenName.complaintsAndSuggestionsScreen);
                      },
                    ),
                    BuildCustomProfileContainer(
                      title: 'الدعم الفني',
                      onPressed: () {},
                    ),
                    BuildCustomProfileContainer(
                      title: 'الرسائل',
                      onPressed: () {
                        Navigator.pushNamed(context, ScreenName.messagesScreen);
                      },
                    ),
                    BuildCustomProfileContainer(
                      title: 'تقيم التطبيق',
                      onPressed: () {},
                    ),
                    BuildCustomProfileContainer(
                      title: 'تغير كلمة المرور',
                      onPressed: () {
                        Navigator.pushNamed(context, ScreenName.changePasswordScreen);
                      },
                    ),
                    BuildCustomProfileContainer(
                      title: 'تسجيل الخروج',
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 60.h,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
