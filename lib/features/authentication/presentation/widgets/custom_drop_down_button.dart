import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jack/core/assets_path/fonts_path.dart';
import 'package:jack/core/theme/app_colors.dart';

import '../../../../core/dummy_data/vendor_dummy_data.dart';

class CustomDropDownButton extends StatefulWidget {
  final String title;
  const CustomDropDownButton({Key? key, required this.title}) : super(key: key);

  @override
  State<CustomDropDownButton> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  String? value;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8,
      shadowColor: Colors.black,
      color: Colors.white,
      borderRadius: BorderRadius.circular(8.r),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: DropdownButton(
          items: VendorDummyData.dropDownItemsList
              .map((e) => DropdownMenuItem(value: e,child: Text(e),))
              .toList(),
          onChanged: (value) {
            setState(() {
              this.value = value;
            });
          },
          value: value,
          isExpanded: true,
          style: TextStyle(fontSize: 16.sp,fontFamily: FontsPath.tajawalMedium,color: Colors.grey),
          hint: Text(widget.title,style: TextStyle(fontSize: 16.sp,fontFamily: FontsPath.tajawalMedium),),
          icon: Icon(Icons.keyboard_arrow_down_outlined,color: AppColors.primaryColor,size: 24.r,),
          underline: const SizedBox.shrink(),

        ),
      ),
    );
  }
}
