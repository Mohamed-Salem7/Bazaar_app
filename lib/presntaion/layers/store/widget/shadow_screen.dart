import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShadowScreen extends StatelessWidget {
  const ShadowScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.string(
      // 611d3da9-2d87-41f1-a53e-1ec642c79604
      '<svg viewBox="16.0 97.0 343.0 199.0" ><path transform="translate(16.0, 97.0)" d="M 20 0 L 323 0 C 334.0456848144531 0 343 8.954304695129395 343 20 L 343 179 C 343 190.0457000732422 334.0456848144531 199 323 199 L 20 199 C 8.954304695129395 199 0 190.0457000732422 0 179 L 0 20 C 0 8.954304695129395 8.954304695129395 0 20 0 Z" fill="#97191d" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
      width: 324.w,
      height: 185.h,
    );
  }
}
