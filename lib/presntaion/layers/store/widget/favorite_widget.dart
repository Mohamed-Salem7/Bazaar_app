import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteWidget extends StatelessWidget {
  const FavoriteWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 12.w,
      top: 12.h,
      child:
      Container(
        alignment: Alignment(0.11.w, 0.h),
        width: 26.w,
        height: 26.h,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColor.white,
          boxShadow: [
            BoxShadow(
              color: AppColor.black.withOpacity(0.09.spMin),
              offset: Offset(0.w, 3.h),
              blurRadius: 6.r,
            ),
          ],
        ),
        child:Image(
          image : const AssetImage(AppImage.favoriteUnSelImg),
          width: 19.w,
          height: 18.h,
        ),
      ),
    );
  }
}
