import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextUser extends StatelessWidget {
  const TextUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'اختر المستخدم',
          style: GoogleFonts.tajawal(
            fontSize: 24.0.spMax,
            color: AppColor.black,
            letterSpacing: -0.8571428833007813.spMin,
            fontWeight: FontWeight.w500,
            height: 0.79.h,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 30.h,
        ),
      ],
    );
  }
}
