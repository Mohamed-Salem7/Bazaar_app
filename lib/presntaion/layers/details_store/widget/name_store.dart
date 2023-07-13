import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class NameStore extends StatelessWidget {
  const NameStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 45.h,
        ),
        Text(
          'متجر المنى',
          style: GoogleFonts.tajawal(
            fontSize: 22.spMin,
            color: AppColor.black,
            letterSpacing: -0.7857143096923829.spMin,
            fontWeight: FontWeight.w700,
            height: 0.86.h,
          ),
        ),
      ],
    );
  }
}
