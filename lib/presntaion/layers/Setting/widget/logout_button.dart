import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: GestureDetector(
        onTap: ()
        {
          print('object');
        },
        child: Row(
          children: [
            Icon(
              Icons.power_settings_new,
              color: AppColor.mainColor,
              size: 30.sp,
            ),
            SizedBox(
              width: 5.w,
            ),
            Text(
              'تسجيل خروج',
              style: GoogleFonts.tajawal(
                fontSize: 20.sp,
                color: AppColor.mainColor,
                letterSpacing: -0.7142857360839844.spMin,
                height: 1.5.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
