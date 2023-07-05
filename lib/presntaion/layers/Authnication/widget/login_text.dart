import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginText extends StatelessWidget {
  const LoginText({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20.h,
        ),
        Text(
          title,
          style: GoogleFonts.tajawal(
            fontSize: 16.0.spMin,
            color: AppColor.black,
            letterSpacing: -0.5714285888671875.spMin,
            height: 1.19.h,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 20.h,
        ),
      ],
    );
  }
}
