
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/App_Color.dart';

class TextCheckOutWidget extends StatelessWidget {
  final String text;

  TextCheckOutWidget(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        fontSize: 16.0,
        color: AppColor.black,
        letterSpacing: -0.5714285888671875,
        height: 1.19,
      ),
    );
  }
}
