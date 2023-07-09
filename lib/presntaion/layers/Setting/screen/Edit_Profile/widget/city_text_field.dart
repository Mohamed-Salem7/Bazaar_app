import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CityTextField extends StatelessWidget {
  const CityTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 333.w,
      height: 60.h,
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
      child: Padding(
        padding: EdgeInsets.only(right: 15.w,left: 15.w,top: 8.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(
              'المدينة',
              style: GoogleFonts.tajawal(
                fontSize: 10.sp,
                color: const Color(0xFFB6B7B7),
                letterSpacing: -0.2411764717102051.spMin,
              ),
              textAlign: TextAlign.right,
            ),
            DropdownButtonFormField(
                isDense: true,
                value: 3,
                decoration: InputDecoration(
                  isDense: true,
                  border: InputBorder.none,
                ),
                borderRadius: BorderRadius.circular(28.r),
                isExpanded: true,
                //icon: Icon(Icons.keyboard_arrow_down_outlined,size: 25.sp,),
                items:
                [
                  DropdownMenuItem(
                    value: 1,
                    child: Text(
                      'أدخل المدينة',
                      style: GoogleFonts.roboto(
                        fontSize: 14.sp,
                        color: AppColor.black2,
                        letterSpacing: -0.33764706039428716.spMin,
                        fontWeight: FontWeight.w500,
                        height: 1.57.h,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  DropdownMenuItem(
                    value: 2,
                    child: Text(
                      'غزة',
                      style: GoogleFonts.roboto(
                        fontSize: 14.sp,
                        color: AppColor.black2,
                        letterSpacing: -0.33764706039428716.spMin,
                        fontWeight: FontWeight.w500,
                        height: 1.57.h,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  DropdownMenuItem(
                    value: 3,
                    child: Text(
                      'الوسطى',
                      style: GoogleFonts.roboto(
                        fontSize: 14.sp,
                        color: AppColor.black2,
                        letterSpacing: -0.33764706039428716.spMin,
                        fontWeight: FontWeight.w500,
                        height: 1.57.h,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),

                ], onChanged: (value) {}),
          ],
        ),
      ),
    );
  }
}
