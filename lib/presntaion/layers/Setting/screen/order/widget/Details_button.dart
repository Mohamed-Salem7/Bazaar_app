import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsButton extends StatelessWidget {
  const DetailsButton({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment(0.03.w, 0.11.h),
          width: 93.w,
          height: 28.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(26.r),
            color: index == 0 ? AppColor.mainColor : (index == 1 ? Colors.grey.shade400 : Colors.green),
          ),
          child: Text(
            index == 0 ? 'قيد الانتظار' : (index == 1 ? 'حالية':'مكتملة'),
            style: TextStyle(
              fontFamily: 'SF Display',
              fontSize: 14.sp,
              color: AppColor.white,
              letterSpacing: -0.33764706039428716.spMin,
            ),
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        Container(
          alignment: Alignment(0.2.w, 0.11.h),
          width: 93.w,
          height: 28.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(26.0),
            border: Border.all(
              width: 1.w,
              color: AppColor.mainColor,
            ),
          ),
          child: Text(
            'عرض التفاصيل',
            style: TextStyle(
              fontFamily: 'SF Display',
              fontSize: 14.sp,
              color: AppColor.mainColor,
              letterSpacing: -0.33764706039428716.spMin,
            ),
          ),
        ),
      ],
    );
  }
}
