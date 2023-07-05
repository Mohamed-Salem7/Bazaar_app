import 'package:bazaar/presntaion/layers/Authnication/Rules_Screen.dart';
import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class RulesWidget extends StatelessWidget {
  const RulesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: ()
      {
        Get.to(const RulesScreen(),transition: Transition.leftToRight);
      },
      child: Text(
        'الأحكام و الشروط',
        style: GoogleFonts.tajawal(
          fontSize: 14.sp,
          color: AppColor.mainColor,
          letterSpacing: -0.5000000152587891.spMin,
          fontWeight: FontWeight.w500,
          height: 1.36.h,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
