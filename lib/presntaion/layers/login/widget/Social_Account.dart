import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialAccount extends StatelessWidget {
  const SocialAccount({Key? key, required this.image}) : super(key: key);


  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(-0.02.w, 0.01.h),
      width: 57.0.w,
      height: 36.0.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7.r),
        color: AppColor.white,
        boxShadow: [
          BoxShadow(
            color: AppColor.black.withOpacity(0.16.spMin),
            offset: Offset(0.w, 3.h),
            blurRadius: 8.r,
          ),
        ],
      ),
      child: Image(
        image: AssetImage(image),
        width: 22.w,
        height: 18.h,
      ),
    );
  }
}
