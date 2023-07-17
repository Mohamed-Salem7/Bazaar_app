import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExclusiveNotification extends StatelessWidget {
  const ExclusiveNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.string(
            // Path 17231
            '<svg viewBox="9.0 135.0 12.0 12.0" ><path transform="translate(9.0, 135.0)" d="M 6 0 C 9.313708305358887 0 12 2.686291694641113 12 6 C 12 9.313708305358887 9.313708305358887 12 6 12 C 2.686291694641113 12 0 9.313708305358887 0 6 C 0 2.686291694641113 2.686291694641113 0 6 0 Z" fill="#97191d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
            width: 12.w,
            height: 12.h,
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            'منذ 50 دقيقة',
            style: TextStyle(
              fontFamily: 'SF Display',
              fontSize: 12.spMin,
              color: const Color(0xFFAFAFAF),
              letterSpacing: -0.2894117660522461.spMin,
            ),
            textAlign: TextAlign.right,
          ),
        ],
      ),
    );
  }
}
