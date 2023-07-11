import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class BodyContactUs extends StatelessWidget {
  const BodyContactUs({Key? key, required this.image, required this.title}) : super(key: key);

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 226.w,
        height: 40.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.r),
          color: AppColor.mainColor,
        ),
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.w),
            child:Row(
              children: [
                Container(
                  alignment: Alignment(0.w, -0.02.h),
                  width: 34.w,
                  height: 34.h,
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.all(Radius.elliptical(18.r, 18.r)),
                    color: AppColor.white,
                  ),
                  child: Image(
                    image: AssetImage(
                      image,
                    ),
                    width: 20.w,
                    height: 19.43.h,
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  title,
                  style: GoogleFonts.roboto(
                    fontSize: 16.sp,
                    color: AppColor.white,
                    letterSpacing: -0.5714285888671875.spMin,
                    height: 1.19.h,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
        ),
    );
  }
}
