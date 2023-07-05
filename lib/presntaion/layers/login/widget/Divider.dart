import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DividerLogin extends StatelessWidget {
  const DividerLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(thickness: 0.3.sp,color: AppColor.black,)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Text(
            'أو',
            style: GoogleFonts.tajawal(
              fontSize: 15.sp,
              color: AppColor.black,
              letterSpacing: -0.5000000152587891.spMin,
              height: 1.36.h,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(child: Divider(thickness: 0.3.sp,color: AppColor.black,)),
      ],
    );
  }
}
