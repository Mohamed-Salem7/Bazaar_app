import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class NumberRevisionStore extends StatelessWidget {
  const NumberRevisionStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '15',
          style: GoogleFonts.roboto(
            fontSize: 18.spMin,
            color: AppColor.mainColor,
            letterSpacing: -0.432.spMin,
            height: 1.02.h,
          ),
          //textAlign: TextAlign.center,
        ),
        SizedBox(
          width: 8.w,
        ),
        Text(
          'المراجعات',
          style: GoogleFonts.roboto(
            fontSize: 18.spMin,
            color: AppColor.mainColor,
            letterSpacing: -0.432.spMin,
            height: 1.42.h,
          ),
          //textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
