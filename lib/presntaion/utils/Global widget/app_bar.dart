import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

PreferredSizeWidget AppBarMain({
  required String title,
}) {
  return AppBar(
    elevation: 0,
    backgroundColor: AppColor.white9,
    title: Text(
      title,
      style: GoogleFonts.tajawal(
        fontSize: 16.sp,
        color: AppColor.black2,
        letterSpacing: -0.5714285888671875.spMin,
        height: 1.19.h,
      ),
      textAlign: TextAlign.center,
    ),
    centerTitle: true,
  );
}
