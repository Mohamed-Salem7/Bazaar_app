import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageProduct extends StatelessWidget {
  const ImageProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      alignment: Alignment(-0.80.w, -0.86.h),
      width: 164.w,
      height: 186.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14.r),
        image: const DecorationImage(
          image: AssetImage(AppImage.productImg),
          fit: BoxFit.cover,
        ),
      ),
      child: Icon(
        Icons.favorite,
        color: AppColor.mainColor,
        size: 25.spMin,
      ),
    );
  }
}
