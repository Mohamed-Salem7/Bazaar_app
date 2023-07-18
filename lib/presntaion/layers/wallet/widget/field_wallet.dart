import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class FieldWallet extends StatelessWidget {
  const FieldWallet({Key? key, required this.title, required this.isSale, required this.textInputType}) : super(key: key);

  final String title;
  final TextInputType textInputType;
  final bool isSale;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.roboto(
            fontSize: 14.0,
            color: AppColor.black2,
            letterSpacing: -0.33764706039428716,
            height: 1.57,
          ),
          textAlign: TextAlign.right,
        ),
        SizedBox(
          height: 5.h,
        ),
        Container(
          width: 332.w,
          height: 40.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: AppColor.white3,
          ),
          child: TextFormField(
            cursorColor: AppColor.mainColor,
            keyboardType: textInputType,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 15.w),
              border: InputBorder.none,
              suffixIcon: isSale ? Text(
                '\$',
                style: TextStyle(
                  fontFamily: 'SF Display',
                  fontSize: 22.spMin,
                  color: AppColor.black2,
                  letterSpacing: -0.5305882377624512.spMin,
                  height: 1.55.h,
                ),
                textAlign: TextAlign.center,
              ) : null,
            ),
          ),
        ),
      ],
    );
  }
}
