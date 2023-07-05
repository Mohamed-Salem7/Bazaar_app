import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextDiscover extends StatelessWidget {
  const TextDiscover({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20.h,
        ),
        Text(
          'اكتشف الجديد\nتمتع بأفضل العروض',
          style: GoogleFonts.tajawal(
            fontSize: 22.0,
            color: AppColor.black,
            letterSpacing: -0.7857143096923829,
            fontWeight: FontWeight.w500,
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
