import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jack/core/assets_path/images_path.dart';

import '../../../../../core/assets_path/fonts_path.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../../../user/data/models/reservation_model.dart';
import '../../../../user/presentation/widgets/reservations_widget/all_orders_widget.dart';
import '../../../../user/presentation/widgets/reservations_widget/end_orders.dart';
import '../../../../user/presentation/widgets/reservations_widget/ordered_orders_widget.dart';

class VendorReservationsScreen extends StatefulWidget {
  const VendorReservationsScreen({Key? key}) : super(key: key);

  @override
  State<VendorReservationsScreen> createState() => _VendorReservationsScreenState();
}

class _VendorReservationsScreenState extends State<VendorReservationsScreen>
    with TickerProviderStateMixin {
  List<String> titles = [
    "dd",
    "dd",
    "dd",
  ];

  List<ReservationModel> reservationsList = [
    const ReservationModel(
        id: 1,
        createdOn: "27/1/2005",
        addressDetails: "addressDetails",
        total: 5,
        orderStatus: 1,
        service: Service(
            id: 1,
            title: "title",
            imgUrl: ImagesPath.carousel2,
            isAvailable: true,
            finalPrice: 200,),),
    const ReservationModel(
        id: 1,
        createdOn: "27/1/2005",
        addressDetails: "addressDetails",
        total: 5,
        orderStatus: 1,
        service: Service(
            id: 1,
            title: "title",
            imgUrl: ImagesPath.carousel2,
            isAvailable: true,
            finalPrice: 200,),),
    const ReservationModel(
        id: 1,
        createdOn: "27/1/2005",
        addressDetails: "addressDetails",
        total: 5,
        orderStatus: 1,
        service: Service(
            id: 1,
            title: "title",
            imgUrl: ImagesPath.carousel2,
            isAvailable: true,
            finalPrice: 200)),
    const ReservationModel(
        id: 1,
        createdOn: "27/1/2005",
        addressDetails: "addressDetails",
        total: 5,
        orderStatus: 1,
        service: Service(
            id: 1,
            title: "title",
            imgUrl: ImagesPath.carousel2,
            isAvailable: true,
            finalPrice: 200)),
  ];
  TabController? tabController;

  @override
  void initState() {
    super.initState();
    // ReservationCubit.get(context).tabBarCIndex = 0;
    // ReservationCubit.get(context).getOrdersForUser();
    tabController = TabController(length: titles.length, vsync: this);
  }

  int tabBarCIndex = 0;

  void changeTabBarCurrentIndex(int index) {
    tabBarCIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("حجوزاتي",
            style: TextStyle(
                fontSize: 18.sp,
                fontFamily: FontsPath.almaraiBold,
                color: const Color(0xff1E2432))),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(
              height: 70.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: tabBarCIndex == 0
                          ? AppColors.primaryColor.withOpacity(0.2)
                          : AppColors.greyColor.withOpacity(.2),
                      foregroundColor: AppColors.whitColor,
                      shape: const StadiumBorder(),
                      shadowColor: Colors.transparent,
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.w, vertical: 12.h),
                    ),
                    onPressed: () {
                      changeTabBarCurrentIndex(0);
                    },
                    child: Text(
                      "كل الطلبات",
                      style: TextStyle(
                          color: tabBarCIndex == 0 ? AppColors.primaryColor : Colors.grey,
                          fontFamily: FontsPath.almaraiBold,
                          fontSize: 12.sp),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: tabBarCIndex == 1
                          ? AppColors.primaryColor.withOpacity(0.2)
                          : AppColors.greyColor.withOpacity(.2),
                      foregroundColor: AppColors.whitColor,
                      shape: const StadiumBorder(),
                      shadowColor: Colors.transparent,
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.w, vertical: 12.h),
                    ),
                    onPressed: () {
                      // getOrdersForUser();
                      changeTabBarCurrentIndex(1);
                    },
                    child: Text(
                      "المطلوبة",
                      style: TextStyle(
                          color: tabBarCIndex == 1 ? AppColors.primaryColor : Colors.grey,
                          fontFamily: FontsPath.almaraiBold,
                          fontSize: 12.sp),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: tabBarCIndex == 2
                          ? AppColors.primaryColor.withOpacity(0.2)
                          : AppColors.greyColor.withOpacity(.2),
                      foregroundColor: AppColors.whitColor,
                      shape: const StadiumBorder(),
                      shadowColor: Colors.transparent,
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.w, vertical: 12.h),
                    ),
                    onPressed: () {
                      // getOrdersForUser();
                      changeTabBarCurrentIndex(2);
                    },
                    child: Text(
                      "المنتهية",
                      style: TextStyle(
                          color: tabBarCIndex == 2 ? AppColors.primaryColor : Colors.grey,
                          fontFamily: FontsPath.almaraiBold,
                          fontSize: 12.sp),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            Expanded(
              child: tabBarCIndex == 0
                  ? ListView.builder(
                      itemCount: reservationsList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return AllOrdersWidgetItem(
                          reservationModel: reservationsList[index],
                        );
                      },
                    )
                  : tabBarCIndex == 1
                      ? ListView.builder(
                          itemCount: reservationsList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return OrderedOrdersWidgetBuilder(
                              reservationModel: reservationsList[index],
                            );
                          },
                        )
                      : ListView.builder(
                          itemCount: reservationsList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return EndOrdersWidgetBuilder(
                              reservationModel: reservationsList[index],
                            );
                          },
                        ),
            ),
          ],
        ),
      ),
    );
  }
}
