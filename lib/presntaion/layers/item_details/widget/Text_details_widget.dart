import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/App_Color.dart';

class TextDetailsWidget extends StatelessWidget {
  final String text;

  TextDetailsWidget(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        fontSize: 20.0,
        color: AppColor.black,
        letterSpacing: -0.7142857360839844,
        fontWeight: FontWeight.w700,
        height: 0.95,
      ),
    );
  }
}
