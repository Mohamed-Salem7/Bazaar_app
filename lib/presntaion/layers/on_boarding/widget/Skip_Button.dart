import 'package:bazaar/presntaion/layers/discover/discover_screen.dart';
import 'package:bazaar/presntaion/utils/component/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: ()
          {
            navigatorFinished(context, const DiscoverScreen());
          },
          child: Text(
            'تخطي',
            style: GoogleFonts.tajawal(
              fontSize: 16.0,
              color: const Color(0xFFA6A6A6),
              letterSpacing: -0.5714285888671875,
              height: 1.19,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
      ],
    );
  }
}
