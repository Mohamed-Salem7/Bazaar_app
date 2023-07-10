import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/App_Color.dart';
import '../../../utils/App_Image.dart';

class ListViewHome extends StatelessWidget {

  late Widget widget;
  late double height;
  late double width;

  ListViewHome(this.widget,this.width,this.height);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width.w,
      height: height.h,
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Stack(
            children: <Widget>[
              widget,
            ],
          );
          ;
        },
        separatorBuilder: (context, index) => SizedBox(
          width: 10.w,
        ),
        itemCount: 5,
      ),
    );
  }
}
