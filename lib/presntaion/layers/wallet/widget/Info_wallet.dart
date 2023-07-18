import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoWallet extends StatelessWidget {
  const InfoWallet({Key? key, required this.title, required this.title2}) : super(key: key);

  final String title;
  final String title2;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          title,
          style: TextStyle(
            fontFamily: 'Karla-Bold',
            fontSize: 12.spMin,
            color: AppColor.white,
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          title2,
          style: TextStyle(
            fontFamily: 'Karla-Bold',
            fontSize: 16.spMin,
            fontWeight: FontWeight.w500,
            color: AppColor.white,
          ),
        ),
      ],
    );
  }
}
