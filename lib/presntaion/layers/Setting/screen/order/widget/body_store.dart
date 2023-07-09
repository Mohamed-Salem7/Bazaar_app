import 'package:bazaar/presntaion/layers/Setting/screen/order/widget/info_store.dart';
import 'package:bazaar/presntaion/layers/Setting/screen/order/widget/photo_store.dart';
import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BodyStore extends StatelessWidget {
  const BodyStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      EdgeInsets.only(top: 15.h, right: 10.w,left: 10.w),
      child: Container(
        width: 353.w,
        height: 114.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: const Color(0xffF6F6F6),
          boxShadow: [
            BoxShadow(
              color: AppColor.black.withOpacity(0.08),
              offset: Offset(0.w, 6.h),
              blurRadius: 6.r,
            ),
          ],
        ),
        child: Padding(
          padding:
          EdgeInsets.only(top: 15.h, right: 10.w,left: 10.w),
          child: const Row(
            children: [
              PhotoStore(),
              InfoStore(),
            ],
          ),
        ),
      ),
    );
  }
}
