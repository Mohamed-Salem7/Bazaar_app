import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 16.w,
      bottom: 26.h,
      child: Container(
        alignment: Alignment.center,
        width: 80.w,
        height: 80.h,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColor.white,
          boxShadow: [
            BoxShadow(
              color: AppColor.white.withOpacity(0.22.spMin),
              offset: Offset(0.w, 3.h),
              blurRadius: 12.r,
            ),
          ],
        ),
        child: Container(
          width: 80.w,
          height: 80.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: const DecorationImage(
              image: AssetImage(AppImage.avatarImg),
              fit: BoxFit.cover,
            ),
            boxShadow: [
              BoxShadow(
                color: AppColor.mainColor.withOpacity(0.11.spMin),
                offset: Offset(0.w, 6.h),
                blurRadius: 12.r,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
