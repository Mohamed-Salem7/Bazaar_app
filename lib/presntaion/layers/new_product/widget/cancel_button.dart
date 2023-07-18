import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CancelButton extends StatelessWidget {
  const CancelButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
      child: InkWell(
        onTap: ()
        {
          Navigator.pop(context);
        },
        borderRadius: BorderRadius.circular(
          12.r,
        ),
        child: Container(
          width: 326.w,
          height: 50.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: AppColor.white3,
          ),
          child: Center(child: Text(
            'إلغاء',
            style: GoogleFonts.roboto(
              fontSize: 14.spMin,
              color: AppColor.black2,
              letterSpacing: -0.5000000152587891.spMin,
              height: 1.36.h,
            ),
            textAlign: TextAlign.center,
          ),),
        ),
      ),
    );
  }
}
