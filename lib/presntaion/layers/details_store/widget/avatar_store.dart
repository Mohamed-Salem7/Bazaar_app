import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AvatarStoreScreen extends StatelessWidget {
  const AvatarStoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 125.h,
      right: 30.w,
      left: 30.w,
      child: // Group: Group 6536
      Container(
        alignment: Alignment.center,
        width: 80.w,
        height: 70.h,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColor.white,
          boxShadow: [
            BoxShadow(
              color: AppColor.mainColor.withOpacity(0.1.spMin),
              offset: Offset(0.w, 6.h),
              blurRadius: 12.r,
            ),
          ],
        ),
        child: Container(
          width: 80.w,
          height: 70.h,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(AppImage.avatarImg),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
