import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShadowImageStore extends StatelessWidget {
  const ShadowImageStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.w,
      height: 266.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.w, -0.55.h),
          end: Alignment(0.w, 1.17.h),
          colors: [
            AppColor.mainColor.withOpacity(0.spMin),
            AppColor.black
          ],
        ),
      ),
    );
  }
}
