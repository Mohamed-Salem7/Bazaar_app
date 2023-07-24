import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class TabBarDetails extends StatelessWidget {
  final String title1;
  final String title2;


  TabBarDetails(this.title1, this.title2);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328.w,
      height: 28.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: const Color(0xff767680).withOpacity(0.2),
      ),
      child: TabBar(
        onTap: (value) {},
        physics: const BouncingScrollPhysics(),
        unselectedLabelStyle: TextStyle(
          fontFamily: 'SFProText-Medium',
          fontSize: 13.sp,
          color: AppColor.black,
          letterSpacing: -0.07999999523162842.spMin,
          height: 1.38.h,
        ),
        unselectedLabelColor: AppColor.black,
        padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
        indicator: BoxDecoration(
            color: AppColor.mainColor,
            borderRadius: BorderRadius.circular(10.r)),
        tabs: [
          Text(title1),
          Text(title2),
        ],
      ),
    );
  }
}
