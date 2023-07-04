import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jack/core/assets_path/svg_path.dart';
import 'package:jack/core/theme/app_colors.dart';


import '../../controller/user_main_layout_cubit/user_main_layout_cubit.dart';
import '../../controller/user_main_layout_cubit/user_main_layout_state.dart';
import '../../widgets/main_layout_widgets/custom_user_bottom_nav_bar.dart';

class UserMainLayoutScreen extends StatelessWidget {
  const UserMainLayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<UserMainLayoutCubit, MainLayoutState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          var cubit = UserMainLayoutCubit.get(context);
          return Scaffold(
            body: cubit.screens[cubit.currentIndex],
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                cubit.oonChangeIndex(2);
              },
              backgroundColor:
              cubit.currentIndex == 2 ? AppColors.primaryColor : Colors.grey,
              foregroundColor: Colors.white,
              child: Center(
                child: SvgPicture.asset(
                  SvgPath.home,
                  width: 29.w,
                  height: 29.h,
                ),
              ),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation
                .centerDocked,
            bottomNavigationBar: const CustomUserBottomNavigationBar(),
          );
        },
      ),
    );
  }
}
