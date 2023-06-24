import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/assets_path/fonts_path.dart';
import '../../../../../core/assets_path/svg_path.dart';
import '../../../data/models/reservation_model.dart';

class EndOrdersWidgetBuilder extends StatelessWidget {
  final ReservationModel reservationModel;
  const EndOrdersWidgetBuilder({Key? key, required this.reservationModel,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        height: 95.h,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(color: const Color(0xffE8E8E8))),
        child: Row(
          children: [
            InkWell(
              child: Container(
                height: 70.h,
                width: 70.w,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(color: Colors.black)),
                child:Image.asset(
                  reservationModel.service!.imgUrl!,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              child: InkWell(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      '${reservationModel.service!.title}',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: FontsPath.almaraiBold,
                          color: const Color(0xff1E2432)),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      'address',
                      style: TextStyle(
                          fontSize: 10.sp,
                          fontFamily: FontsPath.almaraiRegular,
                          color: const Color(0xff1E2432)),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Expanded(
                      child: Text(
                        "تم الانتهاء",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                            fontSize: 10.sp,
                            fontFamily: FontsPath.almaraiRegular,
                            color: const Color(0xff1E2432)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  SvgPath.chatIcon,
                  width: 50.w,
                  height: 50.h,
                ),)
          ],
        ),
      ),
    );
  }
}
