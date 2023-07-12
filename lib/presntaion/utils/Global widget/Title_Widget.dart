import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

PreferredSizeWidget TitleWidget({
  required String title,
  required bool isEditProfile,
  required BuildContext context,
}) {
  return AppBar(
    title: Text(
      title,
      style: GoogleFonts.tajawal(
        fontSize: 16.spMax,
        color: AppColor.black,
        letterSpacing: -0.5714285888671875.spMin,
        height: 2.19.h,
      ),
      //textAlign: TextAlign.center,
    ),
    centerTitle: true,
    backgroundColor: AppColor.white9,
    leading: IconButton(
      onPressed: ()
      {
        Navigator.pop(context);
      },
      icon: Icon(
        Icons.arrow_back_ios,
        color: AppColor.black,
        size: 20.spMin,
      ),
    ),
    elevation: 0,
    actions: isEditProfile
        ? [
            TextButton(
              onPressed: () {},
              child: Text(
                'تم',
                style: GoogleFonts.roboto(
                  fontSize: 18.0,
                  color: AppColor.mainColor,
                  letterSpacing: -0.6428571624755859,
                  fontWeight: FontWeight.w500,
                  height: 1.06,
                ),
              ),
            )
          ]
        : null,
  );
}
