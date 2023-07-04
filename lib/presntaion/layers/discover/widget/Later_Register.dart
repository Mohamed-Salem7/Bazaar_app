import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LaterRegister extends StatelessWidget {
  const LaterRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()
      {

      },
      child: Text(
        'أو\nالتسجيل لاحقا',
        style: GoogleFonts.roboto(
          fontSize: 16.spMin,
          color: const Color(0xFFA6A6A6),
          letterSpacing: -0.5714285888671875.spMin,
          height: 2.13.h,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
