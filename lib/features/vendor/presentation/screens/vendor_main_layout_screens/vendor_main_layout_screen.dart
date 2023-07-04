import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jack/core/assets_path/svg_path.dart';
import 'package:jack/core/theme/app_colors.dart';



import '../../controllers/vendor_main_layout_cubit/vendor_main_layout_cubit.dart';
import '../../controllers/vendor_main_layout_cubit/vendor_main_layout_state.dart';
import '../../widgets/main_layout_widgets/custom_vendor_bottom_nav_bar.dart';

class VendorMainLayoutScreen extends StatelessWidget {
  const VendorMainLayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<VendorMainLayoutCubit, VendorMainLayoutState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          var cubit = VendorMainLayoutCubit.get(context);
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
            bottomNavigationBar: const CustomVendorBottomNavigationBar(),
          );
        },
      ),
    );
  }
}
