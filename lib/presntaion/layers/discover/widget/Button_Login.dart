import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(12.r),
          onTap: ()
          {
          },

          child: Container(
            alignment: Alignment(0.w, 0.03.h),
            width: 280.w,
            height: 45.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color: AppColor.mainColor,
            ),
            child: Text(
              'تسجيل دخول',
              style: GoogleFonts.roboto(
                fontSize: 14.spMax,
                color: AppColor.white,
                letterSpacing: -0.5000000152587891,
                height: 1.36.h,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
      ],
    );
  }
}
