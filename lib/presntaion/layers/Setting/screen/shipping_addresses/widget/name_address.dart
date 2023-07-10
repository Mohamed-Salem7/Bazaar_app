import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class NameInAddress extends StatelessWidget {
  const NameInAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.h,
      width: 190.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'هند صوان',
            style: GoogleFonts.tajawal(
              fontSize: 18.sp,
              color: AppColor.black,
              letterSpacing: -0.6428571624755859.spMin,
              fontWeight: FontWeight.w700,
              height: 1.06.h,
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 26.w,
            height: 26.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColor.mainColor,
              boxShadow: [
                BoxShadow(
                  color: AppColor.black.withOpacity(0.16),
                  offset: Offset(0.w, 3.h),
                  blurRadius: 6.r,
                ),
              ],
            ),
            child: const Image(
              image: AssetImage(
                AppImage.editAddressImg,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
