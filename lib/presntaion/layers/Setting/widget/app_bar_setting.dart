import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarSetting extends StatelessWidget {
  const AppBarSetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: const AssetImage(
            AppImage.settingImg,
          ),
          fit: BoxFit.fill,
          width: 360.w,
          height: 245.h,
        ),
        PositionedDirectional(
          top: 60.h,
          start: 100.w,
          end: 100.w,
          child: Text(
            'الملف الشخصي',
            style: GoogleFonts.tajawal(
              fontSize: 16.sp,
              color: AppColor.white3,
              letterSpacing: -0.5714285888671875.spMin,
              height: 1.19.h,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        PositionedDirectional(
          top: 45.h,
          start: 10.w,
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: AppColor.white3,
            ),
          ),
        ),
        PositionedDirectional(
          top: 45.h,
          end: 0.w,
          child: IconButton(
            onPressed: ()
            {
            },
            icon: const Icon(
              Icons.settings_outlined,
              color: AppColor.white3,
            ),
          ),
        ),
        PositionedDirectional(
          top: 95.h,
          end: 100.w,
          start: 100.w,
          child: CircleAvatar(
            radius: 40.r,
            backgroundColor: AppColor.white,
          ),
        ),
        PositionedDirectional(
          top: 185.h,
          start: 100.w,
          end: 100.w,
          child: Text(
            ' محمد ديب',
            style: GoogleFonts.tajawal(
              fontSize: 16.sp,
              color: AppColor.white3,
              letterSpacing: -0.5714285888671875.spMin,
              height: 1.19.h,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        PositionedDirectional(
          top: 203.h,
          start: 100.w,
          child: Icon(
            Icons.location_on_outlined,
            size: 15.spMin,
            color: AppColor.white9,
          ),
        ),
        PositionedDirectional(
          top: 205.h,
          start: 100.w,
          end: 100.w,
          child: Text(
            'غزة - الميناء - شارع الرشيد',
            style: GoogleFonts.tajawal(
              fontSize: 13.spMin,
              color: AppColor.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
