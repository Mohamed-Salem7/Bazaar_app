import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class NameFavoriteProduct extends StatelessWidget {
  const NameFavoriteProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 34.w,
      height: 43.h,
      child: Column(
        mainAxisAlignment:
        MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'الاسم',
            style: GoogleFonts.roboto(
              fontSize: 16.spMin,
              color: AppColor.black,
              letterSpacing: -0.5714285888671875.spMin,
              height: 1.19.h,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '24.12\$',
              style: GoogleFonts.roboto(
                fontSize: 12.spMin,
                color: AppColor.mainColor,
                letterSpacing: -0.2894117660522461.spMin,
                height: 1.63.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
