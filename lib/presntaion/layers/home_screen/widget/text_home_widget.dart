import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/App_Color.dart';

class TextHomeWidget extends StatelessWidget {
  late String text;

  TextHomeWidget(this.text);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              text,
              style: GoogleFonts.roboto(
                fontSize: 18.0,
                color: AppColor.black,
                letterSpacing: -0.6428571624755859,
                fontWeight: FontWeight.w700,
                height: 1.06,
              ),
            ),
            Spacer(),
            TextButton(onPressed: (){}, child: Text(
              'المزيد',
              style: GoogleFonts.roboto(
                fontSize: 14.0,
                color: Colors.grey,
                letterSpacing: -0.33764706039428716,
                fontWeight: FontWeight.w300,
                height: 1.57,
              ),
            ))

          ],
        ),
        SizedBox(
          height: 10.h,
        ),
      ],
    );
  }
}
