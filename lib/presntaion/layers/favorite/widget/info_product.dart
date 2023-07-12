import 'package:bazaar/presntaion/layers/favorite/widget/title_widget.dart';
import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoProduct extends StatelessWidget {
  const InfoProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0.h,
      child: Container(
        alignment: Alignment(0.075.w, -0.28.h),
        width: 156.w,
        height: 50.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14.r),
          color: AppColor.white,
        ),
        child: SizedBox(
          width: 159.w,
          height: 40.h,
          child: Row(
            children: [
              const Spacer(flex: 8),
              const NameFavoriteProduct(),
              const Spacer(flex: 83),
              Align(
                alignment: Alignment(0.w, -0.55.h),
                child: Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 18.spMin,
                ),
              ),
              const Spacer(flex: 2),
              Align(
                alignment: const Alignment(0.0, -0.6),
                child: Text(
                  '4.9',
                  style: GoogleFonts.roboto(
                    fontSize: 10.spMin,
                    color: AppColor.black,
                    letterSpacing: -0.3571428680419922.spMin,
                    height: 1.4.h,
                  ),
                ),
              ),
              const Spacer(flex: 7),
            ],
          ),
        ),
      ),
    );
  }
}
