import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/App_Color.dart';

class BoxNumWidget extends StatelessWidget {
    final String text;


    BoxNumWidget(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
        fontSize: 22.0,
        color: AppColor.mainColor,
        fontWeight: FontWeight.w600,
        height: 1.55,
      ),
      textAlign: TextAlign.center,
    );
  }
}
