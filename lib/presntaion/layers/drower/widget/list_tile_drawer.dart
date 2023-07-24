import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/App_Color.dart';

class ListTileDrawer extends StatelessWidget {
  final String text;
  final String img;
  final Function() funchion;


  ListTileDrawer(this.text, this.img,this.funchion);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 20.h,
        width: 20.w,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(img),
          )
        ),
      ),
      title:  Text(
        text,
        style: GoogleFonts.roboto(
          fontSize: 16.0,
          color: AppColor.mainColor,
          letterSpacing: -0.5714285888671875,
          height: 1.19,
        ),
      ),
      onTap: funchion,
    );
  }
}
