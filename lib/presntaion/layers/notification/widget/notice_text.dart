import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class NoticeText extends StatelessWidget {
  const NoticeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 215.w,
      height: 62.h,
      child: Text.rich(
        TextSpan(
          style: GoogleFonts.roboto(
            fontSize: 16.spMin,
            color: AppColor.black2,
            letterSpacing: -0.38588235473632815.spMin,
            height: 1.47.h,
          ),
          children: [
            TextSpan(
              text: 'متجر المنى',
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w500,
              ),
            ),
            TextSpan(
              text: ' ',
              style: GoogleFonts.roboto(
                fontSize: 14.spMin,
                letterSpacing: -0.33764706039428716.spMin,
              ),
            ),
            TextSpan(
              text:
              'تم الموافقة وشحن -  جاكيت قصير مطرز بالكامل تطريز تقليدي تصميم فلسطيني',
              style: GoogleFonts.roboto(
                fontSize: 14.spMin,
                color: const Color(0xFF717171),
                letterSpacing: -0.33764706039428716.spMin,
              ),
            ),
            TextSpan(
              text: ' ',
              style: GoogleFonts.roboto(
                fontSize: 14.spMin,
                letterSpacing: -0.33764706039428716.spMin,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.right,
      ),
    );
  }
}
