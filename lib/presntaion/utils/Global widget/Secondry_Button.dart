import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({Key? key, required this.title, required this.function}) : super(key: key);


  final String title;
  final Function() function;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: InkWell(
        borderRadius: BorderRadius.circular(12.r),
        onTap: function,
        child: Container(
          alignment: Alignment.center,
          width: 306.0.w,
          height: 60.0.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: AppColor.white3,
          ),
          child: Text(
            title,
            style: GoogleFonts.roboto(
              fontSize: 18.sp,
              color: AppColor.mainColor,
              letterSpacing: -0.6428571624755859.spMin,
              height: 1.06.h,
            ),
          ),
        ),
      ),
    );
  }
}
