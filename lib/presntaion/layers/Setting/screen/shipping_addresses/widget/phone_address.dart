import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PhoneInAddress extends StatelessWidget {
  const PhoneInAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '+970567576224',
      style: TextStyle(
        fontSize: 14.sp,
        color: AppColor.black2,
        letterSpacing: -0.33764706039428716.spMin,
      ),
    );
  }
}
