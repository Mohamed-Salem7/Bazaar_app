import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class EntryInfoVisa extends StatelessWidget {
  EntryInfoVisa({
    Key? key,
    required this.title,
    this.hintText2,
    required this.hintText,
    required this.isDate,
    required this.isSecure,
  }) : super(key: key);

  final String title;
  final String hintText;
  String? hintText2;
  final bool isDate;
  final bool isSecure;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.tajawal(
            fontSize: 14.sp,
            color: AppColor.black2,
            letterSpacing: -0.33764706039428716.spMin,
            height: 1.57.h,
          ),
        ),
        if (!isDate && !isSecure)
          Container(
            width: 232.w,
            height: 45.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color: AppColor.white.withOpacity(0.48.spMin),
              border: Border.all(
                width: 0.5.w,
                color: AppColor.black2.withOpacity(0.28.spMin),
              ),
            ),
            child: TextFormField(
              style: GoogleFonts.tajawal(
                fontSize: 12.sp,
                color: AppColor.black2,
                letterSpacing: -0.4285714416503906.spMin,
                height: 1.58.h,
              ),
              cursorColor: AppColor.mainColor,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
                hintText: hintText,
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: AppColor.mainColor, width: 1.0),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                border: InputBorder.none,
                hintStyle: TextStyle(
                  fontSize: 14.sp,
                  color: const Color(0xFF717171).withOpacity(0.44.spMin),
                  letterSpacing: -0.5000000152587891.spMin,
                  height: 1.36.h,
                ),
              ),
            ),
          ),
        if (!isDate && isSecure)
          SizedBox(
            width: 232.w,
            height: 45.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 90.w,
                  height: 45.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: AppColor.white.withOpacity(0.48.spMin),
                    border: Border.all(
                      width: 0.5.w,
                      color: AppColor.black2.withOpacity(0.28.spMin),
                    ),
                  ),
                  child: TextFormField(
                    style: GoogleFonts.tajawal(
                      fontSize: 12.sp,
                      color: AppColor.black2,
                      letterSpacing: -0.4285714416503906.spMin,
                      height: 1.58.h,
                    ),
                    cursorColor: AppColor.mainColor,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
                      hintText: hintText,
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: AppColor.mainColor, width: 1.0),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        fontSize: 14.sp,
                        color: const Color(0xFF717171).withOpacity(0.44.spMin),
                        letterSpacing: -0.5000000152587891.spMin,
                        height: 1.36.h,
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        if (isDate && !isSecure)
          SizedBox(
            width: 232.w,
            height: 45.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 132.w,
                  height: 45.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: AppColor.white.withOpacity(0.48.spMin),
                    border: Border.all(
                      width: 0.5.w,
                      color: AppColor.black2.withOpacity(0.28.spMin),
                    ),
                  ),
                  child: TextFormField(
                    style: GoogleFonts.tajawal(
                      fontSize: 12.sp,
                      color: AppColor.black2,
                      letterSpacing: -0.4285714416503906.spMin,
                      height: 1.58.h,
                    ),
                    cursorColor: AppColor.mainColor,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
                      hintText: hintText,
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: AppColor.mainColor, width: 1.0),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        fontSize: 14.sp,
                        color: const Color(0xFF717171).withOpacity(0.44.spMin),
                        letterSpacing: -0.5000000152587891.spMin,
                        height: 1.36.h,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 90.w,
                  height: 45.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: AppColor.white.withOpacity(0.48.spMin),
                    border: Border.all(
                      width: 0.5.w,
                      color: AppColor.black2.withOpacity(0.28.spMin),
                    ),
                  ),
                  child: TextFormField(
                    style: GoogleFonts.tajawal(
                      fontSize: 12.sp,
                      color: AppColor.black2,
                      letterSpacing: -0.4285714416503906.spMin,
                      height: 1.58.h,
                    ),
                    cursorColor: AppColor.mainColor,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
                      hintText: hintText2,
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: AppColor.mainColor, width: 1.0),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        fontSize: 14.sp,
                        color: const Color(0xFF717171).withOpacity(0.44.spMin),
                        letterSpacing: -0.5000000152587891.spMin,
                        height: 1.36.h,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
