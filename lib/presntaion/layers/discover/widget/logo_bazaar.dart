import 'package:bazaar/presntaion/utils/App_Image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoBazaar extends StatelessWidget {
  const LogoBazaar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 71.h,
        ),
        Center(
          child: Image(
            image: const AssetImage(
              AppImage.logoImg,
            ),
            width: 144.w,
            height: 183.h,
          ),
        ),
      ],
    );
  }
}
