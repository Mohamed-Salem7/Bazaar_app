import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectPaymentWidget extends StatelessWidget {
  const SelectPaymentWidget({Key? key, required this.image, required this.image2, required this.isSelect}) : super(key: key);


  final String image;
  final String image2;
  final bool isSelect;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(0.w, 0.02.h),
      width: 93.w,
      height: 78.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: isSelect ? AppColor.mainColor : AppColor.white,
        border: Border.all(
          width: 1.w,
          color: AppColor.mainColor,
        ),
      ),
      child: Image(
        image: AssetImage(isSelect ? image : image2),
        width: 30.83.w,
        height: 30.83.h,
      ),
    );
  }
}
