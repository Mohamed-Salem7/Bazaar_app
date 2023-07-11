import 'package:bazaar/presntaion/layers/Setting/screen/payment_method/widget/Info_widget.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VisaWidget extends StatelessWidget {
  const VisaWidget({Key? key, required this.index}) : super(key: key);

  final int index;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:
      EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
      child: Container(
        height: 148.h,
        width: 218.w,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              index % 2 != 0 ? AppImage.card2Img: AppImage.cardImg,
            ),
          ),
          borderRadius: BorderRadius.circular(
            28.r,
          ),
        ),
        child: Padding(
          padding:
          EdgeInsets.only(top: 20.h, right: 15.w, left: 15.w),
          child: const InfoVisa(),
        ),
      ),
    );
  }
}
