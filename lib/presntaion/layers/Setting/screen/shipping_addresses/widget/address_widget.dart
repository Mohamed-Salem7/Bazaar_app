import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AddressText extends StatelessWidget {
  const AddressText({Key? key, required this.title, required this.index}) : super(key: key);

  final String title;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: GoogleFonts.tajawal(
            fontSize: 14.sp,
            color: AppColor.mainColor,
            letterSpacing: -0.33764706039428716.spMin,
            height: 1.57.h,
          ),
        ),
        if(index != 3)
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.w),
          child: Text(
            '|',
            style: TextStyle(
              color: Colors.grey.shade300,
            ),
          ),
        ),
      ],
    );
  }
}
