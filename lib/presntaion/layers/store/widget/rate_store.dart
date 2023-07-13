import 'package:bazaar/presntaion/layers/details_store/Details_store_screen.dart';
import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/Global%20widget/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class RateStore extends StatelessWidget {
  const RateStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: GestureDetector(
        onTap: () {
          Get.to(const DetailsStoreScreen(), transition: transition[0]);
        },
        child: Container(
          alignment: Alignment(0.17.w, -0.30.h),
          width: 325.w,
          height: 60.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: AppColor.white,
            boxShadow: [
              BoxShadow(
                color: AppColor.black.withOpacity(0.07.spMin),
                offset: Offset(0.w, 6.h),
                blurRadius: 12.r,
              ),
            ],
          ),
          child: SizedBox(
            width: 65.w,
            height: 51.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'اسم المتجر',
                  style: GoogleFonts.roboto(
                    fontSize: 18.spMin,
                    color: AppColor.black2,
                    letterSpacing: -0.6428571624755859.spMin,
                    fontWeight: FontWeight.w700,
                    height: 1.06.h,
                  ),
                  textAlign: TextAlign.center,
                ),
                Align(
                  alignment: Alignment(0.90.w, 0.h),
                  child: SizedBox(
                    width: 35.w,
                    height: 19.h,
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          '4.9',
                          style: GoogleFonts.roboto(
                            fontSize: 14.sp,
                            color: AppColor.black2,
                            letterSpacing:
                            -0.5000000152587891.spMin,
                            height: 1.06.h,
                          ),
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 18.spMin,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
