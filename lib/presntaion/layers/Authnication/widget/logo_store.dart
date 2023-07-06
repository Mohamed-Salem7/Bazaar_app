import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoStore extends StatelessWidget {
  const LogoStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 80.h,
        ),
        Stack(
          children: [
            CircleAvatar(
              radius: 50.r,
              backgroundColor: AppColor.mainColor,
            ),
            PositionedDirectional(
              height: 160.h,
              child: CircleAvatar(
                radius: 18.r,
                backgroundColor: AppColor.cameraBackgroundColor,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.camera_alt_outlined,
                    color: AppColor.black2,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          'شعار المتجر',
          style: GoogleFonts.tajawal(
            fontSize: 18.sp,
            color: AppColor.black,
            letterSpacing: -0.6428571624755859.spMin,
            fontWeight: FontWeight.w700,
            height: 1.06.h,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
