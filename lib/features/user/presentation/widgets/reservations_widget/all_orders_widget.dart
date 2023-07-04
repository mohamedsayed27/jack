import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/assets_path/fonts_path.dart';
import '../../../data/models/reservation_model.dart';

class AllOrdersWidgetItem extends StatelessWidget {
  final ReservationModel reservationModel;

  const AllOrdersWidgetItem({
    Key? key,
    required this.reservationModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: AnimatedContainer(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(color: const Color(0xffE8E8E8))),
        duration: const Duration(milliseconds: 100),
        child: ExpansionTile(
          trailing: SizedBox(
            height: 80.h,
            width: 45.w,
            child: Row(
              children: [
                Text(
                  "click",
                  style: TextStyle(
                    fontSize: 10.sp,
                    fontFamily: FontsPath.almaraiBold,
                  ),
                ),
                Icon(
                  Icons.arrow_downward_outlined,
                  size: 20.r,
                )
              ],
            ),
          ),
          title: SizedBox(
            width: 80.w,
            height: 75.h,
            child: Row(
              children: [
                Container(
                  height: 70.h,
                  width: 70.w,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Image.asset(
                    reservationModel.service!.imgUrl!,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        reservationModel.service!.title!,
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: FontsPath.almaraiBold,
                            color: const Color(0xff1E2432)),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "تلمدينة : الرياض",
                        style: TextStyle(
                            fontSize: 8.sp,
                            fontFamily: FontsPath.almaraiRegular,
                            color: const Color(0xff1E2432)),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "حالة الطلب : بأنتظار الرد",
                        style: TextStyle(
                            fontSize: 8.sp,
                            fontFamily: FontsPath.almaraiRegular,
                            color: const Color(0xff1E2432)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      'ملاحظاتي',
                      style: TextStyle(
                          fontSize: 11.sp,
                          fontFamily: FontsPath.almaraiBold,
                          color: const Color(0xff484848)),
                    ),
                    Text(
                      'هذا النص هو مثال لنص يمكن أن يستبدل في نفس لمساحة، لقد تم توليد هذا النص',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: FontsPath.almaraiRegular,
                          color: const Color(0xff1E2432)),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 80.w),
                      child: Text(
                        '${reservationModel.service!.title}',
                        style: TextStyle(
                            height: 1.5.h,
                            fontSize: 10.sp,
                            fontFamily: FontsPath.almaraiRegular,
                            color: const Color(0xff1E2432)),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      width: double.infinity,
                      height: 40.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.r),
                          border: Border.all(color: const Color(0xffE8E8E8))),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      width: 110.w,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(5.r), // <-- Radius
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.delete,
                              color: Colors.white,
                              size: 20.r,
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              "الغاء",
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  fontFamily: FontsPath.almaraiRegular,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
