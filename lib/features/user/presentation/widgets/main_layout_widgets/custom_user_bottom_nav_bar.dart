import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/assets_path/svg_path.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../controller/user_main_layout_cubit/user_main_layout_cubit.dart';
import '../../controller/user_main_layout_cubit/user_main_layout_state.dart';
import 'bottom_nav_bar_icon_widget.dart';

class CustomUserBottomNavigationBar extends StatelessWidget {
  const CustomUserBottomNavigationBar({Key? key,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserMainLayoutCubit, MainLayoutState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit = UserMainLayoutCubit.get(context);
        return BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 10.r,
          elevation: 25,
          color: AppColors.whitColor,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          surfaceTintColor: Colors.transparent,
          height: 75.h,
          child: Container(
            height: 75.h,
            width: double.infinity,
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BottomNavBarIcon(
                      label: "المزيد",
                      iconPath: SvgPath.more,
                      onTap: () {
                        cubit.currentIndex = 0;
                        cubit.oonChangeIndex(cubit.currentIndex);
                      },
                      currentIndex: cubit.currentIndex,
                      index: 0,
                    ),
                    BottomNavBarIcon(
                      label: "الحجوزات",
                      iconPath: SvgPath.booking,
                      onTap: () {
                        cubit.currentIndex = 1;
                        cubit.oonChangeIndex(cubit.currentIndex);
                      },
                      currentIndex: cubit.currentIndex,
                      index: 1,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BottomNavBarIcon(
                      label: "العروض",
                      iconPath: SvgPath.shoppingBag,
                      onTap: () {
                        cubit.currentIndex = 3;
                        cubit.oonChangeIndex(cubit.currentIndex);
                      },
                      currentIndex: cubit.currentIndex,
                      index: 3,
                    ),
                    BottomNavBarIcon(
                      label: "الخدمات",
                      iconPath: SvgPath.services,
                      onTap: () {
                        cubit.currentIndex = 4;
                        cubit.oonChangeIndex(cubit.currentIndex);
                      },
                      currentIndex: cubit.currentIndex,
                      index: 4,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
