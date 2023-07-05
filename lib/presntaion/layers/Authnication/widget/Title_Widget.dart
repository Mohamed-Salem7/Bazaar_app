import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({Key? key, required this.title}) : super(key: key);


  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20.h,
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
              ),
            ),
            SizedBox(
              width: 60.w,
            ),
            Center(
              child: Text(
                title,
                style: GoogleFonts.tajawal(
                  fontSize: 16.spMax,
                  color: AppColor.black,
                  letterSpacing: -0.5714285888671875.spMin,
                  height: 2.19.h,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
