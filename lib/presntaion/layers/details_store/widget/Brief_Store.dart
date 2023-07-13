import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class BriefStore extends StatelessWidget {
  const BriefStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 263.w,
      height: 68.5.h,
      child: Text(
        'جودة مذهلة! تبدو أفضل من الصورة! جميلة جدا وناعمة والشحن كان   يعا! وحصلت على م  حظة خطية جميلة! بالتأكيد أو   بهم',
        style: GoogleFonts.roboto(
          fontSize: 14.spMin,
          color: AppColor.black2,
          letterSpacing: 0.028.spMin,
        ),
        textAlign: TextAlign.right,
      ),
    );
  }
}
