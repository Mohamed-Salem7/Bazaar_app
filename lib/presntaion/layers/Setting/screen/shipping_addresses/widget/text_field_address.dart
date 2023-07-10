import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldAddAddress extends StatelessWidget {
  const TextFieldAddAddress({Key? key, required this.title, required this.isPhone}) : super(key: key);

  final String title;
  final bool isPhone;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
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
            height: 50.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: AppColor.white3,
            ),
            child: TextFormField(
              cursorColor: AppColor.mainColor,
              style: GoogleFonts.roboto(
                fontSize: 14.sp,
                color: AppColor.black2,
                letterSpacing: -0.33764706039428716.spMin,
                height: 1.57.h,
              ),
              decoration: InputDecoration(
                suffixIcon: isPhone ? Text(
                  '970+',
                  style: TextStyle(
                    fontSize: 18.sp,
                    color: AppColor.black2,
                    letterSpacing: -0.6428571624755859.spMin,
                    height: 2.0.h,
                  ),
                ): null,
                contentPadding: EdgeInsets.symmetric(horizontal: 8.w),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
