import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoAuth extends StatelessWidget {
  const LogoAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 37.h,
        ),
        Center(
          child: Image(
            image: const AssetImage(
              AppImage.logo2Img,
            ),
            width: 150.w,
            height: 69.h,
          ),
        ),
      ],
    );
  }
}
