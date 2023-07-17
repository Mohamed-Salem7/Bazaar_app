import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SizeProduct extends StatelessWidget {
  const SizeProduct({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: AppColor.white9,
        border: Border.all(
          width: 0.3.w,
          color: const Color(0xFF707070).withOpacity(0.22.spMin),
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: GoogleFonts.roboto(
            fontSize: 22.spMin,
            color: AppColor.black2,
            letterSpacing: -0.5305882377624512.spMin,
            height: 1.h,
          ),
          textAlign: TextAlign.right,
        ),
      ),
    );
  }
}
