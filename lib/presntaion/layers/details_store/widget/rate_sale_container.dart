import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class RateSaleContainer extends StatelessWidget {
  const RateSaleContainer(
      {Key? key,
      required this.text1,
      required this.text2,
      required this.isRated, required this.isSalled})
      : super(key: key);

  final String text1;
  final String text2;
  final bool isRated;
  final bool isSalled;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 88.w,
      height: 45.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: Colors.grey[100],
        boxShadow: [
          BoxShadow(
            color: AppColor.mainColor.withOpacity(0.11.spMin),
            offset: Offset(0.w, 3.h),
            blurRadius: 6.r,
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            text1,
            style: GoogleFonts.roboto(
              fontSize: 16.spMin,
              color: AppColor.black2,
              letterSpacing: -0.384.spMin,
              height: 1.38.h,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            width: isRated || isSalled ? 32.w : 58.w,
            height: 19.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                if (isRated)
                  Icon(
                    Icons.star,
                    size: 14.spMin,
                    color: Colors.amber,
                  ),
                Text(
                  text2,
                  style: GoogleFonts.roboto(
                    fontSize: 14.spMin,
                    color: const Color(0xFF858585),
                    letterSpacing: -0.5000000152587891.spMin,
                    height: 1.36.h,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
