import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TimeStore extends StatelessWidget {
  const TimeStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 98.w,
          height: 17.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                '15-AUG-2020',
                style: TextStyle(
                  fontFamily: 'SF Pro Text',
                  fontSize: 13.sp,
                  color: AppColor.black2,
                  letterSpacing: -0.078.spMin,
                ),
              ),
              Icon(
                Icons.calendar_month,
                size: 16.spMin,
                color: AppColor.black2,
              ),
            ],
          ),
        ),
        SizedBox(
          width: 15.w,
        ),
        SizedBox(
          width: 76.w,
          height: 17.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                '02:35 PM',
                style: TextStyle(
                  fontFamily: 'SF Pro Text',
                  fontSize: 13.sp,
                  color: AppColor.black2,
                  letterSpacing: -0.078.spMin,
                ),
              ),
              Icon(
                Icons.access_time_outlined,
                size: 16.spMin,
                color: AppColor.black2,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
