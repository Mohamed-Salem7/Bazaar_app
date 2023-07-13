import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IndicatorStore extends StatelessWidget {
  const IndicatorStore({Key? key, required this.isFirst, required this.isLast})
      : super(key: key);

  final bool isFirst;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (isFirst)
          SizedBox(
            width: 50.w,
          ),
        Padding(
          padding: EdgeInsets.only(left: 10.w, right: 10.w),
          child: Container(
            height: 1.h,
            width: 70.w,
            color: AppColor.mainColor,
          ),
        ),
        if (isLast)
          SizedBox(
            width: 50.w,
          ),
      ],
    );
  }
}
