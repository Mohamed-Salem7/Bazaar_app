import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldMessage extends StatelessWidget {
  const TextFieldMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'الرسالة',
          style: GoogleFonts.roboto(
            fontSize: 14.sp,
            color: AppColor.black2,
            letterSpacing: -0.33764706039428716.spMin,
            height: 1.57.h,
          ),
          textAlign: TextAlign.right,
        ),
        SizedBox(
          height: 5.h,
        ),
        Container(
          width: 306.w,
          height: 129.h,
          padding: EdgeInsets.all(5.sp),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: AppColor.white3,
          ),
          child: TextFormField(
            cursorColor: AppColor.mainColor,
            maxLines: 10,
            style: GoogleFonts.roboto(
              fontSize: 14.sp,
              color: AppColor.black2,
              letterSpacing: -0.33764706039428716.spMin,
              height: 1.57.h,
            ),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 8.w),
              hintText: 'أدخل الرسالة',
              hintStyle: GoogleFonts.roboto(
                fontSize: 14.sp,
                color: const Color(0xFFBEBEBE),
                letterSpacing: -0.33764706039428716.spMin,
                height: 1.57.h,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
