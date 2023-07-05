import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class NewAccountWidget extends StatelessWidget {
  const NewAccountWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'ليس لديك حساب ؟ ',
          style: GoogleFonts.tajawal(
            fontSize: 14.0.sp,
            color: AppColor.black,
            letterSpacing: -0.5000000152587891.spMin,
            height: 1.36.h,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'إنشاء حساب',
            style: GoogleFonts.tajawal(
              fontSize: 14.0.sp,
              color: AppColor.black,
              fontWeight: FontWeight.w500,
              letterSpacing: -0.5000000152587891.spMin,
              height: 1.36.h,
            ),
          ),
        ),

      ],
    );
  }
}
