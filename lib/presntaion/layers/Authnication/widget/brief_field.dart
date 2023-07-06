import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class BriefField extends StatelessWidget {
  const BriefField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(0.94.w, -0.82.h),
      width: 343.w,
      height: 108.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: AppColor.white,
        boxShadow: [
          BoxShadow(
            color: AppColor.black.withOpacity(0.11.sp),
            offset: Offset(0.w, 3.h),
            blurRadius: 12.r,
          ),
        ],
      ),
      child: TextFormField(
        onTap: () {},
        cursorColor: AppColor.mainColor,
        maxLines: 10,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 8.w),
          label: Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h),
            child: Column(
              children: [
                Text(
                  'نبذة مختصرة',
                  style: GoogleFonts.tajawal(
                    fontSize: 14.0.sp,
                    color: const Color(0xFFBEBEBE),
                    letterSpacing: -0.33764706039428716.spMin,
                    height: 1.57.h,
                  ),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
