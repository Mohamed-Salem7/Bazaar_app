
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/App_Color.dart';

class BoxNameWidget extends StatelessWidget {
  final String text;


  BoxNameWidget(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        fontSize: 12.0,
        color: AppColor.black,
        letterSpacing: -0.2894117660522461,
        height: 1.25,
      ),
      textAlign: TextAlign.center,
    );
  }
}
