import 'package:bazaar/presntaion/layers/Authnication/forget_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/App_Color.dart';

class ForgetWidget extends StatelessWidget {
  const ForgetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15.h,
        ),
        TextButton(
          onPressed: ()
          {
            Get.to(const ForgetScreen(),transition: Transition.rightToLeft);
          },
          child: Text(
            'نسيت كلمة المرور',
            style: GoogleFonts.tajawal(
              fontSize: 14.0.sp,
              color: AppColor.black,
              letterSpacing: -0.5000000152587891.spMin,
              fontWeight: FontWeight.w500,
              height: 1.36.h,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
      ],
    );
  }
}
