import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/App_Image.dart';

class SmallItemDetails extends StatelessWidget {
  final double space;
  final String img;


  SmallItemDetails(this.space, this.img);

  @override
  Widget build(BuildContext context) {
    return PositionedDirectional(
      end: space.w,
      bottom: 120.h,
      child: GestureDetector(
        onTap: (){},
          child: Image.asset(img)),
    );
  }
}
