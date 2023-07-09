import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingTextField extends StatelessWidget {
  const SettingTextField({Key? key, required this.title, required this.function, required this.isPhone}) : super(key: key);

  final String title;
  final Function() function;
  final bool isPhone;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 333.w,
      height: 56.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28.r),
        color: AppColor.white3,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200.withOpacity(0.03.spMin),
            offset: Offset(0.w, 3.h),
            blurRadius: 12.r,
          ),
        ],
      ),
      child: TextFormField(
        onTap: function,
        style:  GoogleFonts.tajawal(
          fontSize: 14.0.sp,
          color: AppColor.black2,
          letterSpacing: -0.33764706039428716.spMin,
          fontWeight: FontWeight.w500,
          height: 1.57.h,
        ),
        cursorColor: AppColor.mainColor,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 8.h),
          border: InputBorder.none,
          label: Text(
            title,
            style: GoogleFonts.tajawal(
              fontSize: 10.sp,
              color: const Color(0xFFB6B7B7),
              letterSpacing: -0.2411764717102051.spMin,
              height: 2.2.h,
            ),
            textAlign: TextAlign.right,
          ),
          suffixIcon: isPhone ? Padding(
            padding: EdgeInsets.symmetric(vertical: 15.h),
            child: Text(
              '+970',
              style: TextStyle(
                fontSize: 14.sp,
                color: AppColor.black,
                letterSpacing: -0.33764706039428716.spMin,
                fontWeight: FontWeight.w500,
              ),
            ),
          ) : null,
        ),
      ),
    );
  }
}
