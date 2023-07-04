import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Indicator extends StatelessWidget {
  final double margin;
  final bool selected;

  // ignore: use_key_in_widget_constructors, prefer_const_constructors_in_immutables
  Indicator({this.margin = 0, required this.selected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2.w),
      margin: EdgeInsets.only(left: margin),
      height: 15.h,
      width: 15.w,
      decoration: BoxDecoration(
          color: const Color(0x000000ff),
          shape: BoxShape.circle,
          border: Border.all(
              color: selected ? AppColor.mainColor : const Color(0x000000ff))),
      child: Container(
        height: 15.h,
        width: 15.w,
        decoration: BoxDecoration(
            shape: BoxShape.circle, color: selected ? AppColor.mainColor : Colors.grey),
      ),
    );
  }
}
