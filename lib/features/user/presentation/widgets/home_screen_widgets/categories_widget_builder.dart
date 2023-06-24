import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jack/core/dummy_data/user_dummy_data.dart';

class CategoriesWidgetBuilder extends StatelessWidget {
  const CategoriesWidgetBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.symmetric(
        horizontal: 10.w,
        vertical: 10.h,
      ),
      crossAxisCount: 3,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: 15,
      shrinkWrap: true,
      crossAxisSpacing: 15,
      childAspectRatio: 0.8,
      children: List.generate(
        UserDummyData.categoriesList.length,
        (index) => Container(
          height: 112.h,
          width: 112.w,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.blueGrey.withOpacity(.4),
            ),
            borderRadius: BorderRadius.circular(15.r,)
          ),
          child: Center(
            child: Image.asset(
              UserDummyData.categoriesList[index],
            ),
          ),
        ),
      ),
    );
  }
}
