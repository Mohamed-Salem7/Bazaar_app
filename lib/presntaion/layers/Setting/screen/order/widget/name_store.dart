import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class NameStore extends StatelessWidget {
  const NameStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'متجر المنى',
              style: GoogleFonts.roboto(
                fontSize: 18.0,
                color: AppColor.black,
                letterSpacing: -0.6428571624755859,
                fontWeight: FontWeight.w700,
                height: 1.06.h,
              ),
            ),
            SizedBox(
              width: 36.w,
              height: 21.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment(0.w, 0.11.h),
                    child: Icon(
                      Icons.location_on_outlined,
                      size: 14.sp,
                    ),
                  ),
                  Text(
                    'غزة',
                    style: GoogleFonts.roboto(
                      fontSize: 16.sp,
                      color: AppColor.black,
                      letterSpacing: -0.5714285888671875.spMin,
                      height: 1.19.h,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 112.w,
              height: 21.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'X2',
                    style: TextStyle(
                      fontFamily: 'SF Display',
                      fontSize: 18.sp,
                      color: AppColor.black2,
                      letterSpacing: -0.43411764907836914.spMin,
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    '|',
                    style: TextStyle(
                      fontFamily: 'SF Display',
                      fontSize: 18.sp,
                      color: Colors.grey.shade300,
                      letterSpacing: -0.43411764907836914.spMin,
                    ),
                  ),
                  Text(
                    '#124166',
                    style: TextStyle(
                      fontFamily: 'SF Display',
                      fontSize: 18.sp,
                      color: AppColor.black2,
                      letterSpacing: -0.43411764907836914.spMin,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
          ],
        ),
        SizedBox(
          width: 48.w,
        ),
      ],
    );
  }
}
